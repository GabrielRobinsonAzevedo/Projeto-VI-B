import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../app/router.dart';
import '../../../core/services/compartilhamento_service.dart';
import '../../../core/theme/app_theme.dart';
import '../../../core/utils/formatters.dart';
import '../../../core/widgets/widgets.dart';
import '../domain/rfm.dart';
import 'cliente_form_sheet.dart';
import 'clientes_view_model.dart';
import 'segmento_visual.dart';

class ClientesScreen extends ConsumerStatefulWidget {
  const ClientesScreen({super.key});

  @override
  ConsumerState<ClientesScreen> createState() => _ClientesScreenState();
}

class _ClientesScreenState extends ConsumerState<ClientesScreen> {
  Segmento? _segmento;
  var _busca = '';

  @override
  Widget build(BuildContext context) {
    final estado = ref.watch(clientesViewModelProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('Clientes')),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Novo cliente',
        onPressed: () async {
          final novo = await mostrarFormularioCliente(context);
          if (novo == null) return;
          await ref.read(clientesViewModelProvider.notifier).salvar(novo);
          if (context.mounted) mostrarMensagem(context, '${novo.nome} cadastrado');
        },
        child: const Icon(Icons.person_add_alt_1_rounded),
      ),
      body: AsyncValueView(
        value: estado,
        data: (s) {
          final filtrados = s.clientes
              .where((c) => _segmento == null || c.segmento == _segmento)
              .where((c) => _busca.isEmpty || c.cliente.nome.toLowerCase().contains(_busca.toLowerCase()))
              .toList();
          return CustomScrollView(slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 10),
                child: TextField(
                  onChanged: (t) => setState(() => _busca = t),
                  decoration: const InputDecoration(
                    hintText: 'Buscar cliente',
                    prefixIcon: Icon(Icons.search_rounded),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 44,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  children: [
                    _chip(null, 'Todos', s.clientes.length),
                    for (final seg in Segmento.values) _chip(seg, seg.rotulo, s.contar(seg)),
                  ],
                ),
              ),
            ),
            if (_segmento != null)
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16, 12, 16, 0),
                  child: _AcaoSugerida(
                    segmento: _segmento!,
                    quantidade: filtrados.length,
                    onCampanha: () => ref.read(compartilhamentoServiceProvider).texto(
                          _segmento!.mensagem('[nome]', s.empresa.nome),
                          assunto: 'Campanha ${_segmento!.rotulo}',
                        ),
                  ),
                ),
              ),
            if (filtrados.isEmpty)
              const SliverFillRemaining(
                hasScrollBody: false,
                child: EmptyState(icon: Icons.people_outline_rounded, title: 'Nenhum cliente aqui'),
              )
            else
              SliverPadding(
                padding: const EdgeInsets.fromLTRB(16, 12, 16, 96),
                sliver: SliverList.separated(
                  itemCount: filtrados.length,
                  separatorBuilder: (_, _) => const SizedBox(height: 8),
                  itemBuilder: (_, i) => _ClienteTile(filtrados[i]),
                ),
              ),
          ]);
        },
      ),
    );
  }

  Widget _chip(Segmento? seg, String rotulo, int qtd) {
    final selecionado = _segmento == seg;
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: ChoiceChip(
        showCheckmark: false,
        selected: selecionado,
        avatar: seg == null ? null : Icon(seg.icone, size: 16, color: selecionado ? Colors.white : seg.cor),
        label: Text('$rotulo  $qtd'),
        onSelected: (_) => setState(() => _segmento = seg),
      ),
    );
  }
}

class _AcaoSugerida extends StatelessWidget {
  const _AcaoSugerida({required this.segmento, required this.quantidade, required this.onCampanha});

  final Segmento segmento;
  final int quantidade;
  final VoidCallback onCampanha;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: segmento.cor.withValues(alpha: 0.08),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: segmento.cor.withValues(alpha: 0.25)),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(children: [
          Icon(segmento.icone, color: segmento.cor),
          const SizedBox(width: 8),
          Text('${segmento.rotulo} · $quantidade clientes',
              style: TextStyle(fontWeight: FontWeight.w800, color: segmento.cor)),
        ]),
        const SizedBox(height: 6),
        Text(segmento.descricao, style: const TextStyle(color: AppColors.muted, fontSize: 13)),
        const SizedBox(height: 4),
        Text('💡 ${segmento.acao}', style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 13.5)),
        const SizedBox(height: 12),
        FilledButton.icon(
          style: FilledButton.styleFrom(backgroundColor: segmento.cor, minimumSize: const Size(0, 44)),
          onPressed: quantidade == 0 ? null : onCampanha,
          icon: const Icon(Icons.send_rounded, size: 18),
          label: const Text('Enviar campanha'),
        ),
      ]),
    );
  }
}

class _ClienteTile extends StatelessWidget {
  const _ClienteTile(this.c);

  final ClienteRfm c;

  @override
  Widget build(BuildContext context) {
    return AppCard(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
      onTap: () => context.push(Rotas.cliente(c.cliente.id!)),
      child: Row(children: [
        Avatar(c.cliente.nome),
        const SizedBox(width: 12),
        Expanded(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(c.cliente.nome, style: const TextStyle(fontWeight: FontWeight.w700)),
            const SizedBox(height: 2),
            Text(
              c.frequencia == 0
                  ? 'Ainda sem compras'
                  : 'Última compra ${haQuantosDias(c.recenciaDias)} · ${c.frequencia} compras',
              style: const TextStyle(color: AppColors.muted, fontSize: 12.5),
            ),
          ]),
        ),
        Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          Text(brlCurto(c.valor), style: const TextStyle(fontWeight: FontWeight.w800)),
          const SizedBox(height: 4),
          Pill(c.segmento.singular, color: c.segmento.cor),
        ]),
      ]),
    );
  }
}
