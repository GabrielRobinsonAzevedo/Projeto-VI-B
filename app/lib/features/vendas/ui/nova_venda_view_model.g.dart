// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nova_venda_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(NovaVendaViewModel)
final novaVendaViewModelProvider = NovaVendaViewModelProvider._();

final class NovaVendaViewModelProvider
    extends $AsyncNotifierProvider<NovaVendaViewModel, NovaVendaState> {
  NovaVendaViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'novaVendaViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$novaVendaViewModelHash();

  @$internal
  @override
  NovaVendaViewModel create() => NovaVendaViewModel();
}

String _$novaVendaViewModelHash() =>
    r'f0a66a6777106e77a950537646f53ac507f0be84';

abstract class _$NovaVendaViewModel extends $AsyncNotifier<NovaVendaState> {
  FutureOr<NovaVendaState> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<NovaVendaState>, NovaVendaState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<NovaVendaState>, NovaVendaState>,
              AsyncValue<NovaVendaState>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
