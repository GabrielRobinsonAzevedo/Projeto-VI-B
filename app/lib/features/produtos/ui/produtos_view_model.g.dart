// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'produtos_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ProdutosViewModel)
final produtosViewModelProvider = ProdutosViewModelProvider._();

final class ProdutosViewModelProvider
    extends $AsyncNotifierProvider<ProdutosViewModel, List<Produto>> {
  ProdutosViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'produtosViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$produtosViewModelHash();

  @$internal
  @override
  ProdutosViewModel create() => ProdutosViewModel();
}

String _$produtosViewModelHash() => r'de626624506329574389f01eb287885500547c33';

abstract class _$ProdutosViewModel extends $AsyncNotifier<List<Produto>> {
  FutureOr<List<Produto>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<List<Produto>>, List<Produto>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<Produto>>, List<Produto>>,
              AsyncValue<List<Produto>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
