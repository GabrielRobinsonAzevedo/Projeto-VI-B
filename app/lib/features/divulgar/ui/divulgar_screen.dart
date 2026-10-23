import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../../../core/theme/app_theme.dart';
import '../../../core/utils/formatters.dart';
import '../../../core/widgets/widgets.dart';
import '../../clientes/domain/rfm.dart';
import '../../clientes/ui/segmento_visual.dart';
import '../../produtos/domain/produto.dart';
import 'divulgar_view_model.dart';
import 'widgets/post_card.dart';

enum _Aba { post, qr, mensagens }

class DivulgarScreen extends ConsumerStatefulWidget {
  const DivulgarScreen({super.key});

  @override
  ConsumerState<DivulgarScreen> createState() => _DivulgarScreenState();
}

class _DivulgarScreenState extends ConsumerState<DivulgarScreen> {
  var _aba = _Aba.post;

  @override
  Widget build(BuildContext context) {
    final estado = ref.watch(divulgarViewModelProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('Divulgar')),
      body: AsyncValueView(
        value: estado,
        data: (s) => ListView(padding: const EdgeInsets.fromLTRB(16, 0, 16, 32), children: [
          SegmentedButton<_Aba>(
            showSelectedIcon: false,
            segments: const [
              ButtonSegment(value: _Aba.post, label: Text('Post')),
              ButtonSegment(value: _Aba.qr, label: Text('QR Code')),
              ButtonSegment(value: _Aba.mensagens, label: Text('Mensagens')),
            ],
            selected: {_aba},
            onSelectionChanged: (v) => setState(() => _aba = v.first),
          ),
          const SizedBox(height: 16),
          switch (_aba) {
            _Aba.post => _GeradorPost(s),
            _Aba.qr => _GeradorQr(s),
            _Aba.mensagens => _Mensagens(s),
          },
        ]),
      ),
    );
  }
}

/// Converte um widget dentro de [RepaintBoundary] em PNG.
Future<Uint8List?> _capturar(GlobalKey chave, {double escala = 3}) async {
  final boundary = chave.currentContext?.findRenderObject() as RenderRepaintBoundary?;
  if (boundary == null) return null;
  final imagem = await boundary.toImage(pixelRatio: escala);
  final bytes = await imagem.toByteData(format: ui.ImageByteFormat.png);
  return bytes?.buffer.asUint8List();
}

class _GeradorPost extends ConsumerStatefulWidget {
  const _GeradorPost(this.s);

  final DivulgarState s;

  @override
  ConsumerState<_GeradorPost> createState() => _GeradorPostState();
}

class _GeradorPostState extends ConsumerState<_GeradorPost> {
  final _arte = GlobalKey();
  var _modelo = ModeloPost.oferta;
  Produto? _produto;
  double _desconto = 15;
  late final _titulo = TextEditingController(text: _modelo.tituloPadrao);
  var _enviando = false;

  @override
  void dispose() {
    _titulo.dispose();
    super.dispose();
  }

  Produto? get _produtoAtual {
    final s = widget.s;
    if (_produto != null && s.produtos.any((p) => p.id == _produto!.id)) return _produto;
    if (s.maisVendidos.isNotEmpty) {
      final id = s.maisVendidos.first.produtoId;
      for (final p in s.produtos) {
        if (p.id == id) return p;
      }
    }
    return s.produtos.isEmpty ? null : s.produtos.first;
  }

