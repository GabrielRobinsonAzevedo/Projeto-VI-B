import 'package:freezed_annotation/freezed_annotation.dart';

part 'feriado.freezed.dart';
part 'feriado.g.dart';

@freezed
abstract class Feriado with _$Feriado {
  const factory Feriado({
    required DateTime data,
    required String nome,
    @Default('national') String tipo,
  }) = _Feriado;

  factory Feriado.fromJson(Map<String, dynamic> json) => _$FeriadoFromJson(json);
}

/// Formato devolvido pela BrasilAPI: {"date": "2026-01-01", "name": "...", "type": "national"}.
@freezed
abstract class FeriadoDto with _$FeriadoDto {
  const FeriadoDto._();

  const factory FeriadoDto({
    required String date,
    required String name,
    @Default('national') String type,
  }) = _FeriadoDto;

  factory FeriadoDto.fromJson(Map<String, dynamic> json) => _$FeriadoDtoFromJson(json);

  Feriado toDomain() => Feriado(data: DateTime.parse(date), nome: name, tipo: type);
}
