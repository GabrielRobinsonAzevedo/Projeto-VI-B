import 'dart:math';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../../core/theme/app_theme.dart';
import '../../../../core/utils/formatters.dart';
import '../../domain/insights_engine.dart';
import '../../domain/series.dart';

const _rotulo = TextStyle(color: AppColors.subtle, fontSize: 11, fontWeight: FontWeight.w600);
const _tooltip = TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 12);

AxisTitles get _semTitulo => const AxisTitles(sideTitles: SideTitles(showTitles: false));

/// Linha do faturamento real (roxo) + previsão tracejada (verde).
class GraficoFaturamento extends StatelessWidget {
  const GraficoFaturamento({super.key, required this.historico, required this.projecao, this.altura = 190});

  final List<PontoDiario> historico;
  final List<PontoDiario> projecao;
  final double altura;

  @override
  Widget build(BuildContext context) {
    final todos = [...historico, ...projecao];
    final maxY = max(1.0, todos.map((p) => p.valor).fold<double>(0, max)) * 1.15;
    final real = [for (var i = 0; i < historico.length; i++) FlSpot(i.toDouble(), historico[i].valor)];
    final prev = [
      if (historico.isNotEmpty) real.last,
      for (var i = 0; i < projecao.length; i++) FlSpot((historico.length + i).toDouble(), projecao[i].valor),
    ];

    return SizedBox(
      height: altura,
      child: LineChart(
        LineChartData(
          minY: 0,
          maxY: maxY,
          borderData: FlBorderData(show: false),
          gridData: FlGridData(
            drawVerticalLine: false,
            horizontalInterval: maxY / 3,
            getDrawingHorizontalLine: (_) =>
                const FlLine(color: AppColors.line, strokeWidth: 1, dashArray: [4, 4]),
          ),
          titlesData: FlTitlesData(
            topTitles: _semTitulo,
            rightTitles: _semTitulo,
            leftTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 46,
                interval: maxY / 3,
                getTitlesWidget: (v, meta) => v == meta.max
                    ? const SizedBox.shrink()
                    : Text(v >= 1000 ? '${(v / 1000).toStringAsFixed(1).replaceAll('.', ',')}k' : v.toStringAsFixed(0),
                        style: _rotulo),
              ),
            ),
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                interval: 1,
                reservedSize: 26,
                getTitlesWidget: (v, meta) {
                  final i = v.toInt();
                  if (i != v || i % 4 != 0 || i >= todos.length) return const SizedBox.shrink();
                  return Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Text(dataCurta(todos[i].dia), style: _rotulo),
                  );
                },
              ),
            ),
          ),
          lineTouchData: LineTouchData(
            touchTooltipData: LineTouchTooltipData(
              getTooltipColor: (_) => AppColors.ink,
              getTooltipItems: (spots) => [
                for (final s in spots)
                  s.barIndex == 1 && s.x == historico.length - 1
                      ? null
                      : LineTooltipItem(
                          '${dataCurta(todos[s.x.toInt()].dia)}\n${brl(s.y)}${s.barIndex == 1 ? ' (prev.)' : ''}',
                          _tooltip),
              ],
            ),
          ),
          lineBarsData: [
            LineChartBarData(
              spots: real,
              isCurved: true,
              preventCurveOverShooting: true,
              color: AppColors.primary,
              barWidth: 3,
              dotData: const FlDotData(show: false),
              belowBarData: BarAreaData(
                show: true,
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [AppColors.primary.withValues(alpha: 0.22), AppColors.primary.withValues(alpha: 0)],
                ),
              ),
            ),
            LineChartBarData(
              spots: prev,
              isCurved: true,
              preventCurveOverShooting: true,
              color: AppColors.mint,
              barWidth: 3,
              dashArray: const [6, 5],
              dotData: FlDotData(
                getDotPainter: (spot, _, _, i) => FlDotCirclePainter(
                  radius: i == 0 ? 0 : 3,
                  color: Colors.white,
                  strokeWidth: 2,
                  strokeColor: AppColors.mint,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LegendaItem extends StatelessWidget {
  const LegendaItem(this.cor, this.texto, {super.key, this.tracejado = false});

  final Color cor;
  final String texto;
  final bool tracejado;

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisSize: MainAxisSize.min, children: [
      Container(
        width: 14,
        height: tracejado ? 3 : 8,
        decoration: BoxDecoration(color: cor, borderRadius: BorderRadius.circular(4)),
      ),
      const SizedBox(width: 6),
      Text(texto, style: const TextStyle(fontSize: 12, color: AppColors.muted, fontWeight: FontWeight.w600)),
    ]);
  }
}

/// Barras verticais com destaque opcional na maior barra.
class GraficoBarras extends StatelessWidget {
  const GraficoBarras({
    super.key,
    required this.valores,
    required this.rotulos,
    this.cor = AppColors.primary,
    this.destacarMaior = true,
    this.formatar,
    this.altura = 150,
    this.mostrarRotulo,
  });

  final List<double> valores;
  final List<String> rotulos;
  final Color cor;
  final bool destacarMaior;
  final String Function(double)? formatar;
  final double altura;
  final bool Function(int i)? mostrarRotulo;

  @override
  Widget build(BuildContext context) {
    final maior = valores.isEmpty ? 0.0 : valores.reduce(max);
    final topo = max(1.0, maior) * 1.1;
    final largura = valores.length > 9 ? 12.0 : 22.0;
    return SizedBox(
      height: altura,
      child: BarChart(
        BarChartData(
          maxY: topo,
          alignment: BarChartAlignment.spaceAround,
          gridData: const FlGridData(show: false),
          borderData: FlBorderData(show: false),
          titlesData: FlTitlesData(
            topTitles: _semTitulo,
            rightTitles: _semTitulo,
            leftTitles: _semTitulo,
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 26,
                getTitlesWidget: (v, meta) {
                  final i = v.toInt();
                  if (mostrarRotulo != null && !mostrarRotulo!(i)) return const SizedBox.shrink();
                  return Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Text(rotulos[i], style: _rotulo),
                  );
                },
              ),
            ),
          ),
          barTouchData: BarTouchData(
            touchTooltipData: BarTouchTooltipData(
              getTooltipColor: (_) => AppColors.ink,
              getTooltipItem: (group, _, rod, _) => BarTooltipItem(
                '${rotulos[group.x]}\n${formatar?.call(rod.toY) ?? rod.toY.toStringAsFixed(0)}',
                _tooltip,
              ),
            ),
          ),
          barGroups: [
            for (var i = 0; i < valores.length; i++)
              BarChartGroupData(x: i, barRods: [
                BarChartRodData(
                  toY: valores[i],
                  width: largura,
                  color: destacarMaior && valores[i] == maior && maior > 0
                      ? cor
                      : cor.withValues(alpha: 0.28),
                  borderRadius: BorderRadius.circular(6),
                  backDrawRodData: BackgroundBarChartRodData(show: true, toY: topo, color: AppColors.bg),
                ),
              ]),
          ],
        ),
      ),
    );
  }
}

