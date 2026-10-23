import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../app/router.dart';
import '../../../core/theme/app_theme.dart';
import '../../../core/utils/formatters.dart';
import '../../../core/widgets/widgets.dart';
import '../../insights/domain/series.dart';
import '../../insights/ui/insights_screen.dart';
import '../../insights/ui/widgets/charts.dart';
import 'dashboard_view_model.dart';

class DashboardScreen extends ConsumerWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final estado = ref.watch(dashboardViewModelProvider);
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: AsyncValueView(
          value: estado,
          data: (s) => RefreshIndicator(
            onRefresh: () => ref.refresh(dashboardViewModelProvider.future),
            child: ListView(
              padding: const EdgeInsets.fromLTRB(16, 12, 16, 32),
              children: [
                _Cabecalho(s),
                const SizedBox(height: 18),
                _HeroHoje(s),
                const SizedBox(height: 18),
                const _AcoesRapidas(),
                const SizedBox(height: 10),
                const SectionHeader('Últimos 30 dias'),
                _GradeKpis(s),
                const SizedBox(height: 14),
                _CardGrafico(s),
                const SizedBox(height: 8),
                SectionHeader(
                  'O que os dados dizem',
                  action: 'Ver todos',
                  onAction: () => context.go(Rotas.insights),
                ),
                InsightsResumo(s.analise.insights),
                const SectionHeader('Mais vendidos', subtitle: 'Faturamento nos últimos 30 dias'),
                _MaisVendidos(s),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _Cabecalho extends StatelessWidget {
  const _Cabecalho(this.s);

  final DashboardState s;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Avatar(s.empresa.nome, size: 48, color: AppColors.primary),
      const SizedBox(width: 12),
      Expanded(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text('Olá 👋', style: TextStyle(color: AppColors.muted, fontSize: 14)),
          Text(s.empresa.nome,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w800, letterSpacing: -0.3)),
        ]),
      ),
      IconButton.filledTonal(
        tooltip: 'Equipe',
        onPressed: () => context.push(Rotas.equipe),
        icon: const Icon(Icons.groups_rounded),
      ),
      IconButton.filledTonal(
        tooltip: 'Minha empresa',
        onPressed: () => context.push(Rotas.empresa),
        icon: const Icon(Icons.settings_rounded),
      ),
    ]);
  }
}

class _HeroHoje extends StatelessWidget {
  const _HeroHoje(this.s);

  final DashboardState s;

  @override
  Widget build(BuildContext context) {
    const branco70 = TextStyle(color: Color(0xB3FFFFFF), fontSize: 13.5);
    return Container(
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
        gradient: AppColors.hero,
        borderRadius: BorderRadius.circular(26),
        boxShadow: [
          BoxShadow(color: AppColors.primary.withValues(alpha: 0.35), blurRadius: 24, offset: const Offset(0, 10)),
        ],
      ),
      child: Stack(children: [
        Positioned(
          right: -30,
          top: -40,
          child: Container(
            width: 140,
            height: 140,
            decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white.withValues(alpha: 0.07)),
          ),
        ),
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(children: [
            const Text('Faturamento de hoje', style: branco70),
            const Spacer(),
            DeltaPill(s.variacaoHoje, onDark: true),
          ]),
          const SizedBox(height: 8),
          Text(brl(s.hoje.receita),
              style: const TextStyle(
                  color: Colors.white, fontSize: 36, fontWeight: FontWeight.w900, letterSpacing: -1)),
          const SizedBox(height: 4),
          Text('vs. ${brl(s.semanaPassada.receita)} na ${diasSemanaLongo[DateTime.now().weekday - 1].toLowerCase()} passada, até agora',
              style: branco70.copyWith(fontSize: 12)),
          const SizedBox(height: 18),
          Row(children: [
            _MiniStat(Icons.receipt_rounded, '${s.hoje.vendas}', 'vendas'),
            const SizedBox(width: 10),
            _MiniStat(Icons.shopping_bag_rounded, brl(s.hoje.ticketMedio), 'ticket médio'),
          ]),
        ]),
      ]),
    );
  }
}

class _MiniStat extends StatelessWidget {
  const _MiniStat(this.icon, this.valor, this.rotulo);

  final IconData icon;
  final String valor;
  final String rotulo;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        decoration: BoxDecoration(
          color: Colors.white.withValues(alpha: 0.13),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(children: [
          Icon(icon, color: Colors.white, size: 18),
          const SizedBox(width: 8),
          Expanded(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(valor, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w800)),
              Text(rotulo, style: const TextStyle(color: Color(0xB3FFFFFF), fontSize: 11.5)),
            ]),
          ),
        ]),
      ),
    );
  }
}

class _AcoesRapidas extends StatelessWidget {
  const _AcoesRapidas();

