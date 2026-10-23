// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'avaliacao.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Avaliacao _$AvaliacaoFromJson(Map<String, dynamic> json) => _Avaliacao(
  id: (json['id'] as num?)?.toInt(),
  clienteId: (json['clienteId'] as num?)?.toInt(),
  nota: (json['nota'] as num).toInt(),
  comentario: json['comentario'] as String? ?? '',
  dataHora: DateTime.parse(json['dataHora'] as String),
);

Map<String, dynamic> _$AvaliacaoToJson(_Avaliacao instance) =>
    <String, dynamic>{
      'id': instance.id,
      'clienteId': instance.clienteId,
      'nota': instance.nota,
      'comentario': instance.comentario,
      'dataHora': instance.dataHora.toIso8601String(),
    };