  @override
  Widget build(BuildContext context) {
    final s = widget.s;
    final produto = _produtoAtual;
    return Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
      Row(children: [
        for (final m in ModeloPost.values) ...[
          ChoiceChip(
            showCheckmark: false,
            avatar: Icon(m.icone, size: 16, color: _modelo == m ? Colors.white : m.cores.first),
            label: Text(m.rotulo),
            selected: _modelo == m,
            onSelected: (_) => setState(() {
              _modelo = m;
              _titulo.text = m.tituloPadrao;
            }),
          ),
          const SizedBox(width: 8),
        ],
      ]),
      const SizedBox(height: 14),
      ClipRRect(
        borderRadius: BorderRadius.circular(24),
        child: RepaintBoundary(
          key: _arte,
          child: PostCard(
            modelo: _modelo,
            empresa: s.empresa,
            titulo: _titulo.text,
            produto: produto,
            desconto: _modelo == ModeloPost.oferta ? _desconto : 0,
            ranking: s.maisVendidos,
          ),
        ),
      ),
      const SizedBox(height: 16),
      AppCard(
        child: Column(children: [
          TextField(
            controller: _titulo,
            maxLength: 40,
            onChanged: (_) => setState(() {}),
            decoration: const InputDecoration(labelText: 'Título do post', counterText: ''),
          ),
          if (_modelo != ModeloPost.maisPedidos) ...[
            const SizedBox(height: 12),
            DropdownButtonFormField<int>(
              initialValue: produto?.id,
              isExpanded: true,
              decoration: const InputDecoration(labelText: 'Produto em destaque'),
              items: [
                for (final p in s.produtos)
                  DropdownMenuItem(value: p.id, child: Text('${p.emoji}  ${p.nome}')),
              ],
              onChanged: (id) => setState(() => _produto = s.produtos.firstWhere((p) => p.id == id)),
            ),
          ],
          if (_modelo == ModeloPost.oferta) ...[
            const SizedBox(height: 12),
            Row(children: [
              const Text('Desconto', style: TextStyle(fontWeight: FontWeight.w600)),
              Expanded(
                child: Slider(
                  value: _desconto,
                  max: 50,
                  divisions: 10,
                  label: '${_desconto.toStringAsFixed(0)}%',
                  onChanged: (v) => setState(() => _desconto = v),
                ),
              ),
              Pill('${_desconto.toStringAsFixed(0)}%'),
            ]),
          ],
        ]),
      ),
      const SizedBox(height: 12),
      if (s.horariosPost.isNotEmpty)
        _Dica(
          icone: Icons.schedule_rounded,
          cor: AppColors.sky,
          texto: 'Melhor horário para postar: ${s.horariosPost.map((h) => '${h}h').join(' e ')} '
              '(1h antes dos picos de venda).',
        ),
      if (s.proximasDatas.isNotEmpty) ...[
        const SizedBox(height: 8),
        _Dica(
          icone: Icons.celebration_rounded,
          cor: AppColors.pink,
          texto: 'Próximas datas: ${s.proximasDatas.map((f) => '${f.nome} (${dataCurta(f.data)})').join(' · ')}',
        ),
      ],
      const SizedBox(height: 16),
      FilledButton.icon(
        onPressed: _enviando
            ? null
            : () async {
                setState(() => _enviando = true);
                try {
                  final png = await _capturar(_arte);
                  if (png == null) return;
                  final legenda = _modelo == ModeloPost.maisPedidos
                      ? '${_titulo.text} 🏆 Qual é o seu favorito? ${s.empresa.arroba}'
                      : '${_titulo.text}: ${produto?.nome ?? ''} ${produto?.emoji ?? ''} ${s.empresa.arroba}';
                  await ref
                      .read(divulgarViewModelProvider.notifier)
                      .compartilharImagem(png, nome: 'post_vitrine.png', legenda: legenda);
                } finally {
                  if (mounted) setState(() => _enviando = false);
                }
              },
        icon: const Icon(Icons.ios_share_rounded),
        label: const Text('Compartilhar imagem'),
      ),
    ]);
  }
}

class _Dica extends StatelessWidget {
  const _Dica({required this.icone, required this.cor, required this.texto});

  final IconData icone;
  final Color cor;
  final String texto;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(color: cor.withValues(alpha: 0.08), borderRadius: BorderRadius.circular(16)),
      child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Icon(icone, color: cor, size: 20),
        const SizedBox(width: 10),
        Expanded(child: Text(texto, style: const TextStyle(fontSize: 13, height: 1.35))),
      ]),
    );
  }
}

