// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'empresa_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(EmpresaViewModel)
final empresaViewModelProvider = EmpresaViewModelProvider._();

final class EmpresaViewModelProvider
    extends $AsyncNotifierProvider<EmpresaViewModel, Empresa> {
  EmpresaViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'empresaViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$empresaViewModelHash();

  @$internal
  @override
  EmpresaViewModel create() => EmpresaViewModel();
}

String _$empresaViewModelHash() => r'e91b47dce5fee2e843007145d8fffbfac8049e2e';

abstract class _$EmpresaViewModel extends $AsyncNotifier<Empresa> {
  FutureOr<Empresa> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<Empresa>, Empresa>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<Empresa>, Empresa>,
              AsyncValue<Empresa>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
