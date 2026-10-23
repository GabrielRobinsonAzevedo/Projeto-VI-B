// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feriados_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(feriadosRepository)
final feriadosRepositoryProvider = FeriadosRepositoryProvider._();

final class FeriadosRepositoryProvider
    extends
        $FunctionalProvider<
          FeriadosRepository,
          FeriadosRepository,
          FeriadosRepository
        >
    with $Provider<FeriadosRepository> {
  FeriadosRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'feriadosRepositoryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$feriadosRepositoryHash();

  @$internal
  @override
  $ProviderElement<FeriadosRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  FeriadosRepository create(Ref ref) {
    return feriadosRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(FeriadosRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<FeriadosRepository>(value),
    );
  }
}

String _$feriadosRepositoryHash() =>
    r'a2a31bc2acb87baacd4952a90d964005c8397aef';
