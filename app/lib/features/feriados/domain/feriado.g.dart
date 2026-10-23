// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feriado.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Feriado _$FeriadoFromJson(Map<String, dynamic> json) => _Feriado(
  data: DateTime.parse(json['data'] as String),
  nome: json['nome'] as String,
  tipo: json['tipo'] as String? ?? 'national',
);

Map<String, dynamic> _$FeriadoToJson(_Feriado instance) => <String, dynamic>{
  'data': instance.data.toIso8601String(),
  'nome': instance.nome,
  'tipo': instance.tipo,
};

_FeriadoDto _$FeriadoDtoFromJson(Map<String, dynamic> json) => _FeriadoDto(
  date: json['date'] as String,
  name: json['name'] as String,
  type: json['type'] as String? ?? 'national',
);

Map<String, dynamic> _$FeriadoDtoToJson(_FeriadoDto instance) =>
    <String, dynamic>{
      'date': instance.date,
      'name': instance.name,
      'type': instance.type,
    };
