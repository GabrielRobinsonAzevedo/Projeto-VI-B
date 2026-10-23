import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/theme/app_theme.dart';
import '../../../core/widgets/widgets.dart';
import '../../clientes/domain/cliente.dart';
import 'avaliacao_view_model.dart';

/// Tela pensada para ser entregue ao cliente no balcão (pesquisa NPS).
class AvaliacaoScreen extends ConsumerStatefulWidget {
  const AvaliacaoScreen({super.key});

  @override
  ConsumerState<AvaliacaoScreen> createState() => _AvaliacaoScreenState();
}

class _AvaliacaoScreenState extends ConsumerState<AvaliacaoScreen> {
  int? _nota;
  Cliente? _cliente;
  final _comentario = TextEditingController();

  @override
  void dispose() {
    _comentario.dispose();
    super.dispose();
  }

  static Color _cor(int n) => n >= 9 ? AppColors.mint : (n >= 7 ? AppColors.amber : AppColors.coral);

  @override
  Widget build(BuildContext context) {
    final estado = ref.watch(avaliacaoViewModelProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('Avaliação')),
      body: AsyncValueView(
        value: estado,
        data: (s) => ListView(padding: const EdgeInsets.fromLTRB(20, 8, 20, 32), children: [
          const Center(child: IconBadge(Icons.star_rounded, color: AppColors.amber, size: 64)),
          const SizedBox(height: 18),
          Text(
            'De 0 a 10, quanto você recomendaria o ${s.empresa.nome} a um amigo?',
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w800, height: 1.25, letterSpacing: -0.3),
          ),
          const SizedBox(height: 24),
          LayoutBuilder(builder: (context, c) {
            final lado = (c.maxWidth - 5 * 8) / 6;
            return Wrap(
              alignment: WrapAlignment.center,
              spacing: 8,
              runSpacing: 8,
              children: [
                for (var n = 0; n <= 10; n++)
                  GestureDetector(
                    onTap: () => setState(() => _nota = n),
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 160),
                      width: lado,
                      height: lado,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: _nota == n ? _cor(n) : _cor(n).withValues(alpha: 0.1),
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(color: _cor(n).withValues(alpha: _nota == n ? 1 : 0.3), width: 1.5),
                      ),
                      child: Text('$n',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                            color: _nota == n ? Colors.white : _cor(n),
                          )),
                    ),
                  ),
              ],
            );
          }),
          const SizedBox(height: 8),
          const Row(children: [
            Text('😞 Nada provável', style: TextStyle(color: AppColors.muted, fontSize: 12)),
            Spacer(),
            Text('Muito provável 😍', style: TextStyle(color: AppColors.muted, fontSize: 12)),
          ]),
          const SizedBox(height: 24),
          TextField(
            controller: _comentario,
            minLines: 3,
            maxLines: 5,
            textCapitalization: TextCapitalization.sentences,
            decoration: const InputDecoration(hintText: 'Quer deixar um comentário? (opcional)'),
          ),
          const SizedBox(height: 12),
          DropdownButtonFormField<Cliente?>(
            initialValue: _cliente,
            isExpanded: true,
            decoration: const InputDecoration(labelText: 'Cliente (opcional)', prefixIcon: Icon(Icons.person_rounded)),
            items: [
              const DropdownMenuItem(value: null, child: Text('Anônimo')),
              for (final c in s.clientes) DropdownMenuItem(value: c, child: Text(c.nome)),
            ],
            onChanged: (c) => setState(() => _cliente = c),
          ),
          const SizedBox(height: 24),
          FilledButton.icon(
            onPressed: _nota == null
                ? null
                : () async {
                    await ref.read(avaliacaoViewModelProvider.notifier).enviar(
                          nota: _nota!,
                          comentario: _comentario.text,
                          clienteId: _cliente?.id,
                        );
                    if (!context.mounted) return;
                    mostrarMensagem(context, 'Obrigado pela avaliação! 💜');
                    setState(() {
                      _nota = null;
                      _cliente = null;
                      _comentario.clear();
                    });
                  },
            icon: const Icon(Icons.send_rounded),
            label: const Text('Enviar avaliação'),
          ),
        ]),
      ),
    );
  }
}
