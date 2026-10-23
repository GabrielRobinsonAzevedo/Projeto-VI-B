import 'package:freezed_annotation/freezed_annotation.dart';

part 'avaliacao.freezed.dart';
part 'avaliacao.g.dart';

@freezed
abstract class Avaliacao with _$Avaliacao {
  const factory Avaliacao({
    int? id,
    int? clienteId,
    required int nota,
    @Default('') String comentario,
    required DateTime dataHora,
  }) = _Avaliacao;

  factory Avaliacao.fromJson(Map<String, dynamic> json) => _$AvaliacaoFromJson(json);
}
