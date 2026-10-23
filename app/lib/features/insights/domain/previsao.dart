import 'dart:math';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'series.dart';

part 'previsao.freezed.dart';

@freezed
abstract class Previsao with _$Previsao {
  const Previsao._();

  const factory Previsao({
    required List<PontoDiario> projecao,

    /// Índice sazonal de cada dia da semana (segunda = índice 0). 1,0 = média.
    required List<double> fatorSemana,

    /// Inclinação da tendência, em % da média por semana.
    required double tendenciaSemanal,

    /// Erro percentual ponderado (WAPE) do modelo nos últimos 7 dias conhecidos.
    double? erroBacktest,
  }) = _Previsao;

  double get totalProjetado => projecao.fold(0, (s, p) => s + p.valor);
}

/// Previsão de faturamento diário: **decomposição sazonal + regressão linear**.
///
/// 1. Calcula o índice sazonal de cada dia da semana (média do dia ÷ média geral).
/// 2. Remove a sazonalidade da série (valor ÷ índice).
/// 3. Ajusta uma reta por mínimos quadrados nos últimos [janelaTendencia] dias.
/// 4. Projeta a reta para os próximos [horizonte] dias e reaplica o índice.
///    Feriados recebem o índice de domingo.
///
/// [historico] deve conter dias completos, consecutivos, terminando na véspera
/// de [inicio].
Previsao preverVendas(
  List<PontoDiario> historico, {
  required DateTime inicio,
  int horizonte = 7,
  Set<DateTime> feriados = const {},
  int janelaTendencia = 28,
  bool calcularBacktest = true,
}) {
  final fatores = indicesSazonais(historico);
  final valores = historico.map((p) => p.valor).toList();

  double fatorDo(DateTime dia) {
    final d = DateTime(dia.year, dia.month, dia.day);
    if (feriados.contains(d)) return fatores[6];
    return fatores[dia.weekday - 1];
  }

  final dessazonalizada = <double>[
    for (var i = 0; i < historico.length; i++)
      () {
        final f = fatorDo(historico[i].dia);
        return f == 0 ? valores[i] : valores[i] / f;
      }(),
  ];

  final janela = dessazonalizada.length > janelaTendencia
      ? dessazonalizada.sublist(dessazonalizada.length - janelaTendencia)
      : dessazonalizada;
  final (a, b) = regressaoLinear(janela);
  final mediaJanela = janela.isEmpty ? 0.0 : janela.reduce((x, y) => x + y) / janela.length;

  final projecao = <PontoDiario>[
    for (var k = 0; k < horizonte; k++)
      () {
        final dia = DateTime(inicio.year, inicio.month, inicio.day + k);
        final base = max(0.0, a + b * (janela.length + k));
        return PontoDiario(dia: dia, valor: base * fatorDo(dia));
      }(),
  ];

  double? erro;
  if (calcularBacktest && historico.length >= 28) {
    final treino = historico.sublist(0, historico.length - 7);
    final teste = historico.sublist(historico.length - 7);
    final p = preverVendas(
      treino,
      inicio: teste.first.dia,
      horizonte: 7,
      feriados: feriados,
      janelaTendencia: janelaTendencia,
      calcularBacktest: false,
    );
    final real = teste.fold<double>(0, (s, x) => s + x.valor);
    if (real > 0) {
      var somaErro = 0.0;
      for (var i = 0; i < 7; i++) {
        somaErro += (teste[i].valor - p.projecao[i].valor).abs();
      }
      erro = somaErro / real * 100;
    }
  }

  return Previsao(
    projecao: projecao,
    fatorSemana: fatores,
    tendenciaSemanal: mediaJanela == 0 ? 0 : b * 7 / mediaJanela * 100,
    erroBacktest: erro,
  );
}

/// Índice sazonal por dia da semana (lista com 7 posições, segunda primeiro).
List<double> indicesSazonais(List<PontoDiario> historico) {
  if (historico.isEmpty) return List.filled(7, 1);
  final media = historico.fold<double>(0, (s, p) => s + p.valor) / historico.length;
  if (media == 0) return List.filled(7, 1);
  return List.generate(7, (i) {
    final doDia = historico.where((p) => p.dia.weekday == i + 1).map((p) => p.valor).toList();
    if (doDia.isEmpty) return 1.0;
    return (doDia.reduce((x, y) => x + y) / doDia.length) / media;
  });
}

/// Mínimos quadrados ordinários para y = a + b·x, com x = 0, 1, 2, ...
(double a, double b) regressaoLinear(List<double> y) {
  final n = y.length;
  if (n == 0) return (0, 0);
  if (n == 1) return (y.first, 0);
  final xMedio = (n - 1) / 2;
  final yMedio = y.reduce((p, q) => p + q) / n;
  var num = 0.0, den = 0.0;
  for (var x = 0; x < n; x++) {
    num += (x - xMedio) * (y[x] - yMedio);
    den += (x - xMedio) * (x - xMedio);
  }
  final b = den == 0 ? 0.0 : num / den;
  return (yMedio - b * xMedio, b);
}
