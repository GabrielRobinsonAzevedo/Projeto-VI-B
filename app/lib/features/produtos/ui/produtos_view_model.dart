import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/database/database_providers.dart';
import '../data/produtos_repository.dart';
import '../domain/produto.dart';

part 'produtos_view_model.g.dart';

@riverpod
class ProdutosViewModel extends _$ProdutosViewModel {
  @override
  Future<List<Produto>> build() async {
    ref.watch(dbRevisionProvider);
    return ref.read(produtosRepositoryProvider).listar();
  }

  Future<void> salvar(Produto p) => ref.read(produtosRepositoryProvider).salvar(p);

  Future<void> arquivar(Produto p) => ref.read(produtosRepositoryProvider).arquivar(p.id!);
}
