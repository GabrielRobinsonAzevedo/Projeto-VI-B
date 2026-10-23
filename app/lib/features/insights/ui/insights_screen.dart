import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/theme/app_theme.dart';
import '../../../core/utils/formatters.dart';
import '../../../core/widgets/widgets.dart';
import '../domain/curva_abc.dart';
import '../domain/insights_engine.dart';
import 'insights_view_model.dart';
import 'widgets/charts.dart';

class InsightsScreen extends ConsumerWidget {
  const InsightsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final estado = ref.watch(insightsViewModelProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('Insights')),
      body: AsyncValueView(
        value: estado,
        data: (s) => RefreshIndicator(
          onRefresh: () => ref.refresh(insightsViewModelProvider.future),
          child: ListView(
            padding: const EdgeInsets.fromLTRB(16, 4, 16, 32),
            children: [
              _CardPrevisao(s),
              const SizedBox(height: 14),
              _CardSemanaEHoras(s),
              const SizedBox(height: 14),
              _CardAbc(s.curvaAbc),
              const SizedBox(height: 14),
              _CardNps(s),
              const SizedBox(height: 8),
              const SectionHeader('Todas as recomendações',
                  subtitle: 'Geradas automaticamente a partir dos seus dados'),
              for (final i in s.insights) ...[InsightTile(i), const SizedBox(height: 10)],
              if (s.insights.isEmpty)
                const EmptyState(
                  icon: Icons.lightbulb_outline_rounded,
                  title: 'Ainda sem recomendações',
                  message: 'Registre vendas por alguns dias para o app aprender o seu negócio.',
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class _CardPrevisao extends StatelessWidget {
  const _CardPrevisao(this.s);

  final InsightsState s;

  @override
  Widget build(BuildContext context) {
    final p = s.previsao;
    return AppCard(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(children: [
          const IconBadge(Icons.auto_graph_rounded, color: AppColors.mint),
          const SizedBox(width: 12),
          const Expanded(
            child: Text('Previsão dos próximos 7 dias',
                style: TextStyle(fontWeight: FontWeight.w800, fontSize: 16)),
          ),
          DeltaPill(p.tendenciaSemanal),
        ]),
        const SizedBox(height: 14),
        Text(brl(p.totalProjetado),
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w900, letterSpacing: -1)),
        Text(
          'Tendência de ${variacao(p.tendenciaSemanal)} por semana'
          '${p.erroBacktest != null ? ' · erro médio ${p.erroBacktest!.toStringAsFixed(0)}%' : ''}',
          style: const TextStyle(color: AppColors.muted, fontSize: 13),
        ),
        const SizedBox(height: 16),
        GraficoBarras(
          valores: [for (final x in p.projecao) x.valor],
          rotulos: [for (final x in p.projecao) diaSemana(x.dia)],
          cor: AppColors.mint,
          formatar: brl,
        ),
        const SizedBox(height: 6),
        const Text(
          'Modelo: sazonalidade semanal + regressão linear das últimas 4 semanas. '
          'Feriados são tratados como domingo.',
          style: TextStyle(color: AppColors.subtle, fontSize: 11.5),
        ),
      ]),
    );
  }
}

class _CardSemanaEHoras extends StatelessWidget {
  const _CardSemanaEHoras(this.s);

  final InsightsState s;

  @override
  Widget build(BuildContext context) {
    final fatores = s.previsao.fatorSemana;
    final horas = [for (var h = 7; h <= 19; h++) h];
    final pico = horaDePico(s.vendasPorHora);
    var melhor = 0;
    for (var i = 1; i < 7; i++) {
      if (fatores[i] > fatores[melhor]) melhor = i;
    }

    return AppCard(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        _Titulo(
          icon: Icons.calendar_month_rounded,
          cor: AppColors.primary,
          titulo: 'Desempenho por dia da semana',
          destaque: '${diasSemanaCurto[melhor]} +${((fatores[melhor] - 1) * 100).toStringAsFixed(0)}%',
        ),
        const SizedBox(height: 14),
        GraficoBarras(
          valores: [for (final f in fatores) f * 100],
          rotulos: diasSemanaCurto,
          formatar: (v) => '${v.toStringAsFixed(0)}% da média',
          altura: 130,
        ),
        const Divider(height: 32),
        _Titulo(
          icon: Icons.schedule_rounded,
          cor: AppColors.sky,
          titulo: 'Horários de pico (30 dias)',
          destaque: pico == null ? '—' : '${pico}h',
        ),
        const SizedBox(height: 14),
        GraficoBarras(
          valores: [for (final h in horas) (s.vendasPorHora[h] ?? 0).toDouble()],
          rotulos: [for (final h in horas) '${h}h'],
          cor: AppColors.sky,
          formatar: (v) => '${v.toStringAsFixed(0)} vendas',
          altura: 130,
          mostrarRotulo: (i) => i.isEven,
        ),
      ]),
    );
  }
}

class _Titulo extends StatelessWidget {
  const _Titulo({required this.icon, required this.cor, required this.titulo, required this.destaque});

  final IconData icon;
  final Color cor;
  final String titulo;
  final String destaque;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      IconBadge(icon, color: cor, size: 36),
      const SizedBox(width: 12),
      Expanded(child: Text(titulo, style: const TextStyle(fontWeight: FontWeight.w800, fontSize: 15))),
      Pill(destaque, color: cor),
    ]);
  }
}