const coresAbc = {'A': AppColors.primary, 'B': AppColors.sky, 'C': AppColors.subtle};

class DonutAbc extends StatelessWidget {
  const DonutAbc({super.key, required this.participacao, this.tamanho = 132});

  final Map<String, double> participacao;
  final double tamanho;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: tamanho,
      height: tamanho,
      child: Stack(alignment: Alignment.center, children: [
        PieChart(PieChartData(
          sectionsSpace: 3,
          centerSpaceRadius: tamanho * 0.32,
          startDegreeOffset: -90,
          sections: [
            for (final e in participacao.entries)
              if (e.value > 0)
                PieChartSectionData(value: e.value, color: coresAbc[e.key], radius: tamanho * 0.16, showTitle: false),
          ],
        )),
        Column(mainAxisSize: MainAxisSize.min, children: [
          Text('${participacao['A']!.toStringAsFixed(0)}%',
              style: const TextStyle(fontWeight: FontWeight.w800, fontSize: 20)),
          const Text('classe A', style: TextStyle(color: AppColors.muted, fontSize: 11)),
        ]),
      ]),
    );
  }
}

/// Velocímetro semicircular do NPS (−100 a 100).
class NpsGauge extends StatelessWidget {
  const NpsGauge({super.key, required this.score, required this.zona, this.largura = 170});

