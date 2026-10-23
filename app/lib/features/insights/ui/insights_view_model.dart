import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/database/database_providers.dart';
import '../../../core/utils/formatters.dart';
import '../../avaliacoes/data/avaliacoes_repository.dart';
import '../../avaliacoes/domain/avaliacao.dart';
import '../../avaliacoes/domain/nps.dart';
import '../../clientes/data/clientes_repository.dart';
import '../../clientes/domain/rfm.dart';
import '../../feriados/data/feriados_repository.dart';
import '../../feriados/domain/feriado.dart';
import '../../produtos/data/produtos_repository.dart';
import '../data/analytics_repository.dart';
import '../domain/curva_abc.dart';
import '../domain/insights_engine.dart';
import '../domain/previsao.dart';
import '../domain/series.dart';

part 'insights_view_model.freezed.dart';
part 'insights_view_model.g.dart';

@freezed
abstract class InsightsState with _$InsightsState {
  const factory InsightsState({
    required List<PontoDiario> historico,
    required Previsao previsao,
    required Map<int, int> vendasPorHora,
    required List<ItemAbc> curvaAbc,
    required List<ProdutoVendido> produtos30,
    required ResumoPeriodo ultimos30,
    required ResumoPeriodo anteriores30,
    required Nps nps,
    required List<Avaliacao> comentarios,
    required List<ClienteRfm> clientes,
    required List<Feriado> proximasDatas,
    required List<Insight> insights,
  }) = _InsightsState;
}

/// Executa todas as análises de dados. É compartilhado pelo Início e pela aba Insights.
@riverpod
class InsightsViewModel extends _$InsightsViewModel {
  @override
  Future<InsightsState> build() async {
    ref.watch(dbRevisionProvider);
    final analytics = ref.read(analyticsRepositoryProvider);
    final feriadosRepo = ref.read(feriadosRepositoryProvider);

    final agora = DateTime.now();
    final hoje = inicioDoDia(agora);
    final amanha = diaRelativo(1);

    // Série dos últimos 56 dias completos (8 semanas) → previsão dos próximos 7.
    final historico = await analytics.serieDiaria(diaRelativo(-56), hoje);
    final semExpediente = await feriadosRepo.datasSemExpediente(diaRelativo(-56), diaRelativo(14));
    final previsao = preverVendas(historico, inicio: hoje, feriados: semExpediente);

    final vendasPorHora = await analytics.vendasPorHora(diaRelativo(-30));
    final produtos30 = await analytics.produtosVendidos(diaRelativo(-29), amanha);
    final produtos90 = await analytics.produtosVendidos(diaRelativo(-89), amanha);

    final atual28 = await analytics.produtosVendidos(diaRelativo(-28), hoje);
    final anterior28 = {
      for (final p in await analytics.produtosVendidos(diaRelativo(-56), diaRelativo(-28)))
        p.produtoId: p.receita,
    };
    final variacoes = [
      for (final p in atual28)
        VariacaoProduto(atual: p, receitaAnterior: anterior28[p.produtoId] ?? 0),
    ];

    final ultimos30 = await analytics.resumo(diaRelativo(-29), agora);
    final anteriores30 = await analytics.resumo(diaRelativo(-59), diaRelativo(-29));

    final avaliacoes = await ref.read(avaliacoesRepositoryProvider).desde(diaRelativo(-90));
    final nps = calcularNps(avaliacoes.map((a) => a.nota));

    final clientes = calcularRfm(await ref.read(clientesRepositoryProvider).resumos(), agora);
    final estoqueBaixo = await ref.read(produtosRepositoryProvider).estoqueBaixo();
    final proximas = await feriadosRepo.proximos(dias: 90);

    final insights = gerarInsights(DadosInsights(
      hoje: hoje,
      fatorSemana: previsao.fatorSemana,
      vendasPorHora: vendasPorHora,
      clientesEmRisco: clientes.where((c) => c.segmento == Segmento.emRisco).length,
      variacoes: variacoes,
      produtosPeriodo: produtos30,
      estoqueBaixo: estoqueBaixo,
      variacaoFaturamento: variacaoPercentual(ultimos30.receita, anteriores30.receita),
      nps: nps,
      proximoFeriado: proximas.isEmpty ? null : proximas.first,
    ));

    return InsightsState(
      historico: historico,
      previsao: previsao,
      vendasPorHora: vendasPorHora,
      curvaAbc: curvaAbc(produtos90),
      produtos30: produtos30,
      ultimos30: ultimos30,
      anteriores30: anteriores30,
      nps: nps,
      comentarios: avaliacoes.where((a) => a.comentario.isNotEmpty).take(6).toList(),
      clientes: clientes,
      proximasDatas: proximas,
      insights: insights,
    );
  }
}
