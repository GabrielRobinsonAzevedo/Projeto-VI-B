import 'dart:convert';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/database/database_providers.dart';
import '../../../core/services/compartilhamento_service.dart';
import '../../avaliacoes/data/avaliacoes_repository.dart';
import '../../clientes/data/clientes_repository.dart';
import '../../feriados/data/feriados_repository.dart';
import '../../produtos/data/produtos_repository.dart';
import '../../vendas/data/vendas_repository.dart';
import '../data/empresa_repository.dart';
import '../domain/empresa.dart';

part 'empresa_view_model.g.dart';

@riverpod
class EmpresaViewModel extends _$EmpresaViewModel {
  @override
  Future<Empresa> build() async {
    ref.watch(dbRevisionProvider);
    return ref.read(empresaRepositoryProvider).obter();
  }

  Future<void> salvar(Empresa e) => ref.read(empresaRepositoryProvider).salvar(e);

  /// Atualiza o calendário pela internet (BrasilAPI). Retorna quantas datas vieram.
  Future<int> sincronizarFeriados() => ref.read(feriadosRepositoryProvider).sincronizar();

  Future<void> restaurarDemonstracao() => ref.read(empresaRepositoryProvider).restaurarDemonstracao();

  Future<void> apagarDados() => ref.read(empresaRepositoryProvider).apagarDados();

  /// CSV "tidy" de vendas para análise em Python (pandas), R ou Excel.
  Future<void> exportarCsv() async {
    final csv = await ref.read(vendasRepositoryProvider).exportarCsv();
    await ref.read(compartilhamentoServiceProvider).arquivo(
          utf8.encode(csv),
          nome: 'vitrine_vendas.csv',
          mimeType: 'text/csv',
          texto: 'Vendas exportadas do Vitrine+',
        );
  }

  /// Cópia completa dos dados em JSON (gerado pelos modelos freezed/json_serializable).
  Future<void> exportarBackup() async {
    final dados = {
      'versao': 1,
      'geradoEm': DateTime.now().toIso8601String(),
      'empresa': (await ref.read(empresaRepositoryProvider).obter()).toJson(),
      'produtos': [for (final p in await ref.read(produtosRepositoryProvider).listar()) p.toJson()],
      'clientes': [for (final c in await ref.read(clientesRepositoryProvider).listar()) c.toJson()],
      'vendas': [for (final v in await ref.read(vendasRepositoryProvider).todasComItens()) v.toJson()],
      'avaliacoes': [
        for (final a in await ref.read(avaliacoesRepositoryProvider).desde(DateTime(2000))) a.toJson(),
      ],
    };
    await ref.read(compartilhamentoServiceProvider).arquivo(
          utf8.encode(const JsonEncoder.withIndent('  ').convert(dados)),
          nome: 'vitrine_backup.json',
          mimeType: 'application/json',
        );
  }
}
