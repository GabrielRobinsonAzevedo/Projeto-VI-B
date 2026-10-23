import 'dart:math';

import 'package:drift/drift.dart';

import 'app_database.dart';

/// Gera ~6 meses de dados fictícios (e realistas) de uma cafeteria, para que
/// gráficos e análises tenham o que mostrar na primeira execução.
///
/// Padrões embutidos de propósito, para a análise "descobrir":
/// * fim de semana vende mais (sábado é o pico) e segunda é o dia mais fraco;
/// * picos de horário às 8h e às 16h;
/// * crescimento leve ao longo do semestre;
/// * produtos de verão (açaí, chá gelado) em alta e chocolate quente em queda;
/// * perfis de clientes (campeões, fiéis, em risco, perdidos, novos...).
class DemoSeed {
  DemoSeed(this.db, {DateTime? agora, int semente = 42})
      : agora = agora ?? DateTime.now(),
        _rnd = Random(semente);

  final AppDatabase db;
  final DateTime agora;
  final Random _rnd;

  static const dias = 180;

  static const _produtos = <_P>[
    _P('Café expresso', 'Bebidas', 6.50, 1.60, '☕', 16, 0, 200),
    _P('Cappuccino', 'Bebidas', 9.90, 2.70, '🥛', 11, 0, 150),
    _P('Chocolate quente', 'Bebidas', 11.00, 3.20, '🥤', 5, -1, 40),
    _P('Chá gelado de pêssego', 'Bebidas', 8.00, 1.80, '🧋', 5, 1, 60),
    _P('Suco natural', 'Bebidas', 10.00, 3.00, '🍊', 6, 0.8, 50),
    _P('Pão de queijo', 'Padaria', 4.50, 1.20, '🧀', 14, 0, 150),
    _P('Croissant', 'Padaria', 8.50, 2.40, '🥐', 8, 0.2, 6),
    _P('Pão francês', 'Padaria', 1.00, 0.30, '🥖', 10, 0, 300),
    _P('Pão de fermentação natural', 'Padaria', 22.00, 7.00, '🍞', 3, 0.4, 12),
    _P('Misto quente', 'Lanches', 12.00, 4.00, '🥪', 7, 0, 80),
    _P('Bagel de salmão', 'Lanches', 24.00, 10.00, '🥯', 2, 0.3, 4),
    _P('Bolo de cenoura', 'Doces', 9.00, 2.50, '🍰', 6, -0.3, 30),
    _P('Brownie', 'Doces', 10.00, 2.80, '🍫', 6, 0.6, 25),
    _P('Sonho', 'Doces', 7.50, 2.00, '🍩', 4, -0.5, 20),
    _P('Cookie', 'Doces', 6.00, 1.50, '🍪', 5, 0, 40),
    _P('Salada de frutas', 'Saudáveis', 13.00, 4.50, '🍓', 3, 0.8, 15),
    _P('Açaí 300 ml', 'Saudáveis', 16.00, 6.00, '🫐', 4, 1, 30),
  ];

  static const _nomes = [
    'Mariana', 'João', 'Ana', 'Pedro', 'Juliana', 'Lucas', 'Beatriz', 'Rafael',
    'Camila', 'Gabriel', 'Larissa', 'Felipe', 'Fernanda', 'Thiago', 'Patrícia',
    'Bruno', 'Aline', 'Diego', 'Carolina', 'Mateus', 'Letícia', 'Gustavo',
    'Renata', 'Vinícius', 'Isabela', 'André', 'Natália', 'Rodrigo', 'Bianca', 'Caio',
  ];
  static const _sobrenomes = [
    'Souza', 'Oliveira', 'Santos', 'Lima', 'Pereira', 'Costa', 'Rodrigues',
    'Almeida', 'Nascimento', 'Ferreira', 'Carvalho', 'Gomes', 'Martins',
    'Araújo', 'Ribeiro', 'Barbosa', 'Rocha', 'Dias', 'Teixeira', 'Moreira',
  ];

  // Pesos de 7h a 19h (picos às 8h e às 16h).
  static const _pesoHora = [6, 10, 8, 5, 4, 6, 5, 4, 6, 9, 7, 5, 3];
  // Segunda → domingo.
  static const _fatorDia = [0.78, 0.9, 0.95, 1.0, 1.15, 1.5, 1.25];

