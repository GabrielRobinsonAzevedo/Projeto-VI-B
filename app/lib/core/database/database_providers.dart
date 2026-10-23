import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'app_database.dart';

part 'database_providers.g.dart';

/// Instância única do banco, injetada via Riverpod em todos os repositórios.
@Riverpod(keepAlive: true)
AppDatabase appDatabase(Ref ref) {
  final db = AppDatabase();
  ref.onDispose(db.close);
  return db;
}

/// Contador que muda a cada escrita no banco. ViewModels que fazem
/// `ref.watch(dbRevisionProvider)` são recalculados automaticamente.
@Riverpod(keepAlive: true)
Stream<int> dbRevision(Ref ref) {
  final db = ref.watch(appDatabaseProvider);
  var revisao = 0;
  return db.tableUpdates().map((_) => ++revisao);
}
