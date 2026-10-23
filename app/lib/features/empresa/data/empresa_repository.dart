import 'package:drift/drift.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/database/app_database.dart';
import '../../../core/database/database_providers.dart';
import '../../../core/database/demo_seed.dart';
import '../domain/empresa.dart';

part 'empresa_repository.g.dart';

class EmpresaRepository {
  EmpresaRepository(this._db);

  final AppDatabase _db;

  Future<bool> existe() async =>
      (await (_db.select(_db.empresas)..limit(1)).getSingleOrNull()) != null;

  Future<Empresa> obter() async {
    final row = await (_db.select(_db.empresas)..where((e) => e.id.equals(1))).getSingleOrNull();
    if (row == null) return Empresa.vazia;
    return Empresa(
      nome: row.nome,
      segmento: row.segmento,
      cidade: row.cidade,
      instagram: row.instagram,
      whatsapp: row.whatsapp,
    );
  }

  Future<void> salvar(Empresa e) => _db.into(_db.empresas).insertOnConflictUpdate(
        EmpresasCompanion(
          id: const Value(1),
          nome: Value(e.nome),
          segmento: Value(e.segmento),
          cidade: Value(e.cidade),
          instagram: Value(e.instagram),
          whatsapp: Value(e.whatsapp),
        ),
      );

  /// Apaga tudo e recria os dados fictícios de demonstração.
  Future<void> restaurarDemonstracao() async {
    await _db.limparDados(incluirEmpresa: true);
    await DemoSeed(_db).executar();
  }

  /// Começa do zero, mantendo apenas os dados da empresa.
  Future<void> apagarDados() => _db.limparDados();
}

@Riverpod(keepAlive: true)
EmpresaRepository empresaRepository(Ref ref) => EmpresaRepository(ref.watch(appDatabaseProvider));
