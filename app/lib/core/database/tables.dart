import 'package:drift/drift.dart';

// Modelo relacional do Vitrine+ (SQLite via drift).
//
// empresa 1 ── (dados do negócio, linha única)
// cliente 1 ── N venda 1 ── N item_venda N ── 1 produto
// cliente 1 ── N avaliacao
// feriado (cache da BrasilAPI, usado na previsão e no calendário de posts)

@DataClassName('EmpresaRow')
class Empresas extends Table {
  @override
  String get tableName => 'empresa';

  IntColumn get id => integer()();
  TextColumn get nome => text().withLength(min: 1, max: 80)();
  TextColumn get segmento => text()();
  TextColumn get cidade => text().withDefault(const Constant(''))();
  TextColumn get instagram => text().withDefault(const Constant(''))();
  TextColumn get whatsapp => text().withDefault(const Constant(''))();

  @override
  Set<Column> get primaryKey => {id};
}

@DataClassName('ProdutoRow')
class Produtos extends Table {
  @override
  String get tableName => 'produto';

  IntColumn get id => integer().autoIncrement()();
  TextColumn get nome => text().withLength(min: 1, max: 80)();
  TextColumn get categoria => text()();
  // ignore: recursive_getters
  RealColumn get preco => real().check(preco.isBiggerOrEqualValue(0))();
  RealColumn get custo => real().withDefault(const Constant(0))();
  IntColumn get estoque => integer().withDefault(const Constant(0))();
  TextColumn get emoji => text().withDefault(const Constant('📦'))();
  BoolColumn get ativo => boolean().withDefault(const Constant(true))();
}

@DataClassName('ClienteRow')
class Clientes extends Table {
  @override
  String get tableName => 'cliente';

  IntColumn get id => integer().autoIncrement()();
  TextColumn get nome => text().withLength(min: 1, max: 80)();
  TextColumn get telefone => text().withDefault(const Constant(''))();
  TextColumn get instagram => text().withDefault(const Constant(''))();
  DateTimeColumn get criadoEm => dateTime()();
}

@DataClassName('VendaRow')
@TableIndex(name: 'idx_venda_data', columns: {#dataHora})
@TableIndex(name: 'idx_venda_cliente', columns: {#clienteId})
class Vendas extends Table {
  @override
  String get tableName => 'venda';

  IntColumn get id => integer().autoIncrement()();
  IntColumn get clienteId => integer()
      .nullable()
      .references(Clientes, #id, onDelete: KeyAction.setNull)();
  DateTimeColumn get dataHora => dateTime()();
  TextColumn get formaPagamento => text()();
  RealColumn get total => real()();
}

@DataClassName('ItemVendaRow')
@TableIndex(name: 'idx_item_venda', columns: {#vendaId})
class ItensVenda extends Table {
  @override
  String get tableName => 'item_venda';

  IntColumn get id => integer().autoIncrement()();
  IntColumn get vendaId =>
      integer().references(Vendas, #id, onDelete: KeyAction.cascade)();
  IntColumn get produtoId => integer().references(Produtos, #id)();
  IntColumn get quantidade =>
      // ignore: recursive_getters
      integer().check(quantidade.isBiggerThanValue(0))();
  RealColumn get precoUnitario => real()();
}

@DataClassName('AvaliacaoRow')
class Avaliacoes extends Table {
  @override
  String get tableName => 'avaliacao';

  IntColumn get id => integer().autoIncrement()();
  IntColumn get clienteId => integer()
      .nullable()
      .references(Clientes, #id, onDelete: KeyAction.setNull)();
  // ignore: recursive_getters
  IntColumn get nota => integer().check(nota.isBetweenValues(0, 10))();
  TextColumn get comentario => text().withDefault(const Constant(''))();
  DateTimeColumn get dataHora => dateTime()();
}

@DataClassName('FeriadoRow')
class Feriados extends Table {
  @override
  String get tableName => 'feriado';

  DateTimeColumn get data => dateTime()();
  TextColumn get nome => text()();
  TextColumn get tipo => text().withDefault(const Constant('national'))();

  @override
  Set<Column> get primaryKey => {data};
}
