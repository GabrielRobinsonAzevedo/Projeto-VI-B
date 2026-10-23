// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendas_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(VendasViewModel)
final vendasViewModelProvider = VendasViewModelFamily._();

final class VendasViewModelProvider
    extends $AsyncNotifierProvider<VendasViewModel, VendasState> {
  VendasViewModelProvider._({
    required VendasViewModelFamily super.from,
    required PeriodoVendas super.argument,
  }) : super(
         retry: null,
         name: r'vendasViewModelProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$vendasViewModelHash();

  @override
  String toString() {
    return r'vendasViewModelProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  VendasViewModel create() => VendasViewModel();

  @override
  bool operator ==(Object other) {
    return other is VendasViewModelProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$vendasViewModelHash() => r'4f57896bfe321b77c28d58f7db47d774454bd537';

final class VendasViewModelFamily extends $Family
    with
        $ClassFamilyOverride<
          VendasViewModel,
          AsyncValue<VendasState>,
          VendasState,
          FutureOr<VendasState>,
          PeriodoVendas
        > {
  VendasViewModelFamily._()
    : super(
        retry: null,
        name: r'vendasViewModelProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  VendasViewModelProvider call(PeriodoVendas periodo) =>
      VendasViewModelProvider._(argument: periodo, from: this);

  @override
  String toString() => r'vendasViewModelProvider';
}

abstract class _$VendasViewModel extends $AsyncNotifier<VendasState> {
  late final _$args = ref.$arg as PeriodoVendas;
  PeriodoVendas get periodo => _$args;

  FutureOr<VendasState> build(PeriodoVendas periodo);
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<VendasState>, VendasState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<VendasState>, VendasState>,
              AsyncValue<VendasState>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args));
  }
}

@ProviderFor(itensDaVenda)
final itensDaVendaProvider = ItensDaVendaFamily._();

final class ItensDaVendaProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<ItemVenda>>,
          List<ItemVenda>,
          FutureOr<List<ItemVenda>>
        >
    with $FutureModifier<List<ItemVenda>>, $FutureProvider<List<ItemVenda>> {
  ItensDaVendaProvider._({
    required ItensDaVendaFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'itensDaVendaProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$itensDaVendaHash();

  @override
  String toString() {
    return r'itensDaVendaProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<List<ItemVenda>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<ItemVenda>> create(Ref ref) {
    final argument = this.argument as int;
    return itensDaVenda(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is ItensDaVendaProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$itensDaVendaHash() => r'7ade4c02440c1a1c5f744667febb42c1647e6357';

final class ItensDaVendaFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<List<ItemVenda>>, int> {
  ItensDaVendaFamily._()
    : super(
        retry: null,
        name: r'itensDaVendaProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ItensDaVendaProvider call(int vendaId) =>
      ItensDaVendaProvider._(argument: vendaId, from: this);

  @override
  String toString() => r'itensDaVendaProvider';
}
