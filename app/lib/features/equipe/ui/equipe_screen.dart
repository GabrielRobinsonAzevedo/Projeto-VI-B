import 'package:flutter/material.dart';

import '../../../core/theme/app_theme.dart';
import '../../../core/widgets/logo.dart';
import '../../../core/widgets/widgets.dart';
import '../domain/equipe.dart';

class EquipeScreen extends StatelessWidget {
  const EquipeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Equipe')),
      body: ListView(padding: const EdgeInsets.fromLTRB(16, 4, 16, 32), children: [
        Container(
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(gradient: AppColors.hero, borderRadius: BorderRadius.circular(26)),
          child: Column(children: [
            const VitrineLogo(size: 76, onDark: true),
            const SizedBox(height: 14),
            const Text('Vitrine+',
                style: TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.w900)),
            const SizedBox(height: 4),
            const Text(projeto,
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 16)),
            const SizedBox(height: 2),
            Text(disciplinas,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white.withValues(alpha: 0.8), fontSize: 13)),
            const SizedBox(height: 14),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
              decoration: BoxDecoration(
                color: Colors.white.withValues(alpha: 0.15),
                borderRadius: BorderRadius.circular(40),
              ),
              child: const Text('$instituicao · $professor',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 12.5, fontWeight: FontWeight.w600)),
            ),
          ]),
        ),
        const SectionHeader('Integrantes'),
        for (var i = 0; i < integrantes.length; i++)
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: AppCard(
              padding: const EdgeInsets.all(14),
              child: Row(children: [
                Avatar(integrantes[i].nome, size: 48,
                    color: AppColors.categoricas[i % AppColors.categoricas.length]),
                const SizedBox(width: 14),
                Expanded(
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Text(integrantes[i].nome, style: const TextStyle(fontWeight: FontWeight.w800, fontSize: 15.5)),
                    const SizedBox(height: 2),
                    Text(integrantes[i].papel, style: const TextStyle(color: AppColors.muted, fontSize: 13)),
                  ]),
                ),
                Pill(integrantes[i].ra, color: AppColors.muted),
              ]),
            ),
          ),
        const SectionHeader('Tecnologias'),
        Wrap(spacing: 8, runSpacing: 8, children: [
          for (final t in tecnologias) Chip(label: Text(t)),
        ]),
        const SizedBox(height: 28),
        const Center(
          child: Text('Versão $versaoApp · Feito com Flutter 💙',
              style: TextStyle(color: AppColors.muted, fontSize: 12.5)),
        ),
      ]),
    );
  }
}
