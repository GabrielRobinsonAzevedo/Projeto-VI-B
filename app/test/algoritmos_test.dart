import 'package:flutter_test/flutter_test.dart';
import 'package:vitrine_plus/features/avaliacoes/domain/nps.dart';
import 'package:vitrine_plus/features/clientes/domain/cliente.dart';
import 'package:vitrine_plus/features/clientes/domain/rfm.dart';
import 'package:vitrine_plus/features/feriados/domain/calendario.dart';
import 'package:vitrine_plus/features/insights/domain/curva_abc.dart';
import 'package:vitrine_plus/features/insights/domain/previsao.dart';
import 'package:vitrine_plus/features/insights/domain/series.dart';

ProdutoVendido _p(String nome, double receita) =>
    ProdutoVendido(produtoId: nome.hashCode, nome: nome, quantidade: 1, receita: receita);

void main() {
  group('Curva ABC', () {
    test('classifica pelo acumulado de receita (80/95)', () {
      final abc = curvaAbc([
        _p('C1', 3), _p('A1', 60), _p('B1', 10), _p('A2', 20), _p('C2', 2), _p('B2', 5),
      ]);
      expect(abc.map((e) => e.produto.nome), ['A1', 'A2', 'B1', 'B2', 'C1', 'C2']);
      expect(abc.map((e) => e.classe), ['A', 'A', 'B', 'B', 'C', 'C']);
      expect(abc.last.acumulado, closeTo(100, 1e-9));
    });

    test('sem vendas devolve lista vazia', () {
      expect(curvaAbc([]), isEmpty);
    });
  });

  group('Previsão', () {
    test('regressão linear recupera reta exata', () {
      final (a, b) = regressaoLinear([2, 4, 6, 8, 10]);
      expect(a, closeTo(2, 1e-9));
      expect(b, closeTo(2, 1e-9));
    });

    test('índice sazonal detecta sábado forte', () {
      final inicio = DateTime(2026, 6, 1); // segunda-feira
      final hist = [
        for (var i = 0; i < 56; i++)
          () {
            final d = DateTime(2026, 6, 1 + i);
            return PontoDiario(dia: d, valor: d.weekday == DateTime.saturday ? 200 : 100);
          }(),
      ];
      final fatores = indicesSazonais(hist);
      expect(fatores[5], greaterThan(fatores[0]));

      final p = preverVendas(hist, inicio: DateTime(2026, 6, 1 + 56));
      expect(p.projecao, hasLength(7));
      final sabado = p.projecao.firstWhere((x) => x.dia.weekday == DateTime.saturday);
      final segunda = p.projecao.firstWhere((x) => x.dia.weekday == DateTime.monday);
      expect(sabado.valor, closeTo(200, 1));
      expect(segunda.valor, closeTo(100, 1));
      expect(p.erroBacktest, closeTo(0, 0.5));
      expect(inicio.weekday, DateTime.monday);
    });

    test('histórico vazio não quebra', () {
      final p = preverVendas(const [], inicio: DateTime(2026, 1, 1));
      expect(p.totalProjetado, 0);
    });
  });

  group('RFM', () {
    final hoje = DateTime(2026, 10, 15);
    Cliente c(String n) => Cliente(nome: n, criadoEm: DateTime(2026, 1, 1));

    test('notas de recência por faixa', () {
      expect(notaRecencia(3), 5);
      expect(notaRecencia(10), 4);
      expect(notaRecencia(25), 3);
      expect(notaRecencia(45), 2);
      expect(notaRecencia(90), 1);
    });

    test('segmenta campeão, em risco e perdido', () {
      final r = calcularRfm([
        ClienteResumo(cliente: c('Campeã'), primeiraCompra: DateTime(2026, 4, 1),
            ultimaCompra: DateTime(2026, 10, 14), compras: 60, valorTotal: 1500),
        ClienteResumo(cliente: c('Sumida'), primeiraCompra: DateTime(2026, 4, 1),
            ultimaCompra: DateTime(2026, 8, 20), compras: 40, valorTotal: 900),
        ClienteResumo(cliente: c('Perdida'), primeiraCompra: DateTime(2026, 4, 1),
            ultimaCompra: DateTime(2026, 5, 1), compras: 2, valorTotal: 30),
        ClienteResumo(cliente: c('Média'), primeiraCompra: DateTime(2026, 4, 1),
            ultimaCompra: DateTime(2026, 10, 1), compras: 10, valorTotal: 200),
        ClienteResumo(cliente: c('Pouca'), primeiraCompra: DateTime(2026, 4, 1),
            ultimaCompra: DateTime(2026, 10, 10), compras: 5, valorTotal: 80),
      ], hoje);
      final porNome = {for (final x in r) x.cliente.nome: x.segmento};
      expect(porNome['Campeã'], Segmento.campeoes);
      expect(porNome['Sumida'], Segmento.emRisco);
      expect(porNome['Perdida'], Segmento.perdidos);
      expect(r.first.cliente.nome, 'Campeã');
    });

    test('cliente recente com poucas compras é novo', () {
      final r = calcularRfm([
        ClienteResumo(cliente: c('Nova'), primeiraCompra: DateTime(2026, 10, 5),
            ultimaCompra: DateTime(2026, 10, 12), compras: 2, valorTotal: 40),
      ], hoje);
      expect(r.single.segmento, Segmento.novos);
    });
  });

  test('NPS = % promotores − % detratores', () {
    final nps = calcularNps([10, 9, 9, 8, 7, 6, 3, 10, 10, 9]);
    expect(nps.promotores, 6);
    expect(nps.neutros, 2);
    expect(nps.detratores, 2);
    expect(nps.score, closeTo(40, 1e-9));
    expect(nps.zona, 'Aperfeiçoamento');
  });

  test('Páscoa calculada corretamente', () {
    expect(pascoa(2026), DateTime(2026, 4, 5));
    expect(pascoa(2027), DateTime(2027, 3, 28));
  });
}
