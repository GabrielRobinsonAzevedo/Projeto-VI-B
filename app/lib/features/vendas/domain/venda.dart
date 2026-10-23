import 'package:freezed_annotation/freezed_annotation.dart';

part 'venda.freezed.dart';
part 'venda.g.dart';

const formasPagamento = ['Pix', 'Crédito', 'Débito', 'Dinheiro'];

@freezed
abstract class Venda with _$Venda {
  const factory Venda({
    int? id,
    int? clienteId,
    String? clienteNome,
    required DateTime dataHora,
    required String formaPagamento,
    required double total,
    @Default(0) int quantidadeItens,
    @Default(<ItemVenda>[]) List<ItemVenda> itens,
  }) = _Venda;

  factory Venda.fromJson(Map<String, dynamic> json) => _$VendaFromJson(json);
}

@freezed
abstract class ItemVenda with _$ItemVenda {
  const ItemVenda._();

  const factory ItemVenda({
    required int produtoId,
    required String nome,
    @Default('📦') String emoji,
    required int quantidade,
    required double precoUnitario,
  }) = _ItemVenda;

  factory ItemVenda.fromJson(Map<String, dynamic> json) => _$ItemVendaFromJson(json);

  double get subtotal => quantidade * precoUnitario;
}
