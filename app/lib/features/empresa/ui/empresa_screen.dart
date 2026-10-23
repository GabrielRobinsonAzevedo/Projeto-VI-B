import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/theme/app_theme.dart';
import '../../../core/widgets/widgets.dart';
import '../../vendas/ui/vendas_screen.dart' show confirmar;
import '../domain/empresa.dart';
import 'empresa_view_model.dart';

class EmpresaScreen extends ConsumerWidget {
  const EmpresaScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final estado = ref.watch(empresaViewModelProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('Minha empresa')),
      body: AsyncValueView(
        value: estado,
        data: (empresa) => _Formulario(key: ValueKey(empresa), empresa: empresa),
      ),
    );
  }
}

class _Formulario extends ConsumerStatefulWidget {
  const _Formulario({super.key, required this.empresa});

  final Empresa empresa;

  @override
  ConsumerState<_Formulario> createState() => _FormularioState();
}

class _FormularioState extends ConsumerState<_Formulario> {
  final _form = GlobalKey<FormState>();
  late final _nome = TextEditingController(text: widget.empresa.nome);
  late final _segmento = TextEditingController(text: widget.empresa.segmento);
  late final _cidade = TextEditingController(text: widget.empresa.cidade);
  late final _instagram = TextEditingController(text: widget.empresa.instagram);
  late final _whatsapp = TextEditingController(text: widget.empresa.whatsapp);
  String? _ocupado;

  @override
  void dispose() {
    for (final c in [_nome, _segmento, _cidade, _instagram, _whatsapp]) {
      c.dispose();
    }
    super.dispose();
  }

  Future<void> _executar(String rotulo, Future<String?> Function() acao) async {
    setState(() => _ocupado = rotulo);
    try {
      final msg = await acao();
      if (mounted && msg != null) mostrarMensagem(context, msg);
    } catch (e) {
      if (mounted) mostrarMensagem(context, 'Não foi possível concluir: $e', icon: Icons.error_rounded);
    } finally {
      if (mounted) setState(() => _ocupado = null);
    }
  }

