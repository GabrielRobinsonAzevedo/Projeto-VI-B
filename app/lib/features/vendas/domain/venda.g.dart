// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'venda.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Venda _$VendaFromJson(Map<String, dynamic> json) => _Venda(
  id: (json['id'] as num?)?.toInt(),
  clienteId: (json['clienteId'] as num?)?.toInt(),
  clienteNome: json['clienteNome'] as String?,
  dataHora: DateTime.parse(json['dataHora'] as String),
  formaPagamento: json['formaPagamento'] as String,
  total: (json['total'] as num).toDouble(),
  quantidadeItens: (json['quantidadeItens'] as num?)?.toInt() ?? 0,
  itens:
      (json['itens'] as List<dynamic>?)
          ?.map((e) => ItemVenda.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <ItemVenda>[],
);

Map<String, dynamic> _$VendaToJson(_Venda instance) => <String, dynamic>{
  'id': instance.id,
  'clienteId': instance.clienteId,
  'clienteNome': instance.clienteNome,
  'dataHora': instance.dataHora.toIso8601String(),
  'formaPagamento': instance.formaPagamento,
  'total': instance.total,
  'quantidadeItens': instance.quantidadeItens,
  'itens': instance.itens.map((e) => e.toJson()).toList(),
};

_ItemVenda _$ItemVendaFromJson(Map<String, dynamic> json) => _ItemVenda(
  produtoId: (json['produtoId'] as num).toInt(),
  nome: json['nome'] as String,
  emoji: json['emoji'] as String? ?? '📦',
  quantidade: (json['quantidade'] as num).toInt(),
  precoUnitario: (json['precoUnitario'] as num).toDouble(),
);

Map<String, dynamic> _$ItemVendaToJson(_ItemVenda instance) =>
    <String, dynamic>{
      'produtoId': instance.produtoId,
      'nome': instance.nome,
      'emoji': instance.emoji,
      'quantidade': instance.quantidade,
      'precoUnitario': instance.precoUnitario,
    };
