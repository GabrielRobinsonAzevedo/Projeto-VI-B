import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/utils/formatters.dart';
import '../../avaliacoes/domain/nps.dart';
import '../../feriados/domain/feriado.dart';
import '../../produtos/domain/produto.dart';
import 'curva_abc.dart';
import 'series.dart';

part 'insights_engine.freezed.dart';

enum TipoInsight {
  melhorDia,
  diaFraco,
  horarioPico,
  clientesEmRisco,
  produtoEmAlta,
  produtoEmQueda,
  maiorLucro,
  estoqueBaixo,
  tendencia,
  satisfacao,
  feriado,
}

@freezed
abstract class Insight with _$Insight {
  const factory Insight({
    required TipoInsight tipo,
    required String titulo,
    required String texto,

    /// 0–100: quanto maior, mais acima aparece no app.
    required int prioridade,
  }) = _Insight;
}

@freezed
abstract class VariacaoProduto with _$VariacaoProduto {
  const factory VariacaoProduto({
    required ProdutoVendido atual,
    required double receitaAnterior,
  }) = _VariacaoProduto;
}

/// Tudo que o motor de regras precisa (já calculado pelos repositórios).
@freezed
abstract class DadosInsights with _$DadosInsights {
  const factory DadosInsights({
    required DateTime hoje,

    /// Índice sazonal (1,0 = média) de segunda a domingo.
    required List<double> fatorSemana,

    /// Hora (0–23) → quantidade de vendas.
    required Map<int, int> vendasPorHora,
    required int clientesEmRisco,
    required List<VariacaoProduto> variacoes,
    required List<ProdutoVendido> produtosPeriodo,
    required List<Produto> estoqueBaixo,
    required double variacaoFaturamento,
    required Nps nps,
    Feriado? proximoFeriado,
  }) = _DadosInsights;
}

/// Hora com mais vendas (ou null se não houver vendas).
int? horaDePico(Map<int, int> vendasPorHora) {
  if (vendasPorHora.isEmpty) return null;
  return vendasPorHora.entries.reduce((a, b) => b.value > a.value ? b : a).key;
}