  Future<void> executar() async {
    final hoje = DateTime(agora.year, agora.month, agora.day);
    final inicio = DateTime(hoje.year, hoje.month, hoje.day - dias);
    final vendas = <_Venda>[];

    // Clientes com perfis de comportamento
    final perfis = <_Perfil>[
      ...List.filled(9, _Perfil.campeao),
      ...List.filled(14, _Perfil.fiel),
      ...List.filled(9, _Perfil.emRisco),
      ...List.filled(11, _Perfil.perdido),
      ...List.filled(8, _Perfil.novo),
      ...List.filled(9, _Perfil.promissor),
    ]..shuffle(_rnd);

    final clientes = <(String, DateTime)>[];
    final usados = <String>{};
    for (var i = 0; i < perfis.length; i++) {
      String nome;
      do {
        nome = '${_nomes[_rnd.nextInt(_nomes.length)]} ${_sobrenomes[_rnd.nextInt(_sobrenomes.length)]}';
      } while (!usados.add(nome));

      final (ini, fim, intervalo) = switch (perfis[i]) {
        _Perfil.campeao => (_entre(170, 180), _entre(0, 4), 2.6),
        _Perfil.fiel => (_entre(110, 180), _entre(2, 14), 6.5),
        _Perfil.emRisco => (_entre(150, 180), _entre(35, 70), 3.5),
        _Perfil.perdido => (_entre(165, 180), _entre(75, 160), 22.0),
        _Perfil.novo => (_entre(4, 25), _entre(0, 3), 9.0),
        _Perfil.promissor => (_entre(35, 60), _entre(1, 12), 14.0),
      };
      final cadastro = DateTime(hoje.year, hoje.month, hoje.day - ini);
      clientes.add((nome, cadastro));

      var d = ini.toDouble();
      while (d >= fim) {
        final dia = DateTime(hoje.year, hoje.month, hoje.day - d.round());
        final venda = _novaVenda(dia, inicio, clienteId: i + 1);
        if (venda != null) vendas.add(venda);
        d -= max(1.0, -log(1 - _rnd.nextDouble()) * intervalo);
      }
    }

    // Clientes avulsos (sem cadastro), com sazonalidade e crescimento
    for (var k = 0; k <= dias; k++) {
      final dia = DateTime(inicio.year, inicio.month, inicio.day + k);
      final t = k / dias;
      final ehHoje = k == dias;
      // Hoje: só a fração do movimento que já aconteceu até agora.
      final fracao = ehHoje ? _fracaoDoDiaDecorrida() : 1.0;
      final media = (13 + 6 * t) * _fatorDia[dia.weekday - 1] * (0.85 + _rnd.nextDouble() * 0.3) * fracao;
      for (var n = 0; n < media.round(); n++) {
        final venda = _novaVenda(dia, inicio, somenteAteAgora: ehHoje);
        if (venda != null) vendas.add(venda);
      }
    }
    vendas.sort((a, b) => a.dataHora.compareTo(b.dataHora));

    await db.transaction(() async {
      await db.batch((b) {
        b.insert(
          db.empresas,
          const EmpresasCompanion(
            id: Value(1),
            nome: Value('Café Aroma & Cia'),
            segmento: Value('Cafeteria e padaria'),
            cidade: Value('Curitiba - PR'),
            instagram: Value('cafearoma'),
            whatsapp: Value('41999990000'),
          ),
          mode: InsertMode.insertOrReplace,
        );
        for (var i = 0; i < _produtos.length; i++) {
          final p = _produtos[i];
          b.insert(
            db.produtos,
            ProdutosCompanion(
              id: Value(i + 1),
              nome: Value(p.nome),
              categoria: Value(p.categoria),
              preco: Value(p.preco),
              custo: Value(p.custo),
              estoque: Value(p.estoque),
              emoji: Value(p.emoji),
            ),
          );
        }
        for (var i = 0; i < clientes.length; i++) {
          final (nome, cadastro) = clientes[i];
          b.insert(
            db.clientes,
            ClientesCompanion(
              id: Value(i + 1),
              nome: Value(nome),
              telefone: Value('(41) 9${_entre(8000, 9999)}-${_entre(1000, 9999)}'),
              criadoEm: Value(cadastro),
            ),
          );
        }
        for (var i = 0; i < vendas.length; i++) {
          final v = vendas[i];
          b.insert(
            db.vendas,
            VendasCompanion(
              id: Value(i + 1),
              clienteId: Value(v.clienteId),
              dataHora: Value(v.dataHora),
              formaPagamento: Value(v.pagamento),
              total: Value(v.total),
            ),
          );
          for (final (idx, qtd) in v.itens) {
            b.insert(
              db.itensVenda,
              ItensVendaCompanion(
                vendaId: Value(i + 1),
                produtoId: Value(idx + 1),
                quantidade: Value(qtd),
                precoUnitario: Value(_produtos[idx].preco),
              ),
            );
          }
        }
        _avaliacoes(b, inicio, clientes.length);
      });
    });
  }

  double _fracaoDoDiaDecorrida() {
    final total = _pesoHora.fold<int>(0, (s, p) => s + p);
    var decorrido = 0.0;
    for (var i = 0; i < _pesoHora.length; i++) {
      final h = 7 + i;
      if (h < agora.hour) {
        decorrido += _pesoHora[i];
      } else if (h == agora.hour) {
        decorrido += _pesoHora[i] * agora.minute / 60;
      }
    }
    return decorrido / total;
  }

