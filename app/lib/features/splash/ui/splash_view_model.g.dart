// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'splash_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Prepara o banco na primeira execução (dados de demonstração + calendário).

@ProviderFor(SplashViewModel)
final splashViewModelProvider = SplashViewModelProvider._();

/// Prepara o banco na primeira execução (dados de demonstração + calendário).
final class SplashViewModelProvider
    extends $AsyncNotifierProvider<SplashViewModel, void> {
  /// Prepara o banco na primeira execução (dados de demonstração + calendário).
  SplashViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'splashViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$splashViewModelHash();

  @$internal
  @override
  SplashViewModel create() => SplashViewModel();
}

String _$splashViewModelHash() => r'67984288c54e6c71e7e7bac5b1e9a05587414113';

/// Prepara o banco na primeira execução (dados de demonstração + calendário).

abstract class _$SplashViewModel extends $AsyncNotifier<void> {
  FutureOr<void> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<void>, void>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<void>, void>,
              AsyncValue<void>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
