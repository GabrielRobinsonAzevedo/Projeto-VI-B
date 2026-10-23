// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'avaliacao_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AvaliacaoViewModel)
final avaliacaoViewModelProvider = AvaliacaoViewModelProvider._();

final class AvaliacaoViewModelProvider
    extends $AsyncNotifierProvider<AvaliacaoViewModel, AvaliacaoState> {
  AvaliacaoViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'avaliacaoViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$avaliacaoViewModelHash();

  @$internal
  @override
  AvaliacaoViewModel create() => AvaliacaoViewModel();
}

String _$avaliacaoViewModelHash() =>
    r'2c89df1c8df74e29426b311ba4617d6019b8421c';

abstract class _$AvaliacaoViewModel extends $AsyncNotifier<AvaliacaoState> {
  FutureOr<AvaliacaoState> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<AvaliacaoState>, AvaliacaoState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<AvaliacaoState>, AvaliacaoState>,
              AsyncValue<AvaliacaoState>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
