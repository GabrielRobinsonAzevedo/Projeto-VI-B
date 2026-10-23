import 'package:drift/drift.dart' hide isNull, isNotNull;
import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:vitrine_plus/core/database/app_database.dart';
import 'package:vitrine_plus/core/database/demo_seed.dart';
import 'package:vitrine_plus/features/clientes/data/clientes_repository.dart';
import 'package:vitrine_plus/features/clientes/domain/rfm.dart';
import 'package:vitrine_plus/features/insights/data/analytics_repository.dart';
import 'package:vitrine_plus/features/insights/domain/curva_abc.dart';
import 'package:vitrine_plus/features/produtos/data/produtos_repository.dart';
import 'package:vitrine_plus/features/vendas/data/vendas_repository.dart';
import 'package:vitrine_plus/features/vendas/domain/venda.dart';

void main() {
  late AppDatabase db;
  final agora = DateTime(2026, 10, 15, 14, 30);

  setUp(() async {
    db = AppDatabase(DatabaseConnection(
      NativeDatabase.memory(),
      closeStreamsSynchronously: true,
    ));
    await DemoSeed(db, agora: agora).executar();
  });

  tearDown(() => db.close());

  test('seed cria as tabelas com dados', () async {
    expect(await db.select(db.produtos).get(), hasLength(17));
    expect(await db.select(db.clientes).get(), hasLength(60));
    final vendas = await db.select(db.vendas).get();
    expect(vendas.length, greaterThan(3000));
    expect(vendas.every((v) => !v.dataHora.isAfter(agora)), isTrue);
  });

  test('datas ficam em texto e agrupam por dia/hora no SQL', () async {
    final bruto = await db.customSelect('SELECT data_hora FROM venda LIMIT 1').getSingle();
    expect(bruto.data['data_hora'], isA<String>());

    final analytics = AnalyticsRepository(db);
    final serie = await analytics.serieDiaria(DateTime(2026, 10, 1), DateTime(2026, 10, 15));
    expect(serie, hasLength(14));
    expect(serie.every((p) => p.valor > 0), isTrue);

    final horas = await analytics.vendasPorHora(DateTime(2026, 9, 15));
    expect(horas.keys.every((h) => h >= 7 && h <= 19), isTrue);
  });

  test('padrões da demonstração são detectados', () async {
    final analytics = AnalyticsRepository(db);
    final produtos = await analytics.produtosVendidos(DateTime(2026, 7, 17), DateTime(2026, 10, 16));
    final abc = curvaAbc(produtos);
    expect(abc.where((e) => e.classe == 'A'), isNotEmpty);

    final rfm = calcularRfm(await ClientesRepository(db).resumos(), agora);
    final segmentos = rfm.map((r) => r.segmento).toSet();
    expect(segmentos, containsAll([Segmento.campeoes, Segmento.emRisco, Segmento.perdidos]));
  });

  test('registrar venda baixa estoque; excluir devolve', () async {
    final produtosRepo = ProdutosRepository(db);
    final vendasRepo = VendasRepository(db);
    final croissant = (await produtosRepo.listar()).firstWhere((p) => p.nome == 'Croissant');

    final id = await vendasRepo.registrar(
      formaPagamento: 'Pix',
      itens: [ItemVenda(produtoId: croissant.id!, nome: croissant.nome, quantidade: 2, precoUnitario: croissant.preco)],
    );
    var atual = (await produtosRepo.listar()).firstWhere((p) => p.id == croissant.id);
    expect(atual.estoque, croissant.estoque - 2);
    expect((await vendasRepo.itens(id)).single.subtotal, croissant.preco * 2);

    await vendasRepo.excluir(id);
    atual = (await produtosRepo.listar()).firstWhere((p) => p.id == croissant.id);
    expect(atual.estoque, croissant.estoque);
    expect(await vendasRepo.itens(id), isEmpty);
  });

  test('exporta CSV com cabeçalho', () async {
    final csv = await VendasRepository(db).exportarCsv();
    expect(csv.split('\n').first, startsWith('venda_id,data_hora'));
  });
}
