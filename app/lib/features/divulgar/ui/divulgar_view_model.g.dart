// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'divulgar_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(DivulgarViewModel)
final divulgarViewModelProvider = DivulgarViewModelProvider._();

final class DivulgarViewModelProvider
    extends $AsyncNotifierProvider<DivulgarViewModel, DivulgarState> {
  DivulgarViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'divulgarViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$divulgarViewModelHash();

  @$internal
  @override
  DivulgarViewModel create() => DivulgarViewModel();
}

String _$divulgarViewModelHash() => r'ea0ed16714dd570602d59aa446df2d86635369bc';

abstract class _$DivulgarViewModel extends $AsyncNotifier<DivulgarState> {
  FutureOr<DivulgarState> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<DivulgarState>, DivulgarState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<DivulgarState>, DivulgarState>,
              AsyncValue<DivulgarState>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
