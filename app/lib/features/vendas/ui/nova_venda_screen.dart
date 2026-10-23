import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/theme/app_theme.dart';
import '../../../core/utils/formatters.dart';
import '../../../core/widgets/widgets.dart';
import '../../clientes/domain/cliente.dart';
import '../../clientes/ui/cliente_form_sheet.dart';
import '../../produtos/domain/produto.dart';
import '../domain/venda.dart';
import 'nova_venda_view_model.dart';
import 'vendas_screen.dart';

class NovaVendaScreen extends ConsumerWidget {
  const NovaVendaScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final estado = ref.watch(novaVendaViewModelProvider);
    final vm = ref.read(novaVendaViewModelProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Nova venda'),
        actions: [
          if ((estado.value?.quantidadeItens ?? 0) > 0)
            TextButton(onPressed: vm.limpar, child: const Text('Limpar')),
        ],
      ),
      body: AsyncValueView(
        value: estado,
        data: (s) => Column(children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 10),
            child: TextField(
              onChanged: vm.buscar,
              decoration: const InputDecoration(
                hintText: 'Buscar produto',
                prefixIcon: Icon(Icons.search_rounded),
              ),
            ),
          ),
          SizedBox(
            height: 44,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              children: [
                for (final c in [null, ...s.categorias])
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: ChoiceChip(
                      label: Text(c ?? 'Todos'),
                      selected: s.categoria == c,
                      showCheckmark: false,
                      onSelected: (_) => vm.filtrarCategoria(c),
                    ),
                  ),
              ],
            ),
          ),
          Expanded(
            child: s.produtosFiltrados.isEmpty
                ? const EmptyState(icon: Icons.search_off_rounded, title: 'Nenhum produto encontrado')
                : GridView.builder(
                    padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
                    gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 220,
                      mainAxisExtent: 150,
                      crossAxisSpacing: 12,
                      mainAxisSpacing: 12,
                    ),
                    itemCount: s.produtosFiltrados.length,
                    itemBuilder: (_, i) {
                      final p = s.produtosFiltrados[i];
                      return _ProdutoCard(
                        produto: p,
                        quantidade: s.carrinho[p.id] ?? 0,
                        onAdd: () => vm.adicionar(p),
                        onRemove: () => vm.remover(p),
                      );
                    },
                  ),
          ),
          _PainelFinalizar(s),
        ]),
      ),
    );
  }
}

class _ProdutoCard extends StatelessWidget {
  const _ProdutoCard({required this.produto, required this.quantidade, required this.onAdd, required this.onRemove});

  final Produto produto;
  final int quantidade;
  final VoidCallback onAdd;
  final VoidCallback onRemove;

  @override
  Widget build(BuildContext context) {
    final selecionado = quantidade > 0;
    return AnimatedContainer(
      duration: const Duration(milliseconds: 180),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: selecionado ? AppColors.primary : AppColors.line, width: selecionado ? 2 : 1),
      ),
      child: Material(
        type: MaterialType.transparency,
        child: InkWell(
          borderRadius: BorderRadius.circular(20),
          onTap: onAdd,
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                EmojiBox(produto.emoji, size: 50),
                const Spacer(),
                if (produto.estoqueBaixo)
                  Tooltip(
                    message: 'Estoque: ${produto.estoque}',
                    child: const Icon(Icons.warning_amber_rounded, color: AppColors.amber, size: 18),
                  ),
              ]),
              const Spacer(),
              Text(produto.nome,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontWeight: FontWeight.w700, height: 1.2)),
              const SizedBox(height: 6),
              Row(children: [
                Text(brl(produto.preco),
                    style: const TextStyle(color: AppColors.primary, fontWeight: FontWeight.w800)),
                const Spacer(),
                if (!selecionado)
                  _BotaoRedondo(Icons.add_rounded, onAdd)
                else
                  Container(
                    decoration: BoxDecoration(color: AppColors.primary, borderRadius: BorderRadius.circular(20)),
                    child: Row(mainAxisSize: MainAxisSize.min, children: [
                      _BotaoRedondo(Icons.remove_rounded, onRemove, claro: true),
                      Text('$quantidade',
                          style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w800)),
                      _BotaoRedondo(Icons.add_rounded, onAdd, claro: true),
                    ]),
                  ),
              ]),
            ]),
          ),
        ),
      ),
    );
  }
}

class _BotaoRedondo extends StatelessWidget {
  const _BotaoRedondo(this.icon, this.onTap, {this.claro = false});

  final IconData icon;
  final VoidCallback onTap;
  final bool claro;

  @override
  Widget build(BuildContext context) {
    return InkResponse(
      onTap: onTap,
      radius: 18,
      child: Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          color: claro ? Colors.transparent : AppColors.primary.withValues(alpha: 0.12),
          shape: BoxShape.circle,
        ),
        child: Icon(icon, size: 18, color: claro ? Colors.white : AppColors.primary),
      ),
    );
  }
}

class _PainelFinalizar extends ConsumerWidget {
  const _PainelFinalizar(this.s);