class _GeradorQr extends ConsumerStatefulWidget {
  const _GeradorQr(this.s);

  final DivulgarState s;

  @override
  ConsumerState<_GeradorQr> createState() => _GeradorQrState();
}

class _GeradorQrState extends ConsumerState<_GeradorQr> {
  final _cartao = GlobalKey();
  var _whatsapp = false;

  @override
  Widget build(BuildContext context) {
    final e = widget.s.empresa;
    final link = _whatsapp ? e.linkWhatsapp : e.linkInstagram;
    return Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
      Row(children: [
        ChoiceChip(
          label: const Text('Instagram'),
          selected: !_whatsapp,
          showCheckmark: false,
          onSelected: (_) => setState(() => _whatsapp = false),
        ),
        const SizedBox(width: 8),
        ChoiceChip(
          label: const Text('WhatsApp'),
          selected: _whatsapp,
          showCheckmark: false,
          onSelected: (_) => setState(() => _whatsapp = true),
        ),
      ]),
      const SizedBox(height: 16),
      if (link.isEmpty)
        const AppCard(
          child: EmptyState(
            icon: Icons.link_off_rounded,
            title: 'Cadastre o link primeiro',
            message: 'Informe o Instagram e o WhatsApp em Início › Minha empresa.',
          ),
        )
      else ...[
        RepaintBoundary(
          key: _cartao,
          child: QrCard(
            empresa: e,
            titulo: _whatsapp ? 'Peça pelo WhatsApp' : 'Siga a gente no Instagram ${e.arroba}',
            qr: QrImageView(
              data: link,
              size: 200,
              backgroundColor: Colors.white,
              eyeStyle: const QrEyeStyle(eyeShape: QrEyeShape.circle, color: AppColors.primaryDark),
              dataModuleStyle:
                  const QrDataModuleStyle(dataModuleShape: QrDataModuleShape.circle, color: AppColors.ink),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Text(link, textAlign: TextAlign.center, style: const TextStyle(color: AppColors.muted, fontSize: 12.5)),
        const SizedBox(height: 16),
        FilledButton.icon(
          onPressed: () async {
            final png = await _capturar(_cartao);
            if (png == null) return;
            await ref
                .read(divulgarViewModelProvider.notifier)
                .compartilharImagem(png, nome: 'qrcode_vitrine.png');
          },
          icon: const Icon(Icons.print_rounded),
          label: const Text('Compartilhar para imprimir'),
        ),
      ],
    ]);
  }
}

class _Mensagens extends ConsumerWidget {
  const _Mensagens(this.s);

  final DivulgarState s;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final segmentos = [Segmento.emRisco, Segmento.perdidos, Segmento.novos, Segmento.campeoes, Segmento.fieis, Segmento.promissores];
    return Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
      const Text(
        'Mensagens prontas para cada grupo de clientes (análise RFM). '
        'Toque em enviar e escolha o WhatsApp.',
        style: TextStyle(color: AppColors.muted, height: 1.35),
      ),
      const SizedBox(height: 12),
      for (final seg in segmentos)
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: AppCard(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(children: [
                IconBadge(seg.icone, color: seg.cor, size: 38),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(seg.rotulo, style: const TextStyle(fontWeight: FontWeight.w800, fontSize: 15.5)),
                ),
                Pill('${s.segmentos[seg]!.length} clientes', color: seg.cor),
              ]),
              const SizedBox(height: 10),
              Text(seg.mensagem('[nome]', s.empresa.nome),
                  style: const TextStyle(fontStyle: FontStyle.italic, height: 1.35, fontSize: 13.5)),
              const SizedBox(height: 10),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton.icon(
                  onPressed: () => ref
                      .read(divulgarViewModelProvider.notifier)
                      .compartilharTexto(seg.mensagem('[nome]', s.empresa.nome)),
                  icon: const Icon(Icons.send_rounded, size: 18),
                  label: const Text('Enviar'),
                ),
              ),
            ]),
          ),
        ),
    ]);
  }
}
