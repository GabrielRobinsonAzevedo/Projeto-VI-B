import 'package:freezed_annotation/freezed_annotation.dart';

import 'cliente.dart';

part 'rfm.freezed.dart';

/// Segmentos de clientes da análise RFM (Recência, Frequência, Valor).
enum Segmento {
  campeoes('Campeões', 'Campeão',
      'Compraram recentemente e compram com muita frequência.',
      'Recompense: ofereça um mimo ou programa de fidelidade.'),
  fieis('Fiéis', 'Fiel',
      'Compram com regularidade e ainda estão ativos.',
      'Mantenha o contato: avise sobre novidades em primeira mão.'),
  novos('Novos', 'Novo',
      'Fizeram as primeiras compras no último mês.',
      'Dê boas-vindas e incentive a segunda compra.'),
  promissores('Promissores', 'Promissor',
      'Compraram há pouco tempo, mas ainda com baixa frequência.',
      'Ofereça um combo para aumentar a frequência.'),
  emRisco('Em risco', 'Em risco',
      'Eram frequentes, mas não compram há semanas.',
      'Envie uma mensagem pessoal com um cupom de retorno.'),
  perdidos('Perdidos', 'Perdido',
      'Compravam pouco e não aparecem há mais de 2 meses.',
      'Tente uma campanha de reativação com uma oferta forte.');

  const Segmento(this.rotulo, this.singular, this.descricao, this.acao);

  final String rotulo;
  final String singular;
  final String descricao;
  final String acao;

  /// Mensagem pronta para WhatsApp/Instagram, personalizada por segmento.
  String mensagem(String nome, String empresa) {
    final primeiro = nome.trim().split(' ').first;
    return switch (this) {
      Segmento.campeoes =>
        'Oi, $primeiro! Você é um dos nossos clientes mais especiais no $empresa 💜 '
            'Na sua próxima visita, o café é por nossa conta!',
      Segmento.fieis =>
        'Oi, $primeiro! Obrigado por estar sempre com a gente no $empresa. '
            'Esta semana tem novidade no cardápio e você é o primeiro a saber 😉',
      Segmento.novos =>
        'Oi, $primeiro! Que bom ter você no $empresa 😊 '
            'Na sua próxima compra, ganhe 10% de desconto. É só mostrar esta mensagem!',
      Segmento.promissores =>
        'Oi, $primeiro! Preparamos um combo especial no $empresa pensando em você. '
            'Vem experimentar esta semana!',
      Segmento.emRisco =>
        'Oi, $primeiro! Sentimos sua falta no $empresa 🥺 '
            'Volte esta semana e ganhe 15% de desconto. Válido até domingo!',
      Segmento.perdidos =>
        'Oi, $primeiro! Faz tempo que não nos vemos. O $empresa está cheio de novidades '
            'e separamos 20% de desconto para a sua volta. Te esperamos!',
    };
  }
}

/// Dados agregados de compras de um cliente (vindos do banco).
@freezed
abstract class ClienteResumo with _$ClienteResumo {
  const factory ClienteResumo({
    required Cliente cliente,
    DateTime? primeiraCompra,
    DateTime? ultimaCompra,
    @Default(0) int compras,
    @Default(0) double valorTotal,
  }) = _ClienteResumo;
}

@freezed
abstract class ClienteRfm with _$ClienteRfm {
  const factory ClienteRfm({
    required Cliente cliente,
    required int recenciaDias,
    required int frequencia,
    required double valor,
    required int r,
    required int f,
    required int m,
    required Segmento segmento,
    DateTime? ultimaCompra,
  }) = _ClienteRfm;
}

/// Nota de recência (1–5) por faixas fixas de dias, fáceis de explicar ao lojista.
int notaRecencia(int dias) {
  if (dias <= 7) return 5;
  if (dias <= 15) return 4;
  if (dias <= 30) return 3;
  if (dias <= 60) return 2;
  return 1;
}

/// Nota 1–5 por quintil: posição de [valor] na distribuição [ordenados].
int notaQuintil(List<double> ordenados, double valor) {
  if (ordenados.isEmpty) return 1;
  final menores = ordenados.where((v) => v < valor).length;
  final percentil = menores / ordenados.length;
  return (1 + (percentil * 5).floor()).clamp(1, 5);
}

Segmento classificar({
  required int r,
  required int f,
  required int compras,
  required int diasDesdePrimeira,
}) {
  if (compras == 0) return diasDesdePrimeira <= 30 ? Segmento.novos : Segmento.perdidos;
  if (diasDesdePrimeira <= 30 && compras <= 3) return Segmento.novos;
  if (r >= 4 && f >= 4) return Segmento.campeoes;
  if (r >= 3 && f >= 3) return Segmento.fieis;
  if (r <= 2 && f >= 3) return Segmento.emRisco;
  if (r <= 2) return Segmento.perdidos;
  return Segmento.promissores;
}

/// Calcula R, F, M e o segmento de cada cliente. Ordena por valor (maior primeiro).
List<ClienteRfm> calcularRfm(List<ClienteResumo> resumos, DateTime hoje) {
  final ativos = resumos.where((c) => c.compras > 0);
  final freqs = ativos.map((c) => c.compras.toDouble()).toList()..sort();
  final valores = ativos.map((c) => c.valorTotal).toList()..sort();
  final dia = DateTime(hoje.year, hoje.month, hoje.day);

  int diasAte(DateTime? d) {
    if (d == null) return 9999;
    return dia.difference(DateTime(d.year, d.month, d.day)).inDays;
  }

  final lista = [
    for (final c in resumos)
      () {
        final recencia = diasAte(c.ultimaCompra);
        final r = c.compras == 0 ? 1 : notaRecencia(recencia);
        final f = c.compras == 0 ? 1 : notaQuintil(freqs, c.compras.toDouble());
        final m = c.compras == 0 ? 1 : notaQuintil(valores, c.valorTotal);
        return ClienteRfm(
          cliente: c.cliente,
          recenciaDias: recencia,
          frequencia: c.compras,
          valor: c.valorTotal,
          r: r,
          f: f,
          m: m,
          ultimaCompra: c.ultimaCompra,
          segmento: classificar(
            r: r,
            f: f,
            compras: c.compras,
            diasDesdePrimeira: diasAte(c.primeiraCompra ?? c.cliente.criadoEm),
          ),
        );
      }(),
  ]..sort((a, b) => b.valor.compareTo(a.valor));
  return lista;
}
