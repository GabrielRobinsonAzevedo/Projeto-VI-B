// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clientes_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ClientesViewModel)
final clientesViewModelProvider = ClientesViewModelProvider._();

final class ClientesViewModelProvider
    extends $AsyncNotifierProvider<ClientesViewModel, ClientesState> {
  ClientesViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'clientesViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$clientesViewModelHash();

  @$internal
  @override
  ClientesViewModel create() => ClientesViewModel();
}

String _$clientesViewModelHash() => r'093a38f3b873a3a677f168f5adb1f81546b3ba2a';

abstract class _$ClientesViewModel extends $AsyncNotifier<ClientesState> {
  FutureOr<ClientesState> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<ClientesState>, ClientesState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<ClientesState>, ClientesState>,
              AsyncValue<ClientesState>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(ClienteDetalheViewModel)
final clienteDetalheViewModelProvider = ClienteDetalheViewModelFamily._();

final class ClienteDetalheViewModelProvider
    extends
        $AsyncNotifierProvider<ClienteDetalheViewModel, ClienteDetalheState> {
  ClienteDetalheViewModelProvider._({
    required ClienteDetalheViewModelFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'clienteDetalheViewModelProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$clienteDetalheViewModelHash();

  @override
  String toString() {
    return r'clienteDetalheViewModelProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  ClienteDetalheViewModel create() => ClienteDetalheViewModel();

  @override
  bool operator ==(Object other) {
    return other is ClienteDetalheViewModelProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$clienteDetalheViewModelHash() =>
    r'33595b2feb50c98f87bee8b840bc6e7d6e7ec174';

final class ClienteDetalheViewModelFamily extends $Family
    with
        $ClassFamilyOverride<
          ClienteDetalheViewModel,
          AsyncValue<ClienteDetalheState>,
          ClienteDetalheState,
          FutureOr<ClienteDetalheState>,
          int
        > {
  ClienteDetalheViewModelFamily._()
    : super(
        retry: null,
        name: r'clienteDetalheViewModelProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ClienteDetalheViewModelProvider call(int clienteId) =>
      ClienteDetalheViewModelProvider._(argument: clienteId, from: this);

  @override
  String toString() => r'clienteDetalheViewModelProvider';
}

abstract class _$ClienteDetalheViewModel
    extends $AsyncNotifier<ClienteDetalheState> {
  late final _$args = ref.$arg as int;
  int get clienteId => _$args;

  FutureOr<ClienteDetalheState> build(int clienteId);
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref as $Ref<AsyncValue<ClienteDetalheState>, ClienteDetalheState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<ClienteDetalheState>, ClienteDetalheState>,
              AsyncValue<ClienteDetalheState>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args));
  }
}
