import 'package:drift/drift.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/database/app_database.dart';
import '../../../core/database/database_providers.dart';
import '../domain/avaliacao.dart';

part 'avaliacoes_repository.g.dart';

class AvaliacoesRepository {
  AvaliacoesRepository(this._db);

  final AppDatabase _db;

  Future<void> registrar({required int nota, String comentario = '', int? clienteId}) =>
      _db.into(_db.avaliacoes).insert(AvaliacoesCompanion.insert(
            nota: nota,
            comentario: Value(comentario.trim()),
            clienteId: Value(clienteId),
            dataHora: DateTime.now(),
          ));

  Future<List<Avaliacao>> desde(DateTime data) async {
    final rows = await (_db.select(_db.avaliacoes)
          ..where((a) => a.dataHora.isBiggerOrEqualValue(data))
          ..orderBy([(a) => OrderingTerm.desc(a.dataHora)]))
        .get();
    return [
      for (final r in rows)
        Avaliacao(
          id: r.id,
          clienteId: r.clienteId,
          nota: r.nota,
          comentario: r.comentario,
          dataHora: r.dataHora,
        ),
    ];
  }
}

@Riverpod(keepAlive: true)
AvaliacoesRepository avaliacoesRepository(Ref ref) =>
    AvaliacoesRepository(ref.watch(appDatabaseProvider));
