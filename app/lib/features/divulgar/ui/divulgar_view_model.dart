import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/database/database_providers.dart';
import '../../../core/services/compartilhamento_service.dart';
import '../../clientes/domain/rfm.dart';
import '../../empresa/data/empresa_repository.dart';
import '../../empresa/domain/empresa.dart';
import '../../feriados/domain/feriado.dart';
import '../../insights/domain/curva_abc.dart';
import '../../insights/ui/insights_view_model.dart';
import '../../produtos/data/produtos_repository.dart';
import '../../produtos/domain/produto.dart';

part 'divulgar_view_model.freezed.dart';
part 'divulgar_view_model.g.dart';

@freezed
abstract class DivulgarState with _$DivulgarState {
  const factory DivulgarState({
    required Empresa empresa,
    required List<Produto> produtos,
    required List<ProdutoVendido> maisVendidos,

    /// Horários sugeridos para postar (1h antes dos dois maiores picos).
    required List<int> horariosPost,
    required Map<Segmento, List<ClienteRfm>> segmentos,
    required List<Feriado> proximasDatas,
  }) = _DivulgarState;
}

@riverpod
class DivulgarViewModel extends _$DivulgarViewModel {
  @override
  Future<DivulgarState> build() async {
    ref.watch(dbRevisionProvider);
    final analise = await ref.watch(insightsViewModelProvider.future);

    final picos = analise.vendasPorHora.entries.toList()..sort((a, b) => b.value.compareTo(a.value));
    final horarios = <int>[];
    for (final p in picos) {
      // Evita sugerir dois horários colados (ex.: 7h e 8h).
      if (horarios.every((h) => (h - (p.key - 1)).abs() > 2)) horarios.add((p.key - 1).clamp(0, 23));
      if (horarios.length == 2) break;
    }
    horarios.sort();

    final porSegmento = <Segmento, List<ClienteRfm>>{for (final s in Segmento.values) s: []};
    for (final c in analise.clientes) {
      porSegmento[c.segmento]!.add(c);
    }

    return DivulgarState(
      empresa: await ref.read(empresaRepositoryProvider).obter(),
      produtos: await ref.read(produtosRepositoryProvider).listar(),
      maisVendidos: analise.produtos30.take(3).toList(),
      horariosPost: horarios,
      segmentos: porSegmento,
      proximasDatas: analise.proximasDatas.take(4).toList(),
    );
  }

  Future<void> compartilharImagem(Uint8List png, {required String nome, String? legenda}) =>
      ref.read(compartilhamentoServiceProvider).arquivo(png, nome: nome, mimeType: 'image/png', texto: legenda);

  Future<void> compartilharTexto(String texto) => ref.read(compartilhamentoServiceProvider).texto(texto);
}
