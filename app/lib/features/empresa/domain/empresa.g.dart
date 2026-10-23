// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'empresa.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Empresa _$EmpresaFromJson(Map<String, dynamic> json) => _Empresa(
  nome: json['nome'] as String,
  segmento: json['segmento'] as String,
  cidade: json['cidade'] as String? ?? '',
  instagram: json['instagram'] as String? ?? '',
  whatsapp: json['whatsapp'] as String? ?? '',
);

Map<String, dynamic> _$EmpresaToJson(_Empresa instance) => <String, dynamic>{
  'nome': instance.nome,
  'segmento': instance.segmento,
  'cidade': instance.cidade,
  'instagram': instance.instagram,
  'whatsapp': instance.whatsapp,
};
