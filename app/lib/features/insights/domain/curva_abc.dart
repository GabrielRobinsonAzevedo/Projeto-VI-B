import 'package:freezed_annotation/freezed_annotation.dart';

part 'curva_abc.freezed.dart';

@freezed
abstract class ProdutoVendido with _$ProdutoVendido {
  const ProdutoVendido._();

  const factory ProdutoVendido({
    required int produtoId,
    required String nome,
    @Default('📦') String emoji,
    @Default('') String categoria,
    required int quantidade,
    required double receita,
    @Default(0) double custo,
  }) = _ProdutoVendido;

  double get lucro => receita - custo;
}

@freezed
abstract class ItemAbc with _$ItemAbc {
  const factory ItemAbc({
    required ProdutoVendido produto,
    required String classe,
    required double participacao,
    required double acumulado,
  }) = _ItemAbc;
}

/// Curva ABC (Princípio de Pareto) pela receita.
///
/// Os produtos são ordenados do maior para o menor faturamento. Um produto é
/// classe **A** enquanto a participação acumulada *antes dele* for menor que
/// [limiteA] (80%), **B** até [limiteB] (95%) e **C** no restante.
List<ItemAbc> curvaAbc(
  List<ProdutoVendido> produtos, {
  double limiteA = 80,
  double limiteB = 95,
}) {
  final ordenados = [...produtos]..sort((a, b) => b.receita.compareTo(a.receita));
  final total = ordenados.fold<double>(0, (s, p) => s + p.receita);
  if (total <= 0) return const [];

  var acumulado = 0.0;
  return [
    for (final p in ordenados)
      () {
        final antes = acumulado;
        final participacao = p.receita / total * 100;
        acumulado += participacao;
        final classe = antes < limiteA ? 'A' : (antes < limiteB ? 'B' : 'C');
        return ItemAbc(produto: p, classe: classe, participacao: participacao, acumulado: acumulado);
      }(),
  ];
}

/// Soma da participação na receita por classe ('A', 'B', 'C').
Map<String, double> participacaoPorClasse(List<ItemAbc> itens) {
  final mapa = {'A': 0.0, 'B': 0.0, 'C': 0.0};
  for (final i in itens) {
    mapa[i.classe] = mapa[i.classe]! + i.participacao;
  }
  return mapa;
}
