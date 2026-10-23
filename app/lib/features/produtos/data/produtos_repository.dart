import 'package:drift/drift.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/database/app_database.dart';
import '../../../core/database/database_providers.dart';
import '../domain/produto.dart';

part 'produtos_repository.g.dart';

class ProdutosRepository {
  ProdutosRepository(this._db);

  final AppDatabase _db;

  static Produto _toDomain(ProdutoRow r) => Produto(
        id: r.id,
        nome: r.nome,
        categoria: r.categoria,
        preco: r.preco,
        custo: r.custo,
        estoque: r.estoque,
        emoji: r.emoji,
      );

  Future<List<Produto>> listar() async {
    final rows = await (_db.select(_db.produtos)
          ..where((p) => p.ativo.equals(true))
          ..orderBy([(p) => OrderingTerm.asc(p.categoria), (p) => OrderingTerm.asc(p.nome)]))
        .get();
    return rows.map(_toDomain).toList();
  }

  Future<List<Produto>> estoqueBaixo() async =>
      (await listar()).where((p) => p.estoqueBaixo).toList();

  Future<int> salvar(Produto p) {
    final companion = ProdutosCompanion(
      nome: Value(p.nome.trim()),
      categoria: Value(p.categoria.trim()),
      preco: Value(p.preco),
      custo: Value(p.custo),
      estoque: Value(p.estoque),
      emoji: Value(p.emoji),
    );
    if (p.id == null) return _db.into(_db.produtos).insert(companion);
    return (_db.update(_db.produtos)..where((t) => t.id.equals(p.id!))).write(companion);
  }

  /// Produtos não são apagados (estão no histórico de vendas): ficam inativos.
  Future<void> arquivar(int id) => (_db.update(_db.produtos)..where((t) => t.id.equals(id)))
      .write(const ProdutosCompanion(ativo: Value(false)));
}

@Riverpod(keepAlive: true)
ProdutosRepository produtosRepository(Ref ref) => ProdutosRepository(ref.watch(appDatabaseProvider));
