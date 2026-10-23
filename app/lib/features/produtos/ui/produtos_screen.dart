import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/theme/app_theme.dart';
import '../../../core/utils/formatters.dart';
import '../../../core/widgets/widgets.dart';
import '../../vendas/ui/vendas_screen.dart' show confirmar;
import '../domain/produto.dart';
import 'produtos_view_model.dart';

class ProdutosScreen extends ConsumerStatefulWidget {
  const ProdutosScreen({super.key});

  @override
  ConsumerState<ProdutosScreen> createState() => _ProdutosScreenState();
}

class _ProdutosScreenState extends ConsumerState<ProdutosScreen> {
  var _busca = '';

  @override
  Widget build(BuildContext context) {
    final estado = ref.watch(produtosViewModelProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('Produtos')),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Novo produto',
        onPressed: () => _editar(context, null, estado.value ?? const []),
        child: const Icon(Icons.add_rounded),
      ),
      body: AsyncValueView(
        value: estado,
        data: (produtos) {
          final filtrados = produtos
              .where((p) => p.nome.toLowerCase().contains(_busca.toLowerCase()))
              .toList();
          final baixos = produtos.where((p) => p.estoqueBaixo).length;
          return ListView(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 96),
            children: [
              TextField(
                onChanged: (t) => setState(() => _busca = t),
                decoration: const InputDecoration(hintText: 'Buscar produto', prefixIcon: Icon(Icons.search_rounded)),
              ),
              const SizedBox(height: 12),
              Row(children: [
                Pill('${produtos.length} produtos', color: AppColors.primary, icon: Icons.inventory_2_rounded),
                const SizedBox(width: 8),
                if (baixos > 0) Pill('$baixos com estoque baixo', color: AppColors.coral, icon: Icons.warning_rounded),
              ]),
              const SizedBox(height: 12),
              if (filtrados.isEmpty)
                const EmptyState(icon: Icons.inventory_2_outlined, title: 'Nenhum produto encontrado'),
              for (final p in filtrados)
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: AppCard(
                    padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
                    onTap: () => _editar(context, p, produtos),
                    child: Row(children: [
                      EmojiBox(p.emoji, size: 48),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                          Text(p.nome, style: const TextStyle(fontWeight: FontWeight.w700)),
                          const SizedBox(height: 2),
                          Text('${p.categoria} · margem ${p.margem.toStringAsFixed(0)}%',
                              style: const TextStyle(color: AppColors.muted, fontSize: 12.5)),
                        ]),
                      ),
                      Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                        Text(brl(p.preco), style: const TextStyle(fontWeight: FontWeight.w800)),
                        const SizedBox(height: 4),
                        Pill(
                          'Estoque ${p.estoque}',
                          color: p.estoqueBaixo ? AppColors.coral : AppColors.mint,
                          icon: p.estoqueBaixo ? Icons.warning_rounded : null,
                        ),
                      ]),
                    ]),
                  ),
                ),
            ],
          );
        },
      ),
    );
  }

  Future<void> _editar(BuildContext context, Produto? produto, List<Produto> todos) async {
    final categorias = {for (final p in todos) p.categoria}.toList()..sort();
    final resultado = await showModalBottomSheet<Object>(
      context: context,
      isScrollControlled: true,
      builder: (_) => _ProdutoForm(produto: produto, categorias: categorias),
    );
    if (!context.mounted || resultado == null) return;
    final vm = ref.read(produtosViewModelProvider.notifier);
    if (resultado is Produto) {
      await vm.salvar(resultado);
      if (context.mounted) mostrarMensagem(context, '${resultado.nome} salvo');
    } else if (resultado == 'arquivar' && produto != null) {
      final ok = await confirmar(context, 'Remover ${produto.nome}?',
          'O produto sai do catálogo, mas continua no histórico de vendas.', acao: 'Remover');
      if (ok) await vm.arquivar(produto);
    }
  }
}

class _ProdutoForm extends StatefulWidget {
  const _ProdutoForm({this.produto, required this.categorias});

  final Produto? produto;
  final List<String> categorias;

  @override
  State<_ProdutoForm> createState() => _ProdutoFormState();
}

