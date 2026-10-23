// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dio_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Cliente HTTP compartilhado. A internet é opcional no Vitrine+: só é usada
/// para atualizar o calendário de feriados (BrasilAPI), que fica em cache local.

@ProviderFor(dio)
final dioProvider = DioProvider._();

/// Cliente HTTP compartilhado. A internet é opcional no Vitrine+: só é usada
/// para atualizar o calendário de feriados (BrasilAPI), que fica em cache local.

final class DioProvider extends $FunctionalProvider<Dio, Dio, Dio>
    with $Provider<Dio> {
  /// Cliente HTTP compartilhado. A internet é opcional no Vitrine+: só é usada
  /// para atualizar o calendário de feriados (BrasilAPI), que fica em cache local.
  DioProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'dioProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$dioHash();

  @$internal
  @override
  $ProviderElement<Dio> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  Dio create(Ref ref) {
    return dio(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Dio value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Dio>(value),
    );
  }
}

String _$dioHash() => r'caff99f0a9c85f48961e6d7f2a671b453cba0f6b';
