import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../app/router.dart';
import '../../../core/theme/app_theme.dart';
import '../../../core/utils/formatters.dart';
import '../../../core/widgets/widgets.dart';
import '../domain/venda.dart';
import 'vendas_view_model.dart';

IconData iconePagamento(String forma) => switch (forma) {
      'Pix' => Icons.pix_rounded,
      'Crédito' => Icons.credit_card_rounded,
      'Débito' => Icons.credit_score_rounded,
      _ => Icons.payments_rounded,
    };

class VendasScreen extends ConsumerStatefulWidget {
  const VendasScreen({super.key});

  @override
  ConsumerState<VendasScreen> createState() => _VendasScreenState();
}

class _VendasScreenState extends ConsumerState<VendasScreen> {
  var _periodo = PeriodoVendas.hoje;

  @override
  Widget build(BuildContext context) {
    final estado = ref.watch(vendasViewModelProvider(_periodo));
    return Scaffold(
      appBar: AppBar(title: const Text('Vendas')),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => context.push(Rotas.novaVenda),
        icon: const Icon(Icons.add_rounded),
        label: const Text('Nova venda', style: TextStyle(fontWeight: FontWeight.w700)),
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 12),
          child: Row(children: [
            for (final p in PeriodoVendas.values) ...[
              ChoiceChip(
                label: Text(p.rotulo),
                selected: p == _periodo,
                showCheckmark: false,
                onSelected: (_) => setState(() => _periodo = p),
              ),
              const SizedBox(width: 8),
            ],
          ]),
        ),
        Expanded(
          child: AsyncValueView(
            value: estado,
            data: (s) => _ListaVendas(s),
          ),
        ),
      ]),
    );
  }
}

class _ListaVendas extends StatelessWidget {
  const _ListaVendas(this.s);

  final VendasState s;

  @override
  Widget build(BuildContext context) {
    // Agrupa por dia mantendo a ordem (mais recente primeiro).
    final grupos = <DateTime, List<Venda>>{};
    for (final v in s.vendas) {
      grupos.putIfAbsent(inicioDoDia(v.dataHora), () => []).add(v);
    }
    final itens = <Object>[_Resumo(s), for (final e in grupos.entries) ...[e.key, ...e.value]];

    if (s.vendas.isEmpty) {
      return ListView(padding: const EdgeInsets.all(16), children: [
        _Resumo(s),
        const EmptyState(
          icon: Icons.receipt_long_rounded,
          title: 'Nenhuma venda no período',
          message: 'Toque em “Nova venda” para registrar a primeira.',
        ),
      ]);
    }

    return ListView.builder(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 100),
      itemCount: itens.length,
      itemBuilder: (context, i) {
        final item = itens[i];
        if (item is Widget) return item;
        if (item is DateTime) {
          final doDia = grupos[item]!;
          final soma = doDia.fold<double>(0, (t, v) => t + v.total);
          return Padding(
            padding: const EdgeInsets.fromLTRB(4, 18, 4, 8),
            child: Row(children: [
              Text(rotuloDia(item), style: const TextStyle(fontWeight: FontWeight.w800, fontSize: 15)),
              const Spacer(),
              Text('${doDia.length} vendas · ${brl(soma)}',
                  style: const TextStyle(color: AppColors.muted, fontSize: 12.5)),
            ]),
          );
        }
        return _VendaTile(item as Venda, periodo: s.periodo);
      },
    );
  }
}

class _Resumo extends StatelessWidget {
  const _Resumo(this.s);

  final VendasState s;

  @override
  Widget build(BuildContext context) {
    Widget bloco(String rotulo, String valor) => Expanded(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(rotulo, style: const TextStyle(color: AppColors.muted, fontSize: 12.5)),
            const SizedBox(height: 2),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(valor, style: const TextStyle(fontWeight: FontWeight.w800, fontSize: 18)),
            ),
          ]),
        );
    return AppCard(
      child: Row(children: [
        const IconBadge(Icons.point_of_sale_rounded),
        const SizedBox(width: 14),
        bloco('Total', brl(s.total)),
        bloco('Vendas', inteiro(s.vendas.length)),
        bloco('Ticket médio', brl(s.ticketMedio)),
      ]),
    );
  }
}

