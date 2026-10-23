import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';

import 'tables.dart';

part 'app_database.g.dart';

/// Banco local do app (arquivo `vitrine_plus.sqlite` na pasta de dados do app).
/// Tudo funciona offline: nenhuma tela depende de internet.
@DriftDatabase(
  tables: [Empresas, Produtos, Clientes, Vendas, ItensVenda, Avaliacoes, Feriados],
)
class AppDatabase extends _$AppDatabase {
  AppDatabase([QueryExecutor? executor])
      : super(executor ?? driftDatabase(name: 'vitrine_plus'));

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration => MigrationStrategy(
        onCreate: (m) => m.createAll(),
        beforeOpen: (details) async {
          await customStatement('PRAGMA foreign_keys = ON');
        },
      );

  /// Remove todos os registros de negócio (mantém o cache de feriados).
  Future<void> limparDados({bool incluirEmpresa = false}) {
    return transaction(() async {
      await delete(itensVenda).go();
      await delete(vendas).go();
      await delete(avaliacoes).go();
      await delete(clientes).go();
      await delete(produtos).go();
      if (incluirEmpresa) await delete(empresas).go();
    });
  }
}
