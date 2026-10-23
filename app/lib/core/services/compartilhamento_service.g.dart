// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'compartilhamento_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(compartilhamentoService)
final compartilhamentoServiceProvider = CompartilhamentoServiceProvider._();

final class CompartilhamentoServiceProvider
    extends
        $FunctionalProvider<
          CompartilhamentoService,
          CompartilhamentoService,
          CompartilhamentoService
        >
    with $Provider<CompartilhamentoService> {
  CompartilhamentoServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'compartilhamentoServiceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$compartilhamentoServiceHash();

  @$internal
  @override
  $ProviderElement<CompartilhamentoService> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  CompartilhamentoService create(Ref ref) {
    return compartilhamentoService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CompartilhamentoService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CompartilhamentoService>(value),
    );
  }
}

String _$compartilhamentoServiceHash() =>
    r'b37c4329abc892f9b092f086efc972392171def9';
