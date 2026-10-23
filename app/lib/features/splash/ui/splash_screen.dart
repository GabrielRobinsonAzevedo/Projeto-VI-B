import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../app/router.dart';
import '../../../core/theme/app_theme.dart';
import '../../../core/widgets/logo.dart';
import 'splash_view_model.dart';

class SplashScreen extends ConsumerWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(splashViewModelProvider, (_, estado) {
      if (estado.hasValue) context.go(Rotas.inicio);
    });
    final estado = ref.watch(splashViewModelProvider);

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(gradient: AppColors.hero),
        child: SafeArea(
          child: Column(
            children: [
              const Spacer(flex: 3),
              const VitrineLogo(size: 104, onDark: true),
              const SizedBox(height: 26),
              const Text('Vitrine+',
                  style: TextStyle(
                      color: Colors.white, fontSize: 40, fontWeight: FontWeight.w900, letterSpacing: -1)),
              const SizedBox(height: 8),
              Text('Dados que fazem seu negócio crescer',
                  style: TextStyle(color: Colors.white.withValues(alpha: 0.82), fontSize: 16)),
              const Spacer(flex: 2),
              if (estado.hasError)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: Text('Não foi possível abrir o banco de dados.\n${estado.error}',
                      textAlign: TextAlign.center, style: const TextStyle(color: Colors.white)),
                )
              else
                const SizedBox(
                  width: 26,
                  height: 26,
                  child: CircularProgressIndicator(strokeWidth: 2.6, color: Colors.white),
                ),
              const SizedBox(height: 14),
              Text(estado.isLoading ? 'Preparando seus dados…' : '',
                  style: TextStyle(color: Colors.white.withValues(alpha: 0.7), fontSize: 13)),
              const Spacer(),
              Text('Projeto VI-B',
                  style: TextStyle(
                      color: Colors.white.withValues(alpha: 0.6), fontWeight: FontWeight.w600)),
              const SizedBox(height: 18),
            ],
          ),
        ),
      ),
    );
  }
}