  final NovaVendaState s;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final vm = ref.read(novaVendaViewModelProvider.notifier);
    return Container(
      padding: EdgeInsets.fromLTRB(16, 14, 16, 14 + MediaQuery.paddingOf(context).bottom),
      decoration: const BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.vertical(top: Radius.circular(26)),
        boxShadow: [BoxShadow(color: Color(0x14000000), blurRadius: 20, offset: Offset(0, -6))],
      ),
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        InkWell(
          borderRadius: BorderRadius.circular(14),
          onTap: () => _escolherCliente(context, ref),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 6),
            child: Row(children: [
              s.cliente == null
                  ? const IconBadge(Icons.person_add_alt_1_rounded, size: 36)
                  : Avatar(s.cliente!.nome, size: 36),
              const SizedBox(width: 10),
              Expanded(
                child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  const Text('Cliente', style: TextStyle(color: AppColors.muted, fontSize: 12)),
                  Text(s.cliente?.nome ?? 'Avulso (toque para identificar)',
                      style: const TextStyle(fontWeight: FontWeight.w700)),
                ]),
              ),
              const Icon(Icons.chevron_right_rounded, color: AppColors.subtle),
            ]),
          ),
        ),
        const SizedBox(height: 8),
        Row(children: [
          for (final f in formasPagamento)
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 3),
                child: _OpcaoPagamento(
                  forma: f,
                  selecionada: s.formaPagamento == f,
                  onTap: () => vm.selecionarPagamento(f),
                ),
              ),
            ),
        ]),
        const SizedBox(height: 14),
        Row(children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text('${s.quantidadeItens} ${s.quantidadeItens == 1 ? 'item' : 'itens'}',
                style: const TextStyle(color: AppColors.muted, fontSize: 12.5)),
            Text(brl(s.total), style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w900, letterSpacing: -0.5)),
          ]),
          const SizedBox(width: 16),
          Expanded(
            child: FilledButton.icon(
              onPressed: s.itens.isEmpty || s.salvando
                  ? null
                  : () async {
                      final total = await vm.finalizar();
                      if (total != null && context.mounted) {
                        mostrarMensagem(context, 'Venda de ${brl(total)} registrada!');
                        Navigator.of(context).pop();
                      }
                    },
              icon: s.salvando
                  ? const SizedBox(
                      width: 18, height: 18, child: CircularProgressIndicator(strokeWidth: 2, color: Colors.white))
                  : const Icon(Icons.check_rounded),
              label: const Text('Finalizar venda'),
            ),
          ),
        ]),
      ]),
    );
  }

  Future<void> _escolherCliente(BuildContext context, WidgetRef ref) async {
    final vm = ref.read(novaVendaViewModelProvider.notifier);
    final escolha = await showModalBottomSheet<Object>(
      context: context,
      isScrollControlled: true,
      builder: (_) => _SeletorCliente(clientes: s.clientes),
    );
    if (!context.mounted) return;
    if (escolha is Cliente) vm.selecionarCliente(escolha);
    if (escolha == 'avulso') vm.selecionarCliente(null);
    if (escolha == 'novo') {
      final novo = await mostrarFormularioCliente(context);
      if (novo != null) await vm.cadastrarCliente(novo);
    }
  }
}

class _OpcaoPagamento extends StatelessWidget {
  const _OpcaoPagamento({required this.forma, required this.selecionada, required this.onTap});

  final String forma;
  final bool selecionada;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(14),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        padding: const EdgeInsets.symmetric(vertical: 9),
        decoration: BoxDecoration(
          color: selecionada ? AppColors.primary : AppColors.bg,
          borderRadius: BorderRadius.circular(14),
        ),
        child: Column(children: [
          Icon(iconePagamento(forma), size: 19, color: selecionada ? Colors.white : AppColors.muted),
          const SizedBox(height: 3),
          Text(forma,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w700,
                color: selecionada ? Colors.white : AppColors.ink,
              )),
        ]),
      ),
    );
  }
}

class _SeletorCliente extends StatefulWidget {
  const _SeletorCliente({required this.clientes});

  final List<Cliente> clientes;

  @override
  State<_SeletorCliente> createState() => _SeletorClienteState();
}

class _SeletorClienteState extends State<_SeletorCliente> {
  var _busca = '';

  @override
  Widget build(BuildContext context) {
    final lista = widget.clientes
        .where((c) => c.nome.toLowerCase().contains(_busca.toLowerCase()))
        .toList();
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.75,
      child: Padding(
        padding: EdgeInsets.only(bottom: MediaQuery.viewInsetsOf(context).bottom),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
            child: TextField(
              autofocus: false,
              onChanged: (t) => setState(() => _busca = t),
              decoration: const InputDecoration(hintText: 'Buscar cliente', prefixIcon: Icon(Icons.search_rounded)),
            ),
          ),
          ListTile(
            leading: const IconBadge(Icons.person_add_rounded, color: AppColors.mint),
            title: const Text('Cadastrar novo cliente', style: TextStyle(fontWeight: FontWeight.w700)),
            onTap: () => Navigator.pop(context, 'novo'),
          ),
          ListTile(
            leading: const IconBadge(Icons.person_outline_rounded, color: AppColors.subtle),
            title: const Text('Cliente avulso (sem identificação)'),
            onTap: () => Navigator.pop(context, 'avulso'),
          ),
          const Divider(),
          Expanded(
            child: ListView.builder(
              itemCount: lista.length,
              itemBuilder: (_, i) => ListTile(
                leading: Avatar(lista[i].nome, size: 40),
                title: Text(lista[i].nome, style: const TextStyle(fontWeight: FontWeight.w600)),
                subtitle: lista[i].telefone.isEmpty ? null : Text(lista[i].telefone),
                onTap: () => Navigator.pop(context, lista[i]),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
