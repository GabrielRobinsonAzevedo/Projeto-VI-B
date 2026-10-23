import 'package:freezed_annotation/freezed_annotation.dart';

part 'produto.freezed.dart';
part 'produto.g.dart';

@freezed
abstract class Produto with _$Produto {
  const Produto._();

  const factory Produto({
    int? id,
    required String nome,
    required String categoria,
    required double preco,
    @Default(0) double custo,
    @Default(0) int estoque,
    @Default('📦') String emoji,
  }) = _Produto;

  factory Produto.fromJson(Map<String, dynamic> json) => _$ProdutoFromJson(json);

  static const estoqueMinimo = 10;

  /// Margem bruta em % sobre o preço de venda.
  double get margem => preco <= 0 ? 0 : (preco - custo) / preco * 100;

  bool get estoqueBaixo => estoque < estoqueMinimo;
}