/// Motor de regras que transforma números em recomendações em linguagem simples.
List<Insight> gerarInsights(DadosInsights d) {
  final lista = <Insight>[];

  // Sazonalidade semanal
  if (d.fatorSemana.any((f) => f != 1)) {
    var melhor = 0, pior = 0;
    for (var i = 1; i < 7; i++) {
      if (d.fatorSemana[i] > d.fatorSemana[melhor]) melhor = i;
      if (d.fatorSemana[i] < d.fatorSemana[pior]) pior = i;
    }
    final acima = (d.fatorSemana[melhor] - 1) * 100;
    lista.add(Insight(
      tipo: TipoInsight.melhorDia,
      titulo: '${diasSemanaLongo[melhor]} é seu melhor dia',
      texto: 'Fatura em média ${acima.toStringAsFixed(0)}% acima da média. '
          'Reforce estoque e equipe nesse dia.',
      prioridade: 60,
    ));
    final abaixo = (1 - d.fatorSemana[pior]) * 100;
    if (abaixo >= 10) {
      lista.add(Insight(
        tipo: TipoInsight.diaFraco,
        titulo: '${diasSemanaLongo[pior]} é o dia mais fraco',
        texto: 'Vende ${abaixo.toStringAsFixed(0)}% abaixo da média. '
            'Que tal uma promoção exclusiva para ${diasSemanaLongo[pior].toLowerCase()}?',
        prioridade: 55,
      ));
    }
  }

  // Horário de pico → melhor horário para postar
  final pico = horaDePico(d.vendasPorHora);
  if (pico != null) {
    lista.add(Insight(
      tipo: TipoInsight.horarioPico,
      titulo: 'Pico de vendas às ${pico}h',
      texto: 'Publique nas redes por volta das ${(pico - 1).clamp(0, 23)}h, '
          'uma hora antes do pico, para atrair quem já está a caminho.',
      prioridade: 58,
    ));
  }

  // Clientes em risco (RFM)
  if (d.clientesEmRisco > 0) {
    lista.add(Insight(
      tipo: TipoInsight.clientesEmRisco,
      titulo: '${d.clientesEmRisco} clientes em risco',
      texto: 'Eram frequentes e sumiram. Uma mensagem com cupom pode trazê-los de volta.',
      prioridade: 80,
    ));
  }

  // Produtos em alta e em queda (últimos 28 dias vs. 28 anteriores)
  final relevantes = d.variacoes.where((v) => v.receitaAnterior >= 100).toList();
  if (relevantes.isNotEmpty) {
    double var_(VariacaoProduto v) => variacaoPercentual(v.atual.receita, v.receitaAnterior);
    relevantes.sort((a, b) => var_(b).compareTo(var_(a)));
    final alta = relevantes.first;
    if (var_(alta) >= 10) {
      lista.add(Insight(
        tipo: TipoInsight.produtoEmAlta,
        titulo: '${alta.atual.emoji} ${alta.atual.nome} em alta',
        texto: 'Vendas cresceram ${var_(alta).toStringAsFixed(0)}% nas últimas 4 semanas. '
            'Destaque esse produto nos posts.',
        prioridade: 65,
      ));
    }
    final queda = relevantes.last;
    if (var_(queda) <= -10) {
      lista.add(Insight(
        tipo: TipoInsight.produtoEmQueda,
        titulo: '${queda.atual.emoji} ${queda.atual.nome} em queda',
        texto: 'Vendas caíram ${var_(queda).abs().toStringAsFixed(0)}% nas últimas 4 semanas. '
            'Revise preço, exposição ou faça uma oferta.',
        prioridade: 62,
      ));
    }
  }

  // Produto mais lucrativo
  if (d.produtosPeriodo.isNotEmpty) {
    final lucrativo = d.produtosPeriodo.reduce((a, b) => b.lucro > a.lucro ? b : a);
    if (lucrativo.lucro > 0) {
      lista.add(Insight(
        tipo: TipoInsight.maiorLucro,
        titulo: '${lucrativo.emoji} ${lucrativo.nome} dá mais lucro',
        texto: 'Gerou ${brl(lucrativo.lucro)} de lucro bruto em 30 dias. '
            'Ofereça junto com os mais vendidos.',
        prioridade: 50,
      ));
    }
  }

  // Estoque
  if (d.estoqueBaixo.isNotEmpty) {
    final nomes = d.estoqueBaixo.take(3).map((p) => p.nome).join(', ');
    lista.add(Insight(
      tipo: TipoInsight.estoqueBaixo,
      titulo: '${d.estoqueBaixo.length} produto(s) com estoque baixo',
      texto: 'Reponha logo: $nomes.',
      prioridade: 75,
    ));
  }

  // Tendência de faturamento
  if (d.variacaoFaturamento.abs() >= 3) {
    final cresceu = d.variacaoFaturamento > 0;
    lista.add(Insight(
      tipo: TipoInsight.tendencia,
      titulo: cresceu ? 'Faturamento crescendo' : 'Faturamento caindo',
      texto: 'Os últimos 30 dias tiveram ${variacao(d.variacaoFaturamento)} em relação aos 30 anteriores.',
      prioridade: cresceu ? 45 : 70,
    ));
  }

  // Satisfação
  if (d.nps.total >= 5) {
    lista.add(Insight(
      tipo: TipoInsight.satisfacao,
      titulo: 'NPS ${d.nps.score.toStringAsFixed(0)}: zona de ${d.nps.zona.toLowerCase()}',
      texto: d.nps.detratores > 0
          ? '${d.nps.detratores} clientes insatisfeitos nos últimos 90 dias. Leia os comentários.'
          : 'Nenhum detrator recente. Peça avaliações para reforçar sua reputação.',
      prioridade: d.nps.score < 30 ? 72 : 40,
    ));
  }

  // Próximo feriado
  final f = d.proximoFeriado;
  if (f != null) {
    final dias = f.data.difference(DateTime(d.hoje.year, d.hoje.month, d.hoje.day)).inDays;
    if (dias >= 0 && dias <= 21) {
      lista.add(Insight(
        tipo: TipoInsight.feriado,
        titulo: dias == 0 ? 'Hoje é feriado: ${f.nome}' : '${f.nome} em $dias dias',
        texto: 'Feriados costumam vender como um domingo. Planeje horários, estoque e um post temático.',
        prioridade: 68,
      ));
    }
  }

  lista.sort((a, b) => b.prioridade.compareTo(a.prioridade));
  return lista;
}