  @override
  Widget build(BuildContext context) {
    final vm = ref.read(empresaViewModelProvider.notifier);
    InputDecoration deco(String rotulo, IconData icone, {String? prefixo}) =>
        InputDecoration(labelText: rotulo, prefixIcon: Icon(icone), prefixText: prefixo);

    return Form(
      key: _form,
      child: ListView(padding: const EdgeInsets.fromLTRB(16, 4, 16, 32), children: [
        AppCard(
          child: Column(children: [
            TextFormField(
              controller: _nome,
              decoration: deco('Nome do negócio', Icons.storefront_rounded),
              validator: (v) => (v == null || v.trim().isEmpty) ? 'Informe o nome' : null,
            ),
            const SizedBox(height: 12),
            TextFormField(controller: _segmento, decoration: deco('Segmento', Icons.category_rounded)),
            const SizedBox(height: 12),
            TextFormField(controller: _cidade, decoration: deco('Cidade', Icons.location_on_rounded)),
            const SizedBox(height: 12),
            TextFormField(
              controller: _instagram,
              decoration: deco('Instagram', Icons.camera_alt_rounded, prefixo: '@'),
            ),
            const SizedBox(height: 12),
            TextFormField(
              controller: _whatsapp,
              keyboardType: TextInputType.phone,
              decoration: deco('WhatsApp', Icons.chat_rounded),
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: FilledButton(
                onPressed: () => _form.currentState!.validate()
                    ? _executar('salvar', () async {
                        await vm.salvar(Empresa(
                          nome: _nome.text.trim(),
                          segmento: _segmento.text.trim(),
                          cidade: _cidade.text.trim(),
                          instagram: _instagram.text.replaceAll('@', '').trim(),
                          whatsapp: _whatsapp.text.trim(),
                        ));
                        return 'Dados da empresa salvos';
                      })
                    : null,
                child: const Text('Salvar'),
              ),
            ),
          ]),
        ),
        const SectionHeader('Dados e análise'),
        AppCard(
          padding: const EdgeInsets.symmetric(vertical: 6),
          child: Column(children: [
            _Opcao(
              icone: Icons.table_view_rounded,
              cor: AppColors.mint,
              titulo: 'Exportar vendas (CSV)',
              subtitulo: 'Para analisar no Python, R ou Excel',
              carregando: _ocupado == 'csv',
              onTap: () => _executar('csv', () async {
                await vm.exportarCsv();
                return null;
              }),
            ),
            _Opcao(
              icone: Icons.data_object_rounded,
              cor: AppColors.primary,
              titulo: 'Backup completo (JSON)',
              subtitulo: 'Empresa, produtos, clientes, vendas e avaliações',
              carregando: _ocupado == 'json',
              onTap: () => _executar('json', () async {
                await vm.exportarBackup();
                return null;
              }),
            ),
            _Opcao(
              icone: Icons.cloud_sync_rounded,
              cor: AppColors.sky,
              titulo: 'Atualizar feriados (internet)',
              subtitulo: 'BrasilAPI · opcional, o app já tem um calendário offline',
              carregando: _ocupado == 'feriados',
              onTap: () => _executar('feriados', () async {
                final n = await vm.sincronizarFeriados();
                return '$n feriados atualizados';
              }),
            ),
          ]),
        ),
        const SectionHeader('Zona de cuidado'),
        AppCard(
          padding: const EdgeInsets.symmetric(vertical: 6),
          child: Column(children: [
            _Opcao(
              icone: Icons.restart_alt_rounded,
              cor: AppColors.amber,
              titulo: 'Restaurar dados de demonstração',
              subtitulo: 'Substitui tudo por 6 meses de vendas fictícias',
              carregando: _ocupado == 'demo',
              onTap: () async {
                if (!await confirmar(context, 'Restaurar demonstração?',
                    'Todos os dados atuais serão substituídos.', acao: 'Restaurar')) {
                  return;
                }
                await _executar('demo', () async {
                  await vm.restaurarDemonstracao();
                  return 'Dados de demonstração restaurados';
                });
              },
            ),
            _Opcao(
              icone: Icons.delete_forever_rounded,
              cor: AppColors.coral,
              titulo: 'Apagar todos os dados',
              subtitulo: 'Começar do zero com o seu negócio real',
              carregando: _ocupado == 'apagar',
              onTap: () async {
                if (!await confirmar(context, 'Apagar todos os dados?',
                    'Produtos, clientes, vendas e avaliações serão apagados deste aparelho.')) {
                  return;
                }
                await _executar('apagar', () async {
                  await vm.apagarDados();
                  return 'Dados apagados';
                });
              },
            ),
          ]),
        ),
        const SizedBox(height: 20),
        const Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Icon(Icons.offline_bolt_rounded, size: 16, color: AppColors.mint),
          SizedBox(width: 6),
          Text('Funciona 100% offline · dados salvos no aparelho (SQLite)',
              style: TextStyle(color: AppColors.muted, fontSize: 12)),
        ]),
      ]),
    );
  }
}

class _Opcao extends StatelessWidget {
  const _Opcao({
    required this.icone,
    required this.cor,
    required this.titulo,
    required this.subtitulo,
    required this.onTap,
    this.carregando = false,
  });

  final IconData icone;
  final Color cor;
  final String titulo;
  final String subtitulo;
  final VoidCallback onTap;
  final bool carregando;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: carregando ? null : onTap,
      leading: IconBadge(icone, color: cor, size: 40),
      title: Text(titulo, style: const TextStyle(fontWeight: FontWeight.w700)),
      subtitle: Text(subtitulo, style: const TextStyle(fontSize: 12.5)),
      trailing: carregando
          ? const SizedBox(width: 20, height: 20, child: CircularProgressIndicator(strokeWidth: 2))
          : const Icon(Icons.chevron_right_rounded, color: AppColors.subtle),
    );
  }
}
