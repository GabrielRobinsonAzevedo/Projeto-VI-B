// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'produtos_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(produtosRepository)
final produtosRepositoryProvider = ProdutosRepositoryProvider._();

final class ProdutosRepositoryProvider
    extends
        $FunctionalProvider<
          ProdutosRepository,
          ProdutosRepository,
          ProdutosRepository
        >
    with $Provider<ProdutosRepository> {
  ProdutosRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'produtosRepositoryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$produtosRepositoryHash();

  @$internal
  @override
  $ProviderElement<ProdutosRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ProdutosRepository create(Ref ref) {
    return produtosRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ProdutosRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ProdutosRepository>(value),
    );
  }
}

String _$produtosRepositoryHash() =>
    r'c7b1a162c0bece3b517e42c599653ee7b18a9d4d';
