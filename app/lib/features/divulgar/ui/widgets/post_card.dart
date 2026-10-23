import 'package:flutter/material.dart';

import '../../../../core/theme/app_theme.dart';
import '../../../../core/utils/formatters.dart';
import '../../../empresa/domain/empresa.dart';
import '../../../insights/domain/curva_abc.dart';
import '../../../produtos/domain/produto.dart';

enum ModeloPost {
  oferta('Oferta', Icons.local_offer_rounded, [Color(0xFFFF7A59), Color(0xFFE5488F)]),
  maisPedidos('Mais pedidos', Icons.emoji_events_rounded, [Color(0xFF6C5CFF), Color(0xFF3A2CC0)]),
  novidade('Novidade', Icons.auto_awesome_rounded, [Color(0xFF14B88F), Color(0xFF0E7C8C)]);

  const ModeloPost(this.rotulo, this.icone, this.cores);

  final String rotulo;
  final IconData icone;
  final List<Color> cores;

  String get tituloPadrao => switch (this) {
        ModeloPost.oferta => 'Oferta da semana',
        ModeloPost.maisPedidos => 'Os queridinhos da casa',
        ModeloPost.novidade => 'Chegou novidade!',
      };
}

/// Arte quadrada (1:1) pronta para Instagram/WhatsApp. Renderizada em PNG.
class PostCard extends StatelessWidget {
  const PostCard({
    super.key,
    required this.modelo,
    required this.empresa,
    required this.titulo,
    this.produto,
    this.desconto = 0,
    this.ranking = const [],
  });

  final ModeloPost modelo;
  final Empresa empresa;
  final String titulo;
  final Produto? produto;
  final double desconto;
  final List<ProdutoVendido> ranking;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: LayoutBuilder(builder: (context, c) {
        final u = c.maxWidth / 100; // unidade relativa: a arte escala com o tamanho
        return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: modelo.cores, begin: Alignment.topLeft, end: Alignment.bottomRight),
          ),
          child: Stack(children: [
            Positioned(
              right: -18 * u,
              top: -18 * u,
              child: _Circulo(60 * u, 0.10),
            ),
            Positioned(left: -12 * u, bottom: -20 * u, child: _Circulo(44 * u, 0.08)),
            Padding(
              padding: EdgeInsets.all(7 * u),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 3 * u, vertical: 1.4 * u),
                  decoration: BoxDecoration(
                    color: Colors.white.withValues(alpha: 0.2),
                    borderRadius: BorderRadius.circular(10 * u),
                  ),
                  child: Row(mainAxisSize: MainAxisSize.min, children: [
                    Icon(modelo.icone, color: Colors.white, size: 4 * u),
                    SizedBox(width: 1.5 * u),
                    Text(empresa.nome.toUpperCase(),
                        style: TextStyle(
                            color: Colors.white, fontSize: 3.2 * u, fontWeight: FontWeight.w800, letterSpacing: 0.6)),
                  ]),
                ),
                SizedBox(height: 4 * u),
                Text(titulo,
                    maxLines: 2,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 8.6 * u,
                        height: 1.05,
                        fontWeight: FontWeight.w900,
                        letterSpacing: -0.3 * u)),
                Expanded(child: modelo == ModeloPost.maisPedidos ? _ranking(u) : _produto(u)),
                Row(children: [
                  if (empresa.arroba.isNotEmpty)
                    Text(empresa.arroba,
                        style: TextStyle(color: Colors.white, fontSize: 3.6 * u, fontWeight: FontWeight.w700)),
                  const Spacer(),
                  if (empresa.cidade.isNotEmpty)
                    Text('📍 ${empresa.cidade}',
                        style: TextStyle(color: Colors.white.withValues(alpha: 0.85), fontSize: 3.2 * u)),
                ]),
              ]),
            ),
          ]),
        );
      }),
    );
  }

  Widget _produto(double u) {
    final p = produto;
    if (p == null) return const SizedBox.shrink();
    final precoFinal = p.preco * (1 - desconto / 100);
    return Row(children: [
      Expanded(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(p.nome,
              maxLines: 2,
              style: TextStyle(color: Colors.white, fontSize: 5.4 * u, fontWeight: FontWeight.w700, height: 1.1)),
          SizedBox(height: 2.5 * u),
          if (desconto > 0)
            Text(brl(p.preco),
                style: TextStyle(
                  color: Colors.white.withValues(alpha: 0.75),
                  fontSize: 4 * u,
                  decoration: TextDecoration.lineThrough,
                  decorationColor: Colors.white,
                )),
          Container(
            margin: EdgeInsets.only(top: 1.2 * u),
            padding: EdgeInsets.symmetric(horizontal: 3.5 * u, vertical: 1.5 * u),
            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(4 * u)),
            child: Text(brl(precoFinal),
                style: TextStyle(color: modelo.cores.last, fontSize: 7 * u, fontWeight: FontWeight.w900)),
          ),
          if (desconto > 0) ...[
            SizedBox(height: 1.6 * u),
            Text('${desconto.toStringAsFixed(0)}% OFF',
                style: TextStyle(color: Colors.white, fontSize: 4 * u, fontWeight: FontWeight.w800)),
          ],
        ]),
      ),
      Container(
        width: 36 * u,
        height: 36 * u,
        alignment: Alignment.center,
        decoration: BoxDecoration(color: Colors.white.withValues(alpha: 0.18), shape: BoxShape.circle),
        child: Text(p.emoji, style: TextStyle(fontSize: 20 * u)),
      ),
    ]);
  }

  Widget _ranking(double u) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      for (var i = 0; i < ranking.length; i++)
        Container(
          margin: EdgeInsets.only(bottom: 2 * u),
          padding: EdgeInsets.symmetric(horizontal: 3 * u, vertical: 2 * u),
          decoration: BoxDecoration(
            color: Colors.white.withValues(alpha: i == 0 ? 0.28 : 0.16),
            borderRadius: BorderRadius.circular(4 * u),
          ),
          child: Row(children: [
            Text('${i + 1}º', style: TextStyle(color: Colors.white, fontSize: 4.6 * u, fontWeight: FontWeight.w900)),
            SizedBox(width: 3 * u),
            Text(ranking[i].emoji, style: TextStyle(fontSize: 6 * u)),
            SizedBox(width: 2.5 * u),
            Expanded(
              child: Text(ranking[i].nome,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: Colors.white, fontSize: 4.4 * u, fontWeight: FontWeight.w700)),
            ),
          ]),
        ),
    ]);
  }
}

class _Circulo extends StatelessWidget {
  const _Circulo(this.tamanho, this.opacidade);

  final double tamanho;
  final double opacidade;

  @override
  Widget build(BuildContext context) => Container(
        width: tamanho,
        height: tamanho,
        decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white.withValues(alpha: opacidade)),
      );
}

/// Cartão com QR Code para imprimir no balcão.
class QrCard extends StatelessWidget {
  const QrCard({super.key, required this.empresa, required this.titulo, required this.qr});

  final Empresa empresa;
  final String titulo;
  final Widget qr;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(gradient: AppColors.hero, borderRadius: BorderRadius.circular(28)),
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Text(empresa.nome,
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.w900)),
        const SizedBox(height: 4),
        Text(titulo,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white.withValues(alpha: 0.85), fontWeight: FontWeight.w600)),
        const SizedBox(height: 18),
        Container(
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20)),
          child: qr,
        ),
        const SizedBox(height: 14),
        Text('Aponte a câmera do celular 📱',
            style: TextStyle(color: Colors.white.withValues(alpha: 0.85), fontSize: 13)),
      ]),
    );
  }
}
