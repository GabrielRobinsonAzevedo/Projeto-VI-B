import 'package:freezed_annotation/freezed_annotation.dart';

part 'series.freezed.dart';

/// Faturamento de um dia (série temporal usada em gráficos e na previsão).
@freezed
abstract class PontoDiario with _$PontoDiario {
  const factory PontoDiario({
    required DateTime dia,
    required double valor,
    @Default(0) int vendas,
  }) = _PontoDiario;
}

@freezed
abstract class ResumoPeriodo with _$ResumoPeriodo {
  const ResumoPeriodo._();

  const factory ResumoPeriodo({
    required double receita,
    required int vendas,
  }) = _ResumoPeriodo;

  double get ticketMedio => vendas == 0 ? 0 : receita / vendas;
}

/// Variação percentual entre dois valores (0 quando não há base de comparação).
double variacaoPercentual(num atual, num anterior) =>
    anterior == 0 ? 0 : (atual - anterior) / anterior * 100;
