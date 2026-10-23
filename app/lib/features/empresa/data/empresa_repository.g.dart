// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'empresa_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(empresaRepository)
final empresaRepositoryProvider = EmpresaRepositoryProvider._();

final class EmpresaRepositoryProvider
    extends
        $FunctionalProvider<
          EmpresaRepository,
          EmpresaRepository,
          EmpresaRepository
        >
    with $Provider<EmpresaRepository> {
  EmpresaRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'empresaRepositoryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$empresaRepositoryHash();

  @$internal
  @override
  $ProviderElement<EmpresaRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  EmpresaRepository create(Ref ref) {
    return empresaRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(EmpresaRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<EmpresaRepository>(value),
    );
  }
}

String _$empresaRepositoryHash() => r'424d8ac8fabfe9ffa0dc670580a3d411e39f9167';
