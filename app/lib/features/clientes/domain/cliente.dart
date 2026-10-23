import 'package:freezed_annotation/freezed_annotation.dart';

part 'cliente.freezed.dart';
part 'cliente.g.dart';

@freezed
abstract class Cliente with _$Cliente {
  const factory Cliente({
    int? id,
    required String nome,
    @Default('') String telefone,
    @Default('') String instagram,
    required DateTime criadoEm,
  }) = _Cliente;

  factory Cliente.fromJson(Map<String, dynamic> json) =>
      _$ClienteFromJson(json);
}