  @override
  Widget build(BuildContext context) {
    Widget acao(IconData icon, String rotulo, Color cor, VoidCallback onTap) => Expanded(
          child: InkWell(
            borderRadius: BorderRadius.circular(18),
            onTap: onTap,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 6),
              child: Column(children: [
                Container(
                  width: 58,
                  height: 58,
                  decoration: BoxDecoration(
                    color: AppColors.surface,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: AppColors.line),
                  ),
                  child: Icon(icon, color: cor, size: 26),
                ),
                const SizedBox(height: 7),
                Text(rotulo, style: const TextStyle(fontSize: 12.5, fontWeight: FontWeight.w600)),
              ]),
            ),
          ),
        );

    return Row(children: [
      acao(Icons.add_shopping_cart_rounded, 'Nova venda', AppColors.primary, () => context.push(Rotas.novaVenda)),
      acao(Icons.star_rounded, 'Avaliação', AppColors.amber, () => context.push(Rotas.avaliacao)),
      acao(Icons.inventory_2_rounded, 'Produtos', AppColors.mint, () => context.push(Rotas.produtos)),
      acao(Icons.campaign_rounded, 'Divulgar', AppColors.pink, () => context.go(Rotas.divulgar)),
    ]);
  }
}

class _GradeKpis extends StatelessWidget {
  const _GradeKpis(this.s);

  final DashboardState s;

  @override
  Widget build(BuildContext context) {
    final a = s.analise;
    final atual = a.ultimos30;
    final ant = a.anteriores30;
    final tiles = [
      KpiTile(
        label: 'Faturamento',
        value: brlCurto(atual.receita),
        icon: Icons.payments_rounded,
        color: AppColors.primary,
        delta: variacaoPercentual(atual.receita, ant.receita),
      ),
      KpiTile(
        label: 'Vendas',
        value: inteiro(atual.vendas),
        icon: Icons.receipt_long_rounded,
        color: AppColors.sky,
        delta: variacaoPercentual(atual.vendas, ant.vendas),
      ),
      KpiTile(
        label: 'Ticket médio',
        value: brl(atual.ticketMedio),
        icon: Icons.shopping_bag_rounded,
        color: AppColors.amber,
        delta: variacaoPercentual(atual.ticketMedio, ant.ticketMedio),
      ),
      KpiTile(
        label: 'NPS (satisfação)',
        value: a.nps.total == 0 ? '—' : a.nps.score.toStringAsFixed(0),
        icon: Icons.sentiment_satisfied_alt_rounded,
        color: AppColors.pink,
        footer: a.nps.zona,
      ),
    ];
    return Column(children: [
      Row(children: [Expanded(child: tiles[0]), const SizedBox(width: 12), Expanded(child: tiles[1])]),
      const SizedBox(height: 12),
      Row(children: [Expanded(child: tiles[2]), const SizedBox(width: 12), Expanded(child: tiles[3])]),
    ]);
  }
}

class _CardGrafico extends StatelessWidget {
  const _CardGrafico(this.s);

  final DashboardState s;

  @override
  Widget build(BuildContext context) {
    final hist = s.analise.historico;
    final ultimos = hist.length > 14 ? hist.sublist(hist.length - 14) : hist;
    return AppCard(
      padding: const EdgeInsets.fromLTRB(16, 18, 18, 12),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(children: [
          const Expanded(
            child: Text('Vendas e previsão', style: TextStyle(fontWeight: FontWeight.w800, fontSize: 16)),
          ),
          Text('próx. 7 dias: ${brlCurto(s.analise.previsao.totalProjetado)}',
              style: const TextStyle(color: AppColors.mint, fontWeight: FontWeight.w700, fontSize: 12.5)),
        ]),
        const SizedBox(height: 18),
        GraficoFaturamento(historico: ultimos, projecao: s.analise.previsao.projecao),
        const SizedBox(height: 10),
        const Row(children: [
          LegendaItem(AppColors.primary, 'Últimos 14 dias'),
          SizedBox(width: 16),
          LegendaItem(AppColors.mint, 'Previsão', tracejado: true),
        ]),
      ]),
    );
  }
}

class _MaisVendidos extends StatelessWidget {
  const _MaisVendidos(this.s);

  final DashboardState s;

  @override
  Widget build(BuildContext context) {
    final produtos = s.analise.produtos30.take(5).toList();
    if (produtos.isEmpty) {
      return const AppCard(
        child: EmptyState(icon: Icons.inventory_2_outlined, title: 'Nenhuma venda nos últimos 30 dias'),
      );
    }
    final maior = produtos.first.receita;
    return AppCard(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(children: [
        for (var i = 0; i < produtos.length; i++)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(children: [
              EmojiBox(produtos[i].emoji, size: 44),
              const SizedBox(width: 12),
              Expanded(
                child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Row(children: [
                    Expanded(
                      child: Text(produtos[i].nome,
                          overflow: TextOverflow.ellipsis, style: const TextStyle(fontWeight: FontWeight.w700)),
                    ),
                    Text(brlCurto(produtos[i].receita), style: const TextStyle(fontWeight: FontWeight.w800)),
                  ]),
                  const SizedBox(height: 6),
                  Row(children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: LinearProgressIndicator(
                          value: maior == 0 ? 0 : produtos[i].receita / maior,
                          minHeight: 6,
                          backgroundColor: AppColors.bg,
                          color: AppColors.categoricas[i % AppColors.categoricas.length],
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Text('${inteiro(produtos[i].quantidade)} un.',
                        style: const TextStyle(color: AppColors.muted, fontSize: 12)),
                  ]),
                ]),
              ),
            ]),
          ),
      ]),
    );
  }
}