class _VendaTile extends ConsumerWidget {
  const _VendaTile(this.venda, {required this.periodo});

  final Venda venda;
  final PeriodoVendas periodo;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: AppCard(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
        onTap: () => _detalhes(context, ref),
        child: Row(children: [
          Container(
            width: 52,
            padding: const EdgeInsets.symmetric(vertical: 8),
            decoration: BoxDecoration(color: AppColors.bg, borderRadius: BorderRadius.circular(12)),
            child: Text(hora(venda.dataHora),
                textAlign: TextAlign.center, style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 13)),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(venda.clienteNome ?? 'Cliente avulso',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: venda.clienteNome == null ? AppColors.muted : AppColors.ink,
                  )),
              const SizedBox(height: 2),
              Row(children: [
                Icon(iconePagamento(venda.formaPagamento), size: 14, color: AppColors.subtle),
                const SizedBox(width: 4),
                Text('${venda.quantidadeItens} ${venda.quantidadeItens == 1 ? 'item' : 'itens'} · ${venda.formaPagamento}',
                    style: const TextStyle(color: AppColors.muted, fontSize: 12.5)),
              ]),
            ]),
          ),
          Text(brl(venda.total), style: const TextStyle(fontWeight: FontWeight.w800)),
        ]),
      ),
    );
  }

  void _detalhes(BuildContext context, WidgetRef ref) {
    showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      builder: (context) => Consumer(builder: (context, ref, _) {
        final itens = ref.watch(itensDaVendaProvider(venda.id!));
        return Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 24),
          child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text('Venda #${venda.id}', style: Theme.of(context).textTheme.titleLarge),
            Text('${rotuloDia(venda.dataHora)} às ${hora(venda.dataHora)} · ${venda.formaPagamento}',
                style: const TextStyle(color: AppColors.muted)),
            const SizedBox(height: 16),
            itens.when(
              data: (lista) => Column(children: [
                for (final i in lista)
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6),
                    child: Row(children: [
                      EmojiBox(i.emoji, size: 38),
                      const SizedBox(width: 10),
                      Expanded(child: Text('${i.quantidade}× ${i.nome}', style: const TextStyle(fontWeight: FontWeight.w600))),
                      Text(brl(i.subtotal)),
                    ]),
                  ),
              ]),
              loading: () => const Padding(padding: EdgeInsets.all(16), child: LinearProgressIndicator()),
              error: (e, _) => Text('$e'),
            ),
            const Divider(height: 28),
            Row(children: [
              const Text('Total', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16)),
              const Spacer(),
              Text(brl(venda.total), style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 20)),
            ]),
            const SizedBox(height: 18),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton.icon(
                style: OutlinedButton.styleFrom(foregroundColor: AppColors.coral),
                icon: const Icon(Icons.delete_outline_rounded),
                label: const Text('Excluir venda'),
                onPressed: () async {
                  final ok = await confirmar(context, 'Excluir esta venda?',
                      'Os produtos voltam para o estoque. Esta ação não pode ser desfeita.');
                  if (!ok || !context.mounted) return;
                  await ref.read(vendasViewModelProvider(periodo).notifier).excluir(venda.id!);
                  if (context.mounted) {
                    Navigator.pop(context);
                    mostrarMensagem(context, 'Venda excluída');
                  }
                },
              ),
            ),
          ]),
        );
      }),
    );
  }
}

Future<bool> confirmar(BuildContext context, String titulo, String mensagem, {String acao = 'Excluir'}) async {
  final r = await showDialog<bool>(
    context: context,
    builder: (context) => AlertDialog(
      title: Text(titulo),
      content: Text(mensagem),
      actions: [
        TextButton(onPressed: () => Navigator.pop(context, false), child: const Text('Cancelar')),
        FilledButton(
          style: FilledButton.styleFrom(backgroundColor: AppColors.coral, minimumSize: const Size(0, 44)),
          onPressed: () => Navigator.pop(context, true),
          child: Text(acao),
        ),
      ],
    ),
  );
  return r ?? false;
}
