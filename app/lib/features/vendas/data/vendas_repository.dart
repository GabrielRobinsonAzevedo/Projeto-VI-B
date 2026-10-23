import 'package:drift/drift.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/database/app_database.dart';
import '../../../core/database/database_providers.dart';
import '../domain/venda.dart';

part 'vendas_repository.g.dart';

class VendasRepository {
  VendasRepository(this._db);

  final AppDatabase _db;

  Future<List<Venda>> listar({required DateTime desde, DateTime? ate, int? clienteId}) async {
    final filtroCliente = clienteId == null ? '' : 'AND v.cliente_id = ?';
    final rows = await _db.customSelect(
      '''
      SELECT v.id, v.cliente_id, c.nome AS cliente_nome, v.data_hora, v.forma_pagamento, v.total,
             (SELECT COALESCE(SUM(i.quantidade), 0) FROM item_venda i WHERE i.venda_id = v.id) AS qtd
        FROM venda v
        LEFT JOIN cliente c ON c.id = v.cliente_id
       WHERE v.data_hora >= ? AND v.data_hora < ? $filtroCliente
       ORDER BY v.data_hora DESC
      ''',
      variables: [
        Variable.withDateTime(desde),
        Variable.withDateTime(ate ?? DateTime.now().add(const Duration(days: 1))),
        if (clienteId != null) Variable.withInt(clienteId),
      ],
      readsFrom: {_db.vendas, _db.clientes, _db.itensVenda},
    ).get();

    return [
      for (final r in rows)
        Venda(
          id: r.read<int>('id'),
          clienteId: r.readNullable<int>('cliente_id'),
          clienteNome: r.readNullable<String>('cliente_nome'),
          dataHora: r.read<DateTime>('data_hora'),
          formaPagamento: r.read<String>('forma_pagamento'),
          total: r.read<double>('total'),
          quantidadeItens: r.read<int>('qtd'),
        ),
    ];
  }

  Future<List<ItemVenda>> itens(int vendaId) async {
    final query = _db.select(_db.itensVenda).join([
      innerJoin(_db.produtos, _db.produtos.id.equalsExp(_db.itensVenda.produtoId)),
    ])
      ..where(_db.itensVenda.vendaId.equals(vendaId));
    final rows = await query.get();
    return [
      for (final r in rows)
        () {
          final item = r.readTable(_db.itensVenda);
          final produto = r.readTable(_db.produtos);
          return ItemVenda(
            produtoId: produto.id,
            nome: produto.nome,
            emoji: produto.emoji,
            quantidade: item.quantidade,
            precoUnitario: item.precoUnitario,
          );
        }(),
    ];
  }

  /// Grava venda + itens e baixa o estoque, tudo numa única transação.
  Future<int> registrar({
    int? clienteId,
    required String formaPagamento,
    required List<ItemVenda> itens,
    DateTime? dataHora,
  }) {
    if (itens.isEmpty) throw ArgumentError('A venda precisa de pelo menos um item.');
    final total = itens.fold<double>(0, (s, i) => s + i.subtotal);
    return _db.transaction(() async {
      final id = await _db.into(_db.vendas).insert(VendasCompanion.insert(
            clienteId: Value(clienteId),
            dataHora: dataHora ?? DateTime.now(),
            formaPagamento: formaPagamento,
            total: double.parse(total.toStringAsFixed(2)),
          ));
      for (final i in itens) {
        await _db.into(_db.itensVenda).insert(ItensVendaCompanion.insert(
              vendaId: id,
              produtoId: i.produtoId,
              quantidade: i.quantidade,
              precoUnitario: i.precoUnitario,
            ));
        await _db.customUpdate(
          'UPDATE produto SET estoque = MAX(estoque - ?, 0) WHERE id = ?',
          variables: [Variable.withInt(i.quantidade), Variable.withInt(i.produtoId)],
          updates: {_db.produtos},
        );
      }
      return id;
    });
  }

  /// Exclui a venda (itens saem em cascata) e devolve os produtos ao estoque.
  Future<void> excluir(int vendaId) => _db.transaction(() async {
        for (final i in await itens(vendaId)) {
          await _db.customUpdate(
            'UPDATE produto SET estoque = estoque + ? WHERE id = ?',
            variables: [Variable.withInt(i.quantidade), Variable.withInt(i.produtoId)],
            updates: {_db.produtos},
          );
        }
        await (_db.delete(_db.vendas)..where((v) => v.id.equals(vendaId))).go();
      });

  /// Todas as vendas com seus itens (usado no backup JSON). Apenas 2 consultas.
  Future<List<Venda>> todasComItens() async {
    final vendas = await listar(desde: DateTime(2000), ate: DateTime(2100));
    final query = _db.select(_db.itensVenda).join([
      innerJoin(_db.produtos, _db.produtos.id.equalsExp(_db.itensVenda.produtoId)),
    ]);
    final porVenda = <int, List<ItemVenda>>{};
    for (final r in await query.get()) {
      final item = r.readTable(_db.itensVenda);
      final produto = r.readTable(_db.produtos);
      porVenda.putIfAbsent(item.vendaId, () => []).add(ItemVenda(
            produtoId: produto.id,
            nome: produto.nome,
            emoji: produto.emoji,
            quantidade: item.quantidade,
            precoUnitario: item.precoUnitario,
          ));
    }
    return [for (final v in vendas) v.copyWith(itens: porVenda[v.id] ?? const [])];
  }

  /// Uma linha por item vendido — formato "tidy" para análise em Python/Excel.
  Future<String> exportarCsv() async {
    final rows = await _db.customSelect(
      '''
      SELECT v.id AS venda_id, v.data_hora, COALESCE(c.nome, '') AS cliente, v.forma_pagamento,
             p.nome AS produto, p.categoria, i.quantidade, i.preco_unitario,
             i.quantidade * i.preco_unitario AS subtotal, i.quantidade * p.custo AS custo
        FROM item_venda i
        JOIN venda v   ON v.id = i.venda_id
        JOIN produto p ON p.id = i.produto_id
        LEFT JOIN cliente c ON c.id = v.cliente_id
       ORDER BY v.data_hora
      ''',
      readsFrom: {_db.vendas, _db.itensVenda, _db.produtos, _db.clientes},
    ).get();

    String campo(Object? v) {
      final s = '$v';
      return s.contains(RegExp('[",\n]')) ? '"${s.replaceAll('"', '""')}"' : s;
    }

    final buffer = StringBuffer(
        'venda_id,data_hora,dia_semana,hora,cliente,forma_pagamento,produto,categoria,quantidade,preco_unitario,subtotal,custo\n');
    for (final r in rows) {
      final data = r.read<DateTime>('data_hora');
      buffer.writeln([
        r.read<int>('venda_id'),
        data.toIso8601String(),
        data.weekday,
        data.hour,
        campo(r.read<String>('cliente')),
        campo(r.read<String>('forma_pagamento')),
        campo(r.read<String>('produto')),
        campo(r.read<String>('categoria')),
        r.read<int>('quantidade'),
        r.read<double>('preco_unitario').toStringAsFixed(2),
        r.read<double>('subtotal').toStringAsFixed(2),
        r.read<double>('custo').toStringAsFixed(2),
      ].join(','));
    }
    return buffer.toString();
  }
}

@Riverpod(keepAlive: true)
VendasRepository vendasRepository(Ref ref) => VendasRepository(ref.watch(appDatabaseProvider));
