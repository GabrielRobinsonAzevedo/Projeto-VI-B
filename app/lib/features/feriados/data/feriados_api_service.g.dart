// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feriados_api_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(feriadosApiService)
final feriadosApiServiceProvider = FeriadosApiServiceProvider._();

final class FeriadosApiServiceProvider
    extends
        $FunctionalProvider<
          FeriadosApiService,
          FeriadosApiService,
          FeriadosApiService
        >
    with $Provider<FeriadosApiService> {
  FeriadosApiServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'feriadosApiServiceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$feriadosApiServiceHash();

  @$internal
  @override
  $ProviderElement<FeriadosApiService> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  FeriadosApiService create(Ref ref) {
    return feriadosApiService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(FeriadosApiService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<FeriadosApiService>(value),
    );
  }
}

String _$feriadosApiServiceHash() =>
    r'db80d2bf67b7bf94fd9950dded78a71099c1f56c';
