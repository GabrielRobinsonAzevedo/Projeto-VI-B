// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'insights_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Executa todas as análises de dados. É compartilhado pelo Início e pela aba Insights.

@ProviderFor(InsightsViewModel)
final insightsViewModelProvider = InsightsViewModelProvider._();

/// Executa todas as análises de dados. É compartilhado pelo Início e pela aba Insights.
final class InsightsViewModelProvider
    extends $AsyncNotifierProvider<InsightsViewModel, InsightsState> {
  /// Executa todas as análises de dados. É compartilhado pelo Início e pela aba Insights.
  InsightsViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'insightsViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$insightsViewModelHash();

  @$internal
  @override
  InsightsViewModel create() => InsightsViewModel();
}

String _$insightsViewModelHash() => r'6da9684a508d4fc744e28c0a80e9b77040d7c17a';

/// Executa todas as análises de dados. É compartilhado pelo Início e pela aba Insights.

abstract class _$InsightsViewModel extends $AsyncNotifier<InsightsState> {
  FutureOr<InsightsState> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<InsightsState>, InsightsState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<InsightsState>, InsightsState>,
              AsyncValue<InsightsState>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
