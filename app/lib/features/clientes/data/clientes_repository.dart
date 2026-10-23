import 'package:drift/drift.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/database/app_database.dart';
import '../../../core/database/database_providers.dart';
import '../domain/cliente.dart';
import '../domain/rfm.dart';

part 'clientes_repository.g.dart';

class ClientesRepository {
  ClientesRepository(this._db);

  final AppDatabase _db;

  static Cliente _toDomain(ClienteRow r) => Cliente(
        id: r.id,
        nome: r.nome,
        telefone: r.telefone,
        instagram: r.instagram,
        criadoEm: r.criadoEm,
      );

  Future<List<Cliente>> listar() async {
    final rows = await (_db.select(_db.clientes)..orderBy([(c) => OrderingTerm.asc(c.nome)])).get();
    return rows.map(_toDomain).toList();
  }

  Future<Cliente?> obter(int id) async {
    final row = await (_db.select(_db.clientes)..where((c) => c.id.equals(id))).getSingleOrNull();
    return row == null ? null : _toDomain(row);
  }

  Future<int> salvar(Cliente c) {
    final companion = ClientesCompanion(
      nome: Value(c.nome.trim()),
      telefone: Value(c.telefone.trim()),
      instagram: Value(c.instagram.trim()),
      criadoEm: Value(c.criadoEm),
    );
    if (c.id == null) return _db.into(_db.clientes).insert(companion);
    return (_db.update(_db.clientes)..where((t) => t.id.equals(c.id!))).write(companion);
  }

  /// Agregação por cliente para a análise RFM (uma linha por cliente).
  Future<List<ClienteResumo>> resumos() async {
    final rows = await _db.customSelect(
      '''
      SELECT c.id, c.nome, c.telefone, c.instagram, c.criado_em,
             MIN(v.data_hora)            AS primeira,
             MAX(v.data_hora)            AS ultima,
             COUNT(v.id)                 AS compras,
             COALESCE(SUM(v.total), 0)   AS valor
        FROM cliente c
        LEFT JOIN venda v ON v.cliente_id = c.id
       GROUP BY c.id
      ''',
      readsFrom: {_db.clientes, _db.vendas},
    ).get();

    return [
      for (final r in rows)
        ClienteResumo(
          cliente: Cliente(
            id: r.read<int>('id'),
            nome: r.read<String>('nome'),
            telefone: r.read<String>('telefone'),
            instagram: r.read<String>('instagram'),
            criadoEm: r.read<DateTime>('criado_em'),
          ),
          primeiraCompra: r.readNullable<DateTime>('primeira'),
          ultimaCompra: r.readNullable<DateTime>('ultima'),
          compras: r.read<int>('compras'),
          valorTotal: r.read<double>('valor'),
        ),
    ];
  }
}

@Riverpod(keepAlive: true)
ClientesRepository clientesRepository(Ref ref) => ClientesRepository(ref.watch(appDatabaseProvider));
