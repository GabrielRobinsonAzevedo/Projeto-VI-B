import 'package:drift/drift.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/database/app_database.dart';
import '../../../core/database/database_providers.dart';
import '../domain/curva_abc.dart';
import '../domain/series.dart';

part 'analytics_repository.g.dart';

/// Consultas agregadas (GROUP BY) que alimentam dashboards e algoritmos.
class AnalyticsRepository {
  AnalyticsRepository(this._db);

  final AppDatabase _db;

  List<Variable> _periodo(DateTime de, DateTime ate) =>
      [Variable.withDateTime(de), Variable.withDateTime(ate)];

  Future<ResumoPeriodo> resumo(DateTime de, DateTime ate) async {
    final r = await _db.customSelect(
      'SELECT COALESCE(SUM(total), 0) AS receita, COUNT(*) AS vendas '
      'FROM venda WHERE data_hora >= ? AND data_hora < ?',
      variables: _periodo(de, ate),
      readsFrom: {_db.vendas},
    ).getSingle();
    return ResumoPeriodo(receita: r.read<double>('receita'), vendas: r.read<int>('vendas'));
  }

  /// Faturamento por dia em [de, ate), preenchendo com zero os dias sem venda.
  Future<List<PontoDiario>> serieDiaria(DateTime de, DateTime ate) async {
    final rows = await _db.customSelect(
      '''
      SELECT substr(data_hora, 1, 10) AS dia, SUM(total) AS receita, COUNT(*) AS vendas
        FROM venda
       WHERE data_hora >= ? AND data_hora < ?
       GROUP BY dia
      ''',
      variables: _periodo(de, ate),
      readsFrom: {_db.vendas},
    ).get();
    final porDia = {for (final r in rows) r.read<String>('dia'): r};

    final pontos = <PontoDiario>[];
    for (var d = DateTime(de.year, de.month, de.day);
        d.isBefore(ate);
        d = DateTime(d.year, d.month, d.day + 1)) {
      final chave = '${d.year.toString().padLeft(4, '0')}-'
          '${d.month.toString().padLeft(2, '0')}-${d.day.toString().padLeft(2, '0')}';
      final r = porDia[chave];
      pontos.add(PontoDiario(
        dia: d,
        valor: r?.read<double>('receita') ?? 0,
        vendas: r?.read<int>('vendas') ?? 0,
      ));
    }
    return pontos;
  }

  /// Hora do dia (0–23) → quantidade de vendas.
  Future<Map<int, int>> vendasPorHora(DateTime desde) async {
    final rows = await _db.customSelect(
      '''
      SELECT CAST(substr(data_hora, 12, 2) AS INTEGER) AS hora, COUNT(*) AS vendas
        FROM venda
       WHERE data_hora >= ?
       GROUP BY hora
       ORDER BY hora
      ''',
      variables: [Variable.withDateTime(desde)],
      readsFrom: {_db.vendas},
    ).get();
    return {for (final r in rows) r.read<int>('hora'): r.read<int>('vendas')};
  }

  Future<List<ProdutoVendido>> produtosVendidos(DateTime de, DateTime ate) async {
    final rows = await _db.customSelect(
      '''
      SELECT p.id, p.nome, p.emoji, p.categoria,
             SUM(i.quantidade)                    AS quantidade,
             SUM(i.quantidade * i.preco_unitario) AS receita,
             SUM(i.quantidade * p.custo)          AS custo
        FROM item_venda i
        JOIN venda v   ON v.id = i.venda_id
        JOIN produto p ON p.id = i.produto_id
       WHERE v.data_hora >= ? AND v.data_hora < ?
       GROUP BY p.id
       ORDER BY receita DESC
      ''',
      variables: _periodo(de, ate),
      readsFrom: {_db.vendas, _db.itensVenda, _db.produtos},
    ).get();
    return [
      for (final r in rows)
        ProdutoVendido(
          produtoId: r.read<int>('id'),
          nome: r.read<String>('nome'),
          emoji: r.read<String>('emoji'),
          categoria: r.read<String>('categoria'),
          quantidade: r.read<int>('quantidade'),
          receita: r.read<double>('receita'),
          custo: r.read<double>('custo'),
        ),
    ];
  }
}

@Riverpod(keepAlive: true)
AnalyticsRepository analyticsRepository(Ref ref) =>
    AnalyticsRepository(ref.watch(appDatabaseProvider));
