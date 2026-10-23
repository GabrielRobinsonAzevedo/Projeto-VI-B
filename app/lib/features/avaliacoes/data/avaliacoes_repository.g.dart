// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'avaliacoes_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(avaliacoesRepository)
final avaliacoesRepositoryProvider = AvaliacoesRepositoryProvider._();

final class AvaliacoesRepositoryProvider
    extends
        $FunctionalProvider<
          AvaliacoesRepository,
          AvaliacoesRepository,
          AvaliacoesRepository
        >
    with $Provider<AvaliacoesRepository> {
  AvaliacoesRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'avaliacoesRepositoryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$avaliacoesRepositoryHash();

  @$internal
  @override
  $ProviderElement<AvaliacoesRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  AvaliacoesRepository create(Ref ref) {
    return avaliacoesRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AvaliacoesRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AvaliacoesRepository>(value),
    );
  }
}

String _$avaliacoesRepositoryHash() =>
    r'3b965aa2afdf68b227c72b1cd8336f09d5005a4c';
