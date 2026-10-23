// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cliente.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Cliente _$ClienteFromJson(Map<String, dynamic> json) => _Cliente(
  id: (json['id'] as num?)?.toInt(),
  nome: json['nome'] as String,
  telefone: json['telefone'] as String? ?? '',
  instagram: json['instagram'] as String? ?? '',
  criadoEm: DateTime.parse(json['criadoEm'] as String),
);

Map<String, dynamic> _$ClienteToJson(_Cliente instance) => <String, dynamic>{
  'id': instance.id,
  'nome': instance.nome,
  'telefone': instance.telefone,
  'instagram': instance.instagram,
  'criadoEm': instance.criadoEm.toIso8601String(),
};
