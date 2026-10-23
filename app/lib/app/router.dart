import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../features/avaliacoes/ui/avaliacao_screen.dart';
import '../features/clientes/ui/cliente_detalhe_screen.dart';
import '../features/clientes/ui/clientes_screen.dart';
import '../features/dashboard/ui/dashboard_screen.dart';
import '../features/divulgar/ui/divulgar_screen.dart';
import '../features/empresa/ui/empresa_screen.dart';
import '../features/equipe/ui/equipe_screen.dart';
import '../features/insights/ui/insights_screen.dart';
import '../features/produtos/ui/produtos_screen.dart';
import '../features/shell/ui/home_shell.dart';
import '../features/splash/ui/splash_screen.dart';
import '../features/vendas/ui/nova_venda_screen.dart';
import '../features/vendas/ui/vendas_screen.dart';

part 'router.g.dart';

abstract final class Rotas {
  static const splash = '/';
  static const inicio = '/inicio';
  static const vendas = '/vendas';
  static const clientes = '/clientes';
  static const insights = '/insights';
  static const divulgar = '/divulgar';
  static const novaVenda = '/nova-venda';
  static const produtos = '/produtos';
  static const avaliacao = '/avaliacao';
  static const empresa = '/empresa';
  static const equipe = '/equipe';
  static String cliente(int id) => '/clientes/$id';
}

final _rootKey = GlobalKey<NavigatorState>();

@Riverpod(keepAlive: true)
GoRouter router(Ref ref) {
  return GoRouter(
    navigatorKey: _rootKey,
    initialLocation: Rotas.splash,
    routes: [
      GoRoute(path: Rotas.splash, builder: (_, _) => const SplashScreen()),
      StatefulShellRoute.indexedStack(
        builder: (_, _, shell) => HomeShell(shell: shell),
        branches: [
          StatefulShellBranch(routes: [
            GoRoute(path: Rotas.inicio, builder: (_, _) => const DashboardScreen()),
          ]),
          StatefulShellBranch(routes: [
            GoRoute(path: Rotas.vendas, builder: (_, _) => const VendasScreen()),
          ]),
          StatefulShellBranch(routes: [
            GoRoute(
              path: Rotas.clientes,
              builder: (_, _) => const ClientesScreen(),
              routes: [
                GoRoute(
                  path: ':id',
                  parentNavigatorKey: _rootKey,
                  builder: (_, state) =>
                      ClienteDetalheScreen(clienteId: int.parse(state.pathParameters['id']!)),
                ),
              ],
            ),
          ]),
          StatefulShellBranch(routes: [
            GoRoute(path: Rotas.insights, builder: (_, _) => const InsightsScreen()),
          ]),
          StatefulShellBranch(routes: [
            GoRoute(path: Rotas.divulgar, builder: (_, _) => const DivulgarScreen()),
          ]),
        ],
      ),
      GoRoute(path: Rotas.novaVenda, builder: (_, _) => const NovaVendaScreen()),
      GoRoute(path: Rotas.produtos, builder: (_, _) => const ProdutosScreen()),
      GoRoute(path: Rotas.avaliacao, builder: (_, _) => const AvaliacaoScreen()),
      GoRoute(path: Rotas.empresa, builder: (_, _) => const EmpresaScreen()),
      GoRoute(path: Rotas.equipe, builder: (_, _) => const EquipeScreen()),
    ],
  );
}
