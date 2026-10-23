import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../clientes/data/clientes_repository.dart';
import '../../clientes/domain/cliente.dart';
import '../../produtos/data/produtos_repository.dart';
import '../../produtos/domain/produto.dart';
import '../data/vendas_repository.dart';
import '../domain/venda.dart';

part 'nova_venda_view_model.freezed.dart';
part 'nova_venda_view_model.g.dart';

@freezed
abstract class NovaVendaState with _$NovaVendaState {
  const NovaVendaState._();

  const factory NovaVendaState({
    required List<Produto> produtos,
    required List<Cliente> clientes,

    /// produtoId → quantidade no carrinho.
    @Default(<int, int>{}) Map<int, int> carrinho,
    Cliente? cliente,
    @Default('Pix') String formaPagamento,
    String? categoria,
    @Default('') String busca,
    @Default(false) bool salvando,
  }) = _NovaVendaState;

  List<String> get categorias => {for (final p in produtos) p.categoria}.toList();

  List<Produto> get produtosFiltrados => produtos
      .where((p) => categoria == null || p.categoria == categoria)
      .where((p) => busca.isEmpty || p.nome.toLowerCase().contains(busca.toLowerCase()))
      .toList();

  int get quantidadeItens => carrinho.values.fold(0, (s, q) => s + q);

  List<ItemVenda> get itens => [
        for (final p in produtos)
          if ((carrinho[p.id] ?? 0) > 0)
            ItemVenda(
              produtoId: p.id!,
              nome: p.nome,
              emoji: p.emoji,
              quantidade: carrinho[p.id]!,
              precoUnitario: p.preco,
            ),
      ];

  double get total => itens.fold(0, (s, i) => s + i.subtotal);
}

@riverpod
class NovaVendaViewModel extends _$NovaVendaViewModel {
  @override
  Future<NovaVendaState> build() async => NovaVendaState(
        produtos: await ref.read(produtosRepositoryProvider).listar(),
        clientes: await ref.read(clientesRepositoryProvider).listar(),
      );

  void _alterar(NovaVendaState Function(NovaVendaState s) f) {
    final atual = state.value;
    if (atual != null) state = AsyncData(f(atual));
  }

  void adicionar(Produto p) => _alterar((s) => s.copyWith(
        carrinho: {...s.carrinho, p.id!: (s.carrinho[p.id] ?? 0) + 1},
      ));

  void remover(Produto p) => _alterar((s) {
        final qtd = (s.carrinho[p.id] ?? 0) - 1;
        final novo = {...s.carrinho}..remove(p.id);
        if (qtd > 0) novo[p.id!] = qtd;
        return s.copyWith(carrinho: novo);
      });

  void limpar() => _alterar((s) => s.copyWith(carrinho: const {}));
  void selecionarCliente(Cliente? c) => _alterar((s) => s.copyWith(cliente: c));
  void selecionarPagamento(String f) => _alterar((s) => s.copyWith(formaPagamento: f));
  void filtrarCategoria(String? c) => _alterar((s) => s.copyWith(categoria: c));
  void buscar(String texto) => _alterar((s) => s.copyWith(busca: texto));

  /// Cadastro rápido de cliente durante a venda (já fica selecionado).
  Future<void> cadastrarCliente(Cliente novo) async {
    final id = await ref.read(clientesRepositoryProvider).salvar(novo);
    final salvo = novo.copyWith(id: id);
    _alterar((s) => s.copyWith(clientes: [...s.clientes, salvo], cliente: salvo));
  }

  /// Grava a venda. Retorna o total registrado (ou null se o carrinho estiver vazio).
  Future<double?> finalizar() async {
    final s = state.value;
    if (s == null || s.itens.isEmpty || s.salvando) return null;
    _alterar((s) => s.copyWith(salvando: true));
    try {
      await ref.read(vendasRepositoryProvider).registrar(
            clienteId: s.cliente?.id,
            formaPagamento: s.formaPagamento,
            itens: s.itens,
          );
      return s.total;
    } finally {
      _alterar((s) => s.copyWith(salvando: false));
    }
  }
}
