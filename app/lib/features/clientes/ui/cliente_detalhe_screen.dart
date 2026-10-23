import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/services/compartilhamento_service.dart';
import '../../../core/theme/app_theme.dart';
import '../../../core/utils/formatters.dart';
import '../../../core/widgets/widgets.dart';
import '../../vendas/ui/vendas_screen.dart';
import 'cliente_form_sheet.dart';
import 'clientes_view_model.dart';
import 'segmento_visual.dart';

class ClienteDetalheScreen extends ConsumerWidget {
  const ClienteDetalheScreen({super.key, required this.clienteId});

  final int clienteId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final estado = ref.watch(clienteDetalheViewModelProvider(clienteId));
    return Scaffold(
      appBar: AppBar(
        actions: [
          if (estado.hasValue)
            IconButton(
              tooltip: 'Editar',
              icon: const Icon(Icons.edit_rounded),
              onPressed: () async {
                final editado = await mostrarFormularioCliente(context, cliente: estado.value!.rfm.cliente);
                if (editado != null) await ref.read(clientesViewModelProvider.notifier).salvar(editado);
              },
            ),
        ],
      ),
      body: AsyncValueView(
        value: estado,
        data: (s) {
          final c = s.rfm;
          final seg = c.segmento;
          return ListView(padding: const EdgeInsets.fromLTRB(16, 0, 16, 32), children: [
            Center(child: Avatar(c.cliente.nome, size: 84, color: seg.cor)),
            const SizedBox(height: 12),
            Text(c.cliente.nome,
                textAlign: TextAlign.center, style: Theme.of(context).textTheme.headlineMedium?.copyWith(fontSize: 26)),
            const SizedBox(height: 6),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Pill(seg.singular, color: seg.cor, icon: seg.icone),
              if (c.cliente.telefone.isNotEmpty) ...[
                const SizedBox(width: 8),
                Pill(c.cliente.telefone, color: AppColors.muted, icon: Icons.phone_rounded),
              ],
            ]),
            const SizedBox(height: 20),
            Row(children: [
              Expanded(child: _Stat('Recência', c.frequencia == 0 ? '—' : haQuantosDias(c.recenciaDias))),
              const SizedBox(width: 10),
              Expanded(child: _Stat('Frequência', '${c.frequencia} compras')),
              const SizedBox(width: 10),
              Expanded(child: _Stat('Valor', brlCurto(c.valor))),
            ]),
            const SizedBox(height: 14),
            AppCard(
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                const Text('Por que este segmento?', style: TextStyle(fontWeight: FontWeight.w800, fontSize: 16)),
                const SizedBox(height: 4),
                Text(seg.descricao, style: const TextStyle(color: AppColors.muted)),
                const SizedBox(height: 14),
                _Nota('R · Recência', c.r, AppColors.primary),
                _Nota('F · Frequência', c.f, AppColors.mint),
                _Nota('M · Valor monetário', c.m, AppColors.amber),
              ]),
            ),
            const SizedBox(height: 14),
            Container(
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                color: seg.cor.withValues(alpha: 0.08),
                borderRadius: BorderRadius.circular(22),
                border: Border.all(color: seg.cor.withValues(alpha: 0.25)),
              ),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Row(children: [
                  Icon(Icons.tips_and_updates_rounded, color: seg.cor),
                  const SizedBox(width: 8),
                  const Text('Ação recomendada', style: TextStyle(fontWeight: FontWeight.w800, fontSize: 16)),
                ]),
                const SizedBox(height: 6),
                Text(seg.acao),
                const SizedBox(height: 12),
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(color: AppColors.surface, borderRadius: BorderRadius.circular(14)),
                  child: Text(seg.mensagem(c.cliente.nome, s.empresa.nome),
                      style: const TextStyle(fontStyle: FontStyle.italic, height: 1.35)),
                ),
                const SizedBox(height: 12),
                FilledButton.icon(
                  style: FilledButton.styleFrom(backgroundColor: seg.cor, minimumSize: const Size.fromHeight(48)),
                  onPressed: () => ref
                      .read(compartilhamentoServiceProvider)
                      .texto(seg.mensagem(c.cliente.nome, s.empresa.nome)),
                  icon: const Icon(Icons.send_rounded, size: 18),
                  label: const Text('Enviar mensagem'),
                ),
              ]),
            ),
            const SectionHeader('Histórico de compras'),
            if (s.historico.isEmpty)
              const AppCard(child: Text('Nenhuma compra registrada.', style: TextStyle(color: AppColors.muted)))
            else
              AppCard(
                padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 4),
                child: Column(children: [
                  for (final v in s.historico.take(15))
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: IconBadge(iconePagamento(v.formaPagamento), size: 38),
                      title: Text('${rotuloDia(v.dataHora)} · ${hora(v.dataHora)}',
                          style: const TextStyle(fontWeight: FontWeight.w600)),
                      subtitle: Text('${v.quantidadeItens} itens · ${v.formaPagamento}'),
                      trailing: Text(brl(v.total), style: const TextStyle(fontWeight: FontWeight.w800)),
                    ),
                ]),
              ),
          ]);
        },
      ),
    );
  }
}

class _Stat extends StatelessWidget {
  const _Stat(this.rotulo, this.valor);

  final String rotulo;
  final String valor;

  @override
  Widget build(BuildContext context) {
    return AppCard(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
      child: Column(children: [
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(valor, style: const TextStyle(fontWeight: FontWeight.w800, fontSize: 16)),
        ),
        const SizedBox(height: 2),
        Text(rotulo, style: const TextStyle(color: AppColors.muted, fontSize: 12)),
      ]),
    );
  }
}

class _Nota extends StatelessWidget {
  const _Nota(this.rotulo, this.nota, this.cor);

  final String rotulo;
  final int nota;
  final Color cor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(children: [
        SizedBox(width: 140, child: Text(rotulo, style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 13))),
        Expanded(
          child: Row(children: [
            for (var i = 1; i <= 5; i++)
              Expanded(
                child: Container(
                  height: 8,
                  margin: const EdgeInsets.only(right: 4),
                  decoration: BoxDecoration(
                    color: i <= nota ? cor : AppColors.bg,
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
              ),
          ]),
        ),
        const SizedBox(width: 6),
        Text('$nota/5', style: const TextStyle(fontWeight: FontWeight.w800, fontSize: 13)),
      ]),
    );
  }
}
