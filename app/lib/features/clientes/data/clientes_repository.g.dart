// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clientes_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(clientesRepository)
final clientesRepositoryProvider = ClientesRepositoryProvider._();

final class ClientesRepositoryProvider
    extends
        $FunctionalProvider<
          ClientesRepository,
          ClientesRepository,
          ClientesRepository
        >
    with $Provider<ClientesRepository> {
  ClientesRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'clientesRepositoryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$clientesRepositoryHash();

  @$internal
  @override
  $ProviderElement<ClientesRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ClientesRepository create(Ref ref) {
    return clientesRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ClientesRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ClientesRepository>(value),
    );
  }
}

String _$clientesRepositoryHash() =>
    r'7780e6072b0a028050c8e29b74dc8e3b4785e085';
