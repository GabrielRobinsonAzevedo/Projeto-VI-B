import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/database/database_providers.dart';
import '../../../core/utils/formatters.dart';
import '../data/vendas_repository.dart';
import '../domain/venda.dart';

part 'vendas_view_model.freezed.dart';
part 'vendas_view_model.g.dart';

enum PeriodoVendas {
  hoje('Hoje', 0),
  semana('7 dias', 6),
  mes('30 dias', 29);

  const PeriodoVendas(this.rotulo, this.diasAtras);

  final String rotulo;
  final int diasAtras;
}

@freezed
abstract class VendasState with _$VendasState {
  const VendasState._();

  const factory VendasState({
    required PeriodoVendas periodo,
    required List<Venda> vendas,
  }) = _VendasState;

  double get total => vendas.fold(0, (s, v) => s + v.total);
  double get ticketMedio => vendas.isEmpty ? 0 : total / vendas.length;
}

@riverpod
class VendasViewModel extends _$VendasViewModel {
  @override
  Future<VendasState> build(PeriodoVendas periodo) async {
    ref.watch(dbRevisionProvider);
    final vendas = await ref.read(vendasRepositoryProvider).listar(desde: diaRelativo(-periodo.diasAtras));
    return VendasState(periodo: periodo, vendas: vendas);
  }

  Future<void> excluir(int vendaId) => ref.read(vendasRepositoryProvider).excluir(vendaId);
}

@riverpod
Future<List<ItemVenda>> itensDaVenda(Ref ref, int vendaId) =>
    ref.read(vendasRepositoryProvider).itens(vendaId);