  _Venda? _novaVenda(DateTime dia, DateTime inicio, {int? clienteId, bool somenteAteAgora = false}) {
    final pesosHora = [
      for (var i = 0; i < _pesoHora.length; i++)
        !somenteAteAgora || 7 + i <= agora.hour ? _pesoHora[i] : 0,
    ];
    if (pesosHora.every((p) => p == 0)) return null;
    final hora = 7 + _sortear(pesosHora);
    final minutoMax = somenteAteAgora && hora == agora.hour ? agora.minute + 1 : 60;
    final dataHora = DateTime(dia.year, dia.month, dia.day, hora, _rnd.nextInt(minutoMax), _rnd.nextInt(60));
    if (dataHora.isAfter(agora)) return null;

    final t = (dia.difference(inicio).inHours / 24 / dias).clamp(0.0, 1.0);
    final pesos = [
      for (final p in _produtos) max(0.2, p.peso * (1 + p.tendencia * (t - 0.5) * 1.2)),
    ];
    final r = _rnd.nextDouble();
    final qtdItens = r < 0.5 ? 1 : (r < 0.85 ? 2 : 3);
    final escolhidos = <int>{};
    while (escolhidos.length < qtdItens) {
      escolhidos.add(_sortear(pesos));
    }
    final itens = [
      for (final idx in escolhidos)
        (
          idx,
          switch (_produtos[idx].nome) {
            'Pão francês' => _entre(4, 10),
            'Pão de queijo' => _entre(1, 4),
            _ => _rnd.nextDouble() < 0.1 ? 2 : 1,
          }
        ),
    ];
    final total = itens.fold<double>(0, (s, it) => s + _produtos[it.$1].preco * it.$2);
    const formas = ['Pix', 'Crédito', 'Débito', 'Dinheiro'];
    final pagamento = formas[_sortear(const [45, 25, 20, 10])];
    return _Venda(dataHora, clienteId, pagamento, double.parse(total.toStringAsFixed(2)), itens);
  }

  void _avaliacoes(Batch b, DateTime inicio, int totalClientes) {
    const positivos = [
      'Café maravilhoso e atendimento nota 10!',
      'O pão de queijo é o melhor da cidade.',
      'Ambiente aconchegante, voltarei sempre.',
      'Croissant fresquinho, amei!',
      'Atendimento rápido e simpático.',
    ];
    const neutros = [
      'Bom, mas estava um pouco cheio.',
      'Gostei, só achei o preço um pouco alto.',
      'Café bom, poderia ter mais opções sem lactose.',
    ];
    const negativos = [
      'Demorou muito para ser atendido.',
      'Faltou o produto que eu queria.',
      'A mesa estava suja.',
    ];
    for (var i = 0; i < 170; i++) {
      final dia = DateTime(inicio.year, inicio.month, inicio.day + _rnd.nextInt(dias + 1));
      final data = DateTime(dia.year, dia.month, dia.day, 8 + _rnd.nextInt(11), _rnd.nextInt(60));
      if (data.isAfter(agora)) continue;
      final nota = 10 - _sortear(const [34, 26, 15, 10, 6, 4, 2, 1, 1, 0.5, 0.5]);
      final lista = nota >= 9 ? positivos : (nota >= 7 ? neutros : negativos);
      b.insert(
        db.avaliacoes,
        AvaliacoesCompanion(
          clienteId: Value(_rnd.nextDouble() < 0.4 ? _entre(1, totalClientes) : null),
          nota: Value(nota),
          comentario: Value(_rnd.nextDouble() < 0.55 ? lista[_rnd.nextInt(lista.length)] : ''),
          dataHora: Value(data),
        ),
      );
    }
  }

  int _entre(int min, int max) => min + _rnd.nextInt(max - min + 1);

  int _sortear(List<num> pesos) {
    final total = pesos.fold<num>(0, (s, p) => s + p);
    var alvo = _rnd.nextDouble() * total;
    for (var i = 0; i < pesos.length; i++) {
      alvo -= pesos[i];
      if (alvo <= 0) return i;
    }
    return pesos.length - 1;
  }
}

enum _Perfil { campeao, fiel, emRisco, perdido, novo, promissor }

class _P {
  const _P(this.nome, this.categoria, this.preco, this.custo, this.emoji, this.peso, this.tendencia,
      this.estoque);

  final String nome;
  final String categoria;
  final double preco;
  final double custo;
  final String emoji;
  final double peso;
  final double tendencia;
  final int estoque;
}

class _Venda {
  _Venda(this.dataHora, this.clienteId, this.pagamento, this.total, this.itens);

  final DateTime dataHora;
  final int? clienteId;
  final String pagamento;
  final double total;
  final List<(int, int)> itens;
}
