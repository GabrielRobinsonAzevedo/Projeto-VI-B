// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'produto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Produto _$ProdutoFromJson(Map<String, dynamic> json) => _Produto(
  id: (json['id'] as num?)?.toInt(),
  nome: json['nome'] as String,
  categoria: json['categoria'] as String,
  preco: (json['preco'] as num).toDouble(),
  custo: (json['custo'] as num?)?.toDouble() ?? 0,
  estoque: (json['estoque'] as num?)?.toInt() ?? 0,
  emoji: json['emoji'] as String? ?? '📦',
);

Map<String, dynamic> _$ProdutoToJson(_Produto instance) => <String, dynamic>{
  'id': instance.id,
  'nome': instance.nome,
  'categoria': instance.categoria,
  'preco': instance.preco,
  'custo': instance.custo,
  'estoque': instance.estoque,
  'emoji': instance.emoji,
};