class _CardAbc extends StatelessWidget {
  const _CardAbc(this.itens);

  final List<ItemAbc> itens;

  @override
  Widget build(BuildContext context) {
    if (itens.isEmpty) {
      return const AppCard(
        child: EmptyState(icon: Icons.donut_large_rounded, title: 'Curva ABC indisponível', message: 'Sem vendas nos últimos 90 dias.'),
      );
    }
    final part = participacaoPorClasse(itens);
    final qtdA = itens.where((i) => i.classe == 'A').length;
    return AppCard(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        _Titulo(
          icon: Icons.donut_large_rounded,
          cor: AppColors.primary,
          titulo: 'Curva ABC (90 dias)',
          destaque: '${itens.length} produtos',
        ),
        const SizedBox(height: 16),
        Row(children: [
          DonutAbc(participacao: part),
          const SizedBox(width: 18),
          Expanded(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                '$qtdA ${qtdA == 1 ? 'produto gera' : 'produtos geram'} ${part['A']!.toStringAsFixed(0)}% do faturamento.',
                style: const TextStyle(fontWeight: FontWeight.w700, height: 1.3),
              ),
              const SizedBox(height: 10),
              for (final c in ['A', 'B', 'C'])
                Padding(
                  padding: const EdgeInsets.only(bottom: 4),
                  child: LegendaItem(coresAbc[c]!, 'Classe $c · ${part[c]!.toStringAsFixed(0)}%'),
                ),
            ]),
          ),
        ]),
        const SizedBox(height: 14),
        for (final i in itens.take(8))
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 6),
            child: Row(children: [
              Container(
                width: 26,
                height: 26,
                alignment: Alignment.center,
                decoration: BoxDecoration(color: coresAbc[i.classe], borderRadius: BorderRadius.circular(8)),
                child: Text(i.classe,
                    style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w800, fontSize: 13)),
              ),
              const SizedBox(width: 10),
              Text(i.produto.emoji, style: const TextStyle(fontSize: 18)),
              const SizedBox(width: 8),
              Expanded(
                child: Text(i.produto.nome,
                    overflow: TextOverflow.ellipsis, style: const TextStyle(fontWeight: FontWeight.w600)),
              ),
              Text(brlCurto(i.produto.receita), style: const TextStyle(fontWeight: FontWeight.w700)),
              SizedBox(
                width: 54,
                child: Text('${i.acumulado.toStringAsFixed(0)}%',
                    textAlign: TextAlign.right, style: const TextStyle(color: AppColors.muted, fontSize: 12)),
              ),
            ]),
          ),
      ]),
    );
  }
}

class _CardNps extends StatelessWidget {
  const _CardNps(this.s);

  final InsightsState s;

  @override
  Widget build(BuildContext context) {
    final nps = s.nps;
    Widget barra(String rotulo, int qtd, Color cor) {
      final frac = nps.total == 0 ? 0.0 : qtd / nps.total;
      return Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(children: [
            Text(rotulo, style: const TextStyle(fontSize: 12.5, fontWeight: FontWeight.w600)),
            const Spacer(),
            Text('${(frac * 100).toStringAsFixed(0)}%', style: const TextStyle(fontSize: 12.5, color: AppColors.muted)),
          ]),
          const SizedBox(height: 4),
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: LinearProgressIndicator(value: frac, minHeight: 7, color: cor, backgroundColor: AppColors.bg),
          ),
        ]),
      );
    }

    return AppCard(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        _Titulo(
          icon: Icons.sentiment_satisfied_alt_rounded,
          cor: AppColors.pink,
          titulo: 'Satisfação (NPS · 90 dias)',
          destaque: '${nps.total} avaliações',
        ),
        const SizedBox(height: 16),
        Row(children: [
          NpsGauge(score: nps.score, zona: nps.zona, largura: 150),
          const SizedBox(width: 18),
          Expanded(
            child: Column(children: [
              barra('Promotores (9–10)', nps.promotores, AppColors.mint),
              barra('Neutros (7–8)', nps.neutros, AppColors.amber),
              barra('Detratores (0–6)', nps.detratores, AppColors.coral),
            ]),
          ),
        ]),
        if (s.comentarios.isNotEmpty) ...[
          const Divider(height: 28),
          for (final c in s.comentarios.take(3))
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Container(
                  width: 30,
                  height: 30,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: NpsGauge.corDoScore(c.nota >= 9 ? 100 : (c.nota >= 7 ? 0 : -100)).withValues(alpha: 0.14),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text('${c.nota}', style: const TextStyle(fontWeight: FontWeight.w800)),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Text('“${c.comentario}”', style: const TextStyle(height: 1.3)),
                    Text(rotuloDia(c.dataHora), style: const TextStyle(color: AppColors.subtle, fontSize: 12)),
                  ]),
                ),
              ]),
            ),
        ],
      ]),
    );
  }
}

/// Lista resumida usada no Início.
class InsightsResumo extends StatelessWidget {
  const InsightsResumo(this.insights, {super.key, this.quantidade = 3});

  final List<Insight> insights;
  final int quantidade;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      for (final i in insights.take(quantidade)) ...[InsightTile(i), const SizedBox(height: 10)],
    ]);
  }
}