class _ProdutoFormState extends State<_ProdutoForm> {
  final _form = GlobalKey<FormState>();
  late final _emoji = TextEditingController(text: widget.produto?.emoji ?? '📦');
  late final _nome = TextEditingController(text: widget.produto?.nome);
  late final _categoria = TextEditingController(text: widget.produto?.categoria);
  late final _preco = TextEditingController(text: _num(widget.produto?.preco));
  late final _custo = TextEditingController(text: _num(widget.produto?.custo));
  late final _estoque = TextEditingController(text: widget.produto?.estoque.toString());

  static String? _num(double? v) => v?.toStringAsFixed(2).replaceAll('.', ',');
  static double? _lerNum(String? t) => double.tryParse((t ?? '').replaceAll(',', '.').trim());

  @override
  void dispose() {
    for (final c in [_emoji, _nome, _categoria, _preco, _custo, _estoque]) {
      c.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final decimal = [FilteringTextInputFormatter.allow(RegExp(r'[0-9.,]'))];
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 0, 20, 20 + MediaQuery.viewInsetsOf(context).bottom),
      child: Form(
        key: _form,
        child: SingleChildScrollView(
          child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            Text(widget.produto == null ? 'Novo produto' : 'Editar produto',
                style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 16),
            Row(children: [
              SizedBox(
                width: 76,
                child: TextFormField(
                  controller: _emoji,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 24),
                  decoration: const InputDecoration(labelText: 'Ícone'),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: TextFormField(
                  controller: _nome,
                  textCapitalization: TextCapitalization.sentences,
                  decoration: const InputDecoration(labelText: 'Nome'),
                  validator: (v) => (v == null || v.trim().isEmpty) ? 'Informe o nome' : null,
                ),
              ),
            ]),
            const SizedBox(height: 12),
            TextFormField(
              controller: _categoria,
              textCapitalization: TextCapitalization.sentences,
              decoration: const InputDecoration(labelText: 'Categoria'),
              validator: (v) => (v == null || v.trim().isEmpty) ? 'Informe a categoria' : null,
            ),
            if (widget.categorias.isNotEmpty) ...[
              const SizedBox(height: 8),
              Wrap(spacing: 6, runSpacing: 6, children: [
                for (final c in widget.categorias)
                  ActionChip(label: Text(c), onPressed: () => setState(() => _categoria.text = c)),
              ]),
            ],
            const SizedBox(height: 12),
            Row(children: [
              Expanded(
                child: TextFormField(
                  controller: _preco,
                  keyboardType: const TextInputType.numberWithOptions(decimal: true),
                  inputFormatters: decimal,
                  decoration: const InputDecoration(labelText: 'Preço (R\$)'),
                  validator: (v) => (_lerNum(v) ?? -1) < 0 ? 'Preço inválido' : null,
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: TextFormField(
                  controller: _custo,
                  keyboardType: const TextInputType.numberWithOptions(decimal: true),
                  inputFormatters: decimal,
                  decoration: const InputDecoration(labelText: 'Custo (R\$)'),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: TextFormField(
                  controller: _estoque,
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  decoration: const InputDecoration(labelText: 'Estoque'),
                ),
              ),
            ]),
            const SizedBox(height: 20),
            FilledButton(
              onPressed: () {
                if (!_form.currentState!.validate()) return;
                Navigator.pop(
                  context,
                  Produto(
                    id: widget.produto?.id,
                    emoji: _emoji.text.trim().isEmpty ? '📦' : _emoji.text.trim(),
                    nome: _nome.text.trim(),
                    categoria: _categoria.text.trim(),
                    preco: _lerNum(_preco.text)!,
                    custo: _lerNum(_custo.text) ?? 0,
                    estoque: int.tryParse(_estoque.text) ?? 0,
                  ),
                );
              },
              child: const Text('Salvar'),
            ),
            if (widget.produto != null) ...[
              const SizedBox(height: 8),
              TextButton.icon(
                style: TextButton.styleFrom(foregroundColor: AppColors.coral),
                onPressed: () => Navigator.pop(context, 'arquivar'),
                icon: const Icon(Icons.delete_outline_rounded),
                label: const Text('Remover do catálogo'),
              ),
            ],
          ]),
        ),
      ),
    );
  }
}
