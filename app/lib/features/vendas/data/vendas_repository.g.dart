// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendas_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(vendasRepository)
final vendasRepositoryProvider = VendasRepositoryProvider._();

final class VendasRepositoryProvider
    extends
        $FunctionalProvider<
          VendasRepository,
          VendasRepository,
          VendasRepository
        >
    with $Provider<VendasRepository> {
  VendasRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'vendasRepositoryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$vendasRepositoryHash();

  @$internal
  @override
  $ProviderElement<VendasRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  VendasRepository create(Ref ref) {
    return vendasRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(VendasRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<VendasRepository>(value),
    );
  }
}

String _$vendasRepositoryHash() => r'b15f2c544fe03706a00e8806ca4e46e0840adb99';
