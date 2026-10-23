import 'package:drift/drift.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/database/app_database.dart';
import '../../../core/database/database_providers.dart';
import '../domain/calendario.dart';
import '../domain/feriado.dart';
import 'feriados_api_service.dart';

part 'feriados_repository.g.dart';

/// Fonte única de feriados: o banco local. A API só atualiza o cache.
class FeriadosRepository {
  FeriadosRepository(this._db, this._api);

  final AppDatabase _db;
  final FeriadosApiService _api;

  Future<void> _salvar(Iterable<Feriado> lista) => _db.batch((b) {
        b.insertAllOnConflictUpdate(_db.feriados, [
          for (final f in lista)
            FeriadosCompanion.insert(
              data: DateTime(f.data.year, f.data.month, f.data.day),
              nome: f.nome,
              tipo: Value(f.tipo),
            ),
        ]);
      });

  /// Garante o calendário embutido para o ano anterior, atual e seguinte.
  Future<void> garantirCalendario() async {
    final existe = await (_db.select(_db.feriados)..limit(1)).getSingleOrNull();
    if (existe != null) return;
    final ano = DateTime.now().year;
    await _salvar([for (var a = ano - 1; a <= ano + 1; a++) ...calendarioPadrao(a)]);
  }

  Future<List<Feriado>> entre(DateTime de, DateTime ate) async {
    await garantirCalendario();
    final rows = await (_db.select(_db.feriados)
          ..where((f) => f.data.isBetweenValues(de, ate))
          ..orderBy([(f) => OrderingTerm.asc(f.data)]))
        .get();
    return [for (final r in rows) Feriado(data: r.data, nome: r.nome, tipo: r.tipo)];
  }

  Future<List<Feriado>> proximos({int dias = 90}) {
    final hoje = DateTime.now();
    final inicio = DateTime(hoje.year, hoje.month, hoje.day);
    return entre(inicio, DateTime(inicio.year, inicio.month, inicio.day + dias));
  }

  /// Datas que não são dias úteis normais (usadas pela previsão).
  Future<Set<DateTime>> datasSemExpediente(DateTime de, DateTime ate) async => {
        for (final f in await entre(de, ate))
          if (f.tipo != 'comercial') DateTime(f.data.year, f.data.month, f.data.day),
      };

  /// Busca o ano atual e o próximo na BrasilAPI. Lança exceção sem internet.
  Future<int> sincronizar() async {
    await garantirCalendario();
    final ano = DateTime.now().year;
    final lista = [
      for (final a in [ano, ano + 1]) ...(await _api.buscar(a)).map((d) => d.toDomain()),
    ];
    await _salvar(lista);
    return lista.length;
  }
}

@Riverpod(keepAlive: true)
FeriadosRepository feriadosRepository(Ref ref) =>
    FeriadosRepository(ref.watch(appDatabaseProvider), ref.watch(feriadosApiServiceProvider));
