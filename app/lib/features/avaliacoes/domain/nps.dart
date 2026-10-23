import 'package:freezed_annotation/freezed_annotation.dart';

part 'nps.freezed.dart';

/// Net Promoter Score: % promotores (9–10) − % detratores (0–6).
@freezed
abstract class Nps with _$Nps {
  const Nps._();

  const factory Nps({
    @Default(0) int promotores,
    @Default(0) int neutros,
    @Default(0) int detratores,
  }) = _Nps;

  int get total => promotores + neutros + detratores;

  double get score => total == 0 ? 0 : (promotores - detratores) / total * 100;

  /// Zonas de classificação oficiais do NPS.
  String get zona {
    if (total == 0) return 'Sem dados';
    if (score >= 75) return 'Excelência';
    if (score >= 50) return 'Qualidade';
    if (score >= 0) return 'Aperfeiçoamento';
    return 'Crítica';
  }
}

Nps calcularNps(Iterable<int> notas) {
  var p = 0, n = 0, d = 0;
  for (final nota in notas) {
    if (nota >= 9) {
      p++;
    } else if (nota >= 7) {
      n++;
    } else {
      d++;
    }
  }
  return Nps(promotores: p, neutros: n, detratores: d);
}
