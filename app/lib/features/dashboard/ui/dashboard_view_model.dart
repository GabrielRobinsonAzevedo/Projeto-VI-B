import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/database/database_providers.dart';
import '../../../core/utils/formatters.dart';
import '../../empresa/data/empresa_repository.dart';
import '../../empresa/domain/empresa.dart';
import '../../insights/data/analytics_repository.dart';
import '../../insights/domain/series.dart';
import '../../insights/ui/insights_view_model.dart';

part 'dashboard_view_model.freezed.dart';
part 'dashboard_view_model.g.dart';

@freezed
abstract class DashboardState with _$DashboardState {
  const DashboardState._();

  const factory DashboardState({
    required Empresa empresa,
    required ResumoPeriodo hoje,

    /// Mesmo dia da semana passada, até o mesmo horário (comparação justa).
    required ResumoPeriodo semanaPassada,
    required InsightsState analise,
  }) = _DashboardState;

  double get variacaoHoje => variacaoPercentual(hoje.receita, semanaPassada.receita);
}

@riverpod
class DashboardViewModel extends _$DashboardViewModel {
  @override
  Future<DashboardState> build() async {
    ref.watch(dbRevisionProvider);
    final analytics = ref.read(analyticsRepositoryProvider);
    final agora = DateTime.now();
    final hoje = await analytics.resumo(inicioDoDia(agora), agora.add(const Duration(minutes: 1)));
    final semanaPassada = await analytics.resumo(
      diaRelativo(-7),
      agora.subtract(const Duration(days: 7)),
    );
    return DashboardState(
      empresa: await ref.read(empresaRepositoryProvider).obter(),
      hoje: hoje,
      semanaPassada: semanaPassada,
      analise: await ref.watch(insightsViewModelProvider.future),
    );
  }
}
