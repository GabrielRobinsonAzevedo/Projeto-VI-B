import 'package:flutter/material.dart';

import '../domain/cliente.dart';

/// Formulário de cadastro/edição. Devolve o cliente preenchido (sem salvar).
Future<Cliente?> mostrarFormularioCliente(BuildContext context, {Cliente? cliente}) {
  return showModalBottomSheet<Cliente>(
    context: context,
    isScrollControlled: true,
    builder: (_) => _ClienteForm(cliente: cliente),
  );
}

class _ClienteForm extends StatefulWidget {
  const _ClienteForm({this.cliente});

  final Cliente? cliente;

  @override
  State<_ClienteForm> createState() => _ClienteFormState();
}

class _ClienteFormState extends State<_ClienteForm> {
  final _form = GlobalKey<FormState>();
  late final _nome = TextEditingController(text: widget.cliente?.nome);
  late final _telefone = TextEditingController(text: widget.cliente?.telefone);
  late final _instagram = TextEditingController(text: widget.cliente?.instagram);

  @override
  void dispose() {
    _nome.dispose();
    _telefone.dispose();
    _instagram.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 0, 20, 20 + MediaQuery.viewInsetsOf(context).bottom),
      child: Form(
        key: _form,
        child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Text(widget.cliente == null ? 'Novo cliente' : 'Editar cliente',
              style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(height: 16),
          TextFormField(
            controller: _nome,
            autofocus: true,
            textCapitalization: TextCapitalization.words,
            decoration: const InputDecoration(labelText: 'Nome', prefixIcon: Icon(Icons.person_rounded)),
            validator: (v) => (v == null || v.trim().isEmpty) ? 'Informe o nome' : null,
          ),
          const SizedBox(height: 12),
          TextFormField(
            controller: _telefone,
            keyboardType: TextInputType.phone,
            decoration: const InputDecoration(labelText: 'WhatsApp (opcional)', prefixIcon: Icon(Icons.phone_rounded)),
          ),
          const SizedBox(height: 12),
          TextFormField(
            controller: _instagram,
            decoration: const InputDecoration(
                labelText: 'Instagram (opcional)', prefixIcon: Icon(Icons.alternate_email_rounded)),
          ),
          const SizedBox(height: 20),
          FilledButton(
            onPressed: () {
              if (!_form.currentState!.validate()) return;
              Navigator.pop(
                context,
                Cliente(
                  id: widget.cliente?.id,
                  nome: _nome.text.trim(),
                  telefone: _telefone.text.trim(),
                  instagram: _instagram.text.trim(),
                  criadoEm: widget.cliente?.criadoEm ?? DateTime.now(),
                ),
              );
            },
            child: const Text('Salvar'),
          ),
        ]),
      ),
    );
  }
}