  final double score;
  final String zona;
  final double largura;

  static Color corDoScore(double score) =>
      score >= 50 ? AppColors.mint : (score >= 0 ? AppColors.amber : AppColors.coral);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: largura,
      height: largura * 0.62,
      child: CustomPaint(
        painter: _GaugePainter((score + 100) / 200, corDoScore(score)),
        child: Align(
          alignment: const Alignment(0, 0.85),
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            Text(score.toStringAsFixed(0),
                style: const TextStyle(fontSize: 34, fontWeight: FontWeight.w900, letterSpacing: -1)),
            Text(zona, style: TextStyle(color: corDoScore(score), fontWeight: FontWeight.w700, fontSize: 12)),
          ]),
        ),
      ),
    );
  }
}

class _GaugePainter extends CustomPainter {
  _GaugePainter(this.fracao, this.cor);

  final double fracao;
  final Color cor;

  @override
  void paint(Canvas canvas, Size size) {
    final espessura = size.width * 0.09;
    final rect = Rect.fromCircle(
      center: Offset(size.width / 2, size.height - espessura / 2),
      radius: size.width / 2 - espessura / 2,
    );
    final fundo = Paint()
      ..color = AppColors.line
      ..style = PaintingStyle.stroke
      ..strokeWidth = espessura
      ..strokeCap = StrokeCap.round;
    final frente = Paint()
      ..color = cor
      ..style = PaintingStyle.stroke
      ..strokeWidth = espessura
      ..strokeCap = StrokeCap.round;
    canvas.drawArc(rect, pi, pi, false, fundo);
    canvas.drawArc(rect, pi, pi * fracao.clamp(0.0, 1.0), false, frente);
  }

  @override
  bool shouldRepaint(_GaugePainter old) => old.fracao != fracao || old.cor != cor;
}

/// Ícone e cor de cada tipo de insight.
(IconData, Color) visualInsight(TipoInsight tipo) => switch (tipo) {
      TipoInsight.melhorDia => (Icons.calendar_month_rounded, AppColors.primary),
      TipoInsight.diaFraco => (Icons.event_busy_rounded, AppColors.amber),
      TipoInsight.horarioPico => (Icons.schedule_rounded, AppColors.sky),
      TipoInsight.clientesEmRisco => (Icons.person_off_rounded, AppColors.coral),
      TipoInsight.produtoEmAlta => (Icons.local_fire_department_rounded, AppColors.mint),
      TipoInsight.produtoEmQueda => (Icons.trending_down_rounded, AppColors.coral),
      TipoInsight.maiorLucro => (Icons.savings_rounded, AppColors.mint),
      TipoInsight.estoqueBaixo => (Icons.inventory_2_rounded, AppColors.amber),
      TipoInsight.tendencia => (Icons.show_chart_rounded, AppColors.primary),
      TipoInsight.satisfacao => (Icons.sentiment_satisfied_alt_rounded, AppColors.pink),
      TipoInsight.feriado => (Icons.celebration_rounded, AppColors.pink),
    };

class InsightTile extends StatelessWidget {
  const InsightTile(this.insight, {super.key});

  final Insight insight;

  @override
  Widget build(BuildContext context) {
    final (icone, cor) = visualInsight(insight.tipo);
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: AppColors.line),
      ),
      child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(color: cor.withValues(alpha: 0.12), borderRadius: BorderRadius.circular(12)),
          child: Icon(icone, color: cor, size: 22),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(insight.titulo, style: const TextStyle(fontWeight: FontWeight.w800, fontSize: 15)),
            const SizedBox(height: 3),
            Text(insight.texto, style: const TextStyle(color: AppColors.muted, fontSize: 13, height: 1.35)),
          ]),
        ),
      ]),
    );
  }
}
