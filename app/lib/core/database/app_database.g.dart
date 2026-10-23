// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $EmpresasTable extends Empresas
    with TableInfo<$EmpresasTable, EmpresaRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $EmpresasTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _nomeMeta = const VerificationMeta('nome');
  @override
  late final GeneratedColumn<String> nome = GeneratedColumn<String>(
    'nome',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(
      minTextLength: 1,
      maxTextLength: 80,
    ),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _segmentoMeta = const VerificationMeta(
    'segmento',
  );
  @override
  late final GeneratedColumn<String> segmento = GeneratedColumn<String>(
    'segmento',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _cidadeMeta = const VerificationMeta('cidade');
  @override
  late final GeneratedColumn<String> cidade = GeneratedColumn<String>(
    'cidade',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant(''),
  );
  static const VerificationMeta _instagramMeta = const VerificationMeta(
    'instagram',
  );
  @override
  late final GeneratedColumn<String> instagram = GeneratedColumn<String>(
    'instagram',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant(''),
  );
  static const VerificationMeta _whatsappMeta = const VerificationMeta(
    'whatsapp',
  );
  @override
  late final GeneratedColumn<String> whatsapp = GeneratedColumn<String>(
    'whatsapp',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant(''),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    nome,
    segmento,
    cidade,
    instagram,
    whatsapp,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'empresa';
  @override
  VerificationContext validateIntegrity(
    Insertable<EmpresaRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('nome')) {
      context.handle(
        _nomeMeta,
        nome.isAcceptableOrUnknown(data['nome']!, _nomeMeta),
      );
    } else if (isInserting) {
      context.missing(_nomeMeta);
    }
    if (data.containsKey('segmento')) {
      context.handle(
        _segmentoMeta,
        segmento.isAcceptableOrUnknown(data['segmento']!, _segmentoMeta),
      );
    } else if (isInserting) {
      context.missing(_segmentoMeta);
    }
    if (data.containsKey('cidade')) {
      context.handle(
        _cidadeMeta,
        cidade.isAcceptableOrUnknown(data['cidade']!, _cidadeMeta),
      );
    }
    if (data.containsKey('instagram')) {
      context.handle(
        _instagramMeta,
        instagram.isAcceptableOrUnknown(data['instagram']!, _instagramMeta),
      );
    }
    if (data.containsKey('whatsapp')) {
      context.handle(
        _whatsappMeta,
        whatsapp.isAcceptableOrUnknown(data['whatsapp']!, _whatsappMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  EmpresaRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return EmpresaRow(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      nome: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}nome'],
      )!,
      segmento: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}segmento'],
      )!,
      cidade: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}cidade'],
      )!,
      instagram: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}instagram'],
      )!,
      whatsapp: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}whatsapp'],
      )!,
    );
  }

  @override
  $EmpresasTable createAlias(String alias) {
    return $EmpresasTable(attachedDatabase, alias);
  }
}

class EmpresaRow extends DataClass implements Insertable<EmpresaRow> {
  final int id;
  final String nome;
  final String segmento;
  final String cidade;
  final String instagram;
  final String whatsapp;
  const EmpresaRow({
    required this.id,
    required this.nome,
    required this.segmento,
    required this.cidade,
    required this.instagram,
    required this.whatsapp,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['nome'] = Variable<String>(nome);
    map['segmento'] = Variable<String>(segmento);
    map['cidade'] = Variable<String>(cidade);
    map['instagram'] = Variable<String>(instagram);
    map['whatsapp'] = Variable<String>(whatsapp);
    return map;
  }

  EmpresasCompanion toCompanion(bool nullToAbsent) {
    return EmpresasCompanion(
      id: Value(id),
      nome: Value(nome),
      segmento: Value(segmento),
      cidade: Value(cidade),
      instagram: Value(instagram),
      whatsapp: Value(whatsapp),
    );
  }

  factory EmpresaRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return EmpresaRow(
      id: serializer.fromJson<int>(json['id']),
      nome: serializer.fromJson<String>(json['nome']),
      segmento: serializer.fromJson<String>(json['segmento']),
      cidade: serializer.fromJson<String>(json['cidade']),
      instagram: serializer.fromJson<String>(json['instagram']),
      whatsapp: serializer.fromJson<String>(json['whatsapp']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'nome': serializer.toJson<String>(nome),
      'segmento': serializer.toJson<String>(segmento),
      'cidade': serializer.toJson<String>(cidade),
      'instagram': serializer.toJson<String>(instagram),
      'whatsapp': serializer.toJson<String>(whatsapp),
    };
  }

  EmpresaRow copyWith({
    int? id,
    String? nome,
    String? segmento,
    String? cidade,
    String? instagram,
    String? whatsapp,
  }) => EmpresaRow(
    id: id ?? this.id,
    nome: nome ?? this.nome,
    segmento: segmento ?? this.segmento,
    cidade: cidade ?? this.cidade,
    instagram: instagram ?? this.instagram,
    whatsapp: whatsapp ?? this.whatsapp,
  );
  EmpresaRow copyWithCompanion(EmpresasCompanion data) {
    return EmpresaRow(
      id: data.id.present ? data.id.value : this.id,
      nome: data.nome.present ? data.nome.value : this.nome,
      segmento: data.segmento.present ? data.segmento.value : this.segmento,
      cidade: data.cidade.present ? data.cidade.value : this.cidade,
      instagram: data.instagram.present ? data.instagram.value : this.instagram,
      whatsapp: data.whatsapp.present ? data.whatsapp.value : this.whatsapp,
    );
  }

  @override
  String toString() {
    return (StringBuffer('EmpresaRow(')
          ..write('id: $id, ')
          ..write('nome: $nome, ')
          ..write('segmento: $segmento, ')
          ..write('cidade: $cidade, ')
          ..write('instagram: $instagram, ')
          ..write('whatsapp: $whatsapp')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, nome, segmento, cidade, instagram, whatsapp);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is EmpresaRow &&
          other.id == this.id &&
          other.nome == this.nome &&
          other.segmento == this.segmento &&
          other.cidade == this.cidade &&
          other.instagram == this.instagram &&
          other.whatsapp == this.whatsapp);
}

class EmpresasCompanion extends UpdateCompanion<EmpresaRow> {
  final Value<int> id;
  final Value<String> nome;
  final Value<String> segmento;
  final Value<String> cidade;
  final Value<String> instagram;
  final Value<String> whatsapp;
  const EmpresasCompanion({
    this.id = const Value.absent(),
    this.nome = const Value.absent(),
    this.segmento = const Value.absent(),
    this.cidade = const Value.absent(),
    this.instagram = const Value.absent(),
    this.whatsapp = const Value.absent(),
  });
  EmpresasCompanion.insert({
    this.id = const Value.absent(),
    required String nome,
    required String segmento,
    this.cidade = const Value.absent(),
    this.instagram = const Value.absent(),
    this.whatsapp = const Value.absent(),
  }) : nome = Value(nome),
       segmento = Value(segmento);
  static Insertable<EmpresaRow> custom({
    Expression<int>? id,
    Expression<String>? nome,
    Expression<String>? segmento,
    Expression<String>? cidade,
    Expression<String>? instagram,
    Expression<String>? whatsapp,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (nome != null) 'nome': nome,
      if (segmento != null) 'segmento': segmento,
      if (cidade != null) 'cidade': cidade,
      if (instagram != null) 'instagram': instagram,
      if (whatsapp != null) 'whatsapp': whatsapp,
    });
  }

  EmpresasCompanion copyWith({
    Value<int>? id,
    Value<String>? nome,
    Value<String>? segmento,
    Value<String>? cidade,
    Value<String>? instagram,
    Value<String>? whatsapp,
  }) {
    return EmpresasCompanion(
      id: id ?? this.id,
      nome: nome ?? this.nome,
      segmento: segmento ?? this.segmento,
      cidade: cidade ?? this.cidade,
      instagram: instagram ?? this.instagram,
      whatsapp: whatsapp ?? this.whatsapp,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (nome.present) {
      map['nome'] = Variable<String>(nome.value);
    }
    if (segmento.present) {
      map['segmento'] = Variable<String>(segmento.value);
    }
    if (cidade.present) {
      map['cidade'] = Variable<String>(cidade.value);
    }
    if (instagram.present) {
      map['instagram'] = Variable<String>(instagram.value);
    }
    if (whatsapp.present) {
      map['whatsapp'] = Variable<String>(whatsapp.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('EmpresasCompanion(')
          ..write('id: $id, ')
          ..write('nome: $nome, ')
          ..write('segmento: $segmento, ')
          ..write('cidade: $cidade, ')
          ..write('instagram: $instagram, ')
          ..write('whatsapp: $whatsapp')
          ..write(')'))
        .toString();
  }
}

class $ProdutosTable extends Produtos
    with TableInfo<$ProdutosTable, ProdutoRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ProdutosTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _nomeMeta = const VerificationMeta('nome');
  @override
  late final GeneratedColumn<String> nome = GeneratedColumn<String>(
    'nome',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(
      minTextLength: 1,
      maxTextLength: 80,
    ),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _categoriaMeta = const VerificationMeta(
    'categoria',
  );
  @override
  late final GeneratedColumn<String> categoria = GeneratedColumn<String>(
    'categoria',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _precoMeta = const VerificationMeta('preco');
  @override
  late final GeneratedColumn<double> preco = GeneratedColumn<double>(
    'preco',
    aliasedName,
    false,
    check: () => ComparableExpr(preco).isBiggerOrEqualValue(0),
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _custoMeta = const VerificationMeta('custo');
  @override
  late final GeneratedColumn<double> custo = GeneratedColumn<double>(
    'custo',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _estoqueMeta = const VerificationMeta(
    'estoque',
  );
  @override
  late final GeneratedColumn<int> estoque = GeneratedColumn<int>(
    'estoque',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _emojiMeta = const VerificationMeta('emoji');
  @override
  late final GeneratedColumn<String> emoji = GeneratedColumn<String>(
    'emoji',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('📦'),
  );
  static const VerificationMeta _ativoMeta = const VerificationMeta('ativo');
  @override
  late final GeneratedColumn<bool> ativo = GeneratedColumn<bool>(
    'ativo',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("ativo" IN (0, 1))',
    ),
    defaultValue: const Constant(true),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    nome,
    categoria,
    preco,
    custo,
    estoque,
    emoji,
    ativo,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'produto';
  @override
  VerificationContext validateIntegrity(
    Insertable<ProdutoRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('nome')) {
      context.handle(
        _nomeMeta,
        nome.isAcceptableOrUnknown(data['nome']!, _nomeMeta),
      );
    } else if (isInserting) {
      context.missing(_nomeMeta);
    }
    if (data.containsKey('categoria')) {
      context.handle(
        _categoriaMeta,
        categoria.isAcceptableOrUnknown(data['categoria']!, _categoriaMeta),
      );
    } else if (isInserting) {
      context.missing(_categoriaMeta);
    }
    if (data.containsKey('preco')) {
      context.handle(
        _precoMeta,
        preco.isAcceptableOrUnknown(data['preco']!, _precoMeta),
      );
    } else if (isInserting) {
      context.missing(_precoMeta);
    }
    if (data.containsKey('custo')) {
      context.handle(
        _custoMeta,
        custo.isAcceptableOrUnknown(data['custo']!, _custoMeta),
      );
    }
    if (data.containsKey('estoque')) {
      context.handle(
        _estoqueMeta,
        estoque.isAcceptableOrUnknown(data['estoque']!, _estoqueMeta),
      );
    }
    if (data.containsKey('emoji')) {
      context.handle(
        _emojiMeta,
        emoji.isAcceptableOrUnknown(data['emoji']!, _emojiMeta),
      );
    }
    if (data.containsKey('ativo')) {
      context.handle(
        _ativoMeta,
        ativo.isAcceptableOrUnknown(data['ativo']!, _ativoMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ProdutoRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ProdutoRow(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      nome: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}nome'],
      )!,
      categoria: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}categoria'],
      )!,
      preco: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}preco'],
      )!,
      custo: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}custo'],
      )!,
      estoque: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}estoque'],
      )!,
      emoji: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}emoji'],
      )!,
      ativo: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}ativo'],
      )!,
    );
  }

  @override
  $ProdutosTable createAlias(String alias) {
    return $ProdutosTable(attachedDatabase, alias);
  }
}

class ProdutoRow extends DataClass implements Insertable<ProdutoRow> {
  final int id;
  final String nome;
  final String categoria;
  final double preco;
  final double custo;
  final int estoque;
  final String emoji;
  final bool ativo;
  const ProdutoRow({
    required this.id,
    required this.nome,
    required this.categoria,
    required this.preco,
    required this.custo,
    required this.estoque,
    required this.emoji,
    required this.ativo,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['nome'] = Variable<String>(nome);
    map['categoria'] = Variable<String>(categoria);
    map['preco'] = Variable<double>(preco);
    map['custo'] = Variable<double>(custo);
    map['estoque'] = Variable<int>(estoque);
    map['emoji'] = Variable<String>(emoji);
    map['ativo'] = Variable<bool>(ativo);
    return map;
  }

  ProdutosCompanion toCompanion(bool nullToAbsent) {
    return ProdutosCompanion(
      id: Value(id),
      nome: Value(nome),
      categoria: Value(categoria),
      preco: Value(preco),
      custo: Value(custo),
      estoque: Value(estoque),
      emoji: Value(emoji),
      ativo: Value(ativo),
    );
  }

  factory ProdutoRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ProdutoRow(
      id: serializer.fromJson<int>(json['id']),
      nome: serializer.fromJson<String>(json['nome']),
      categoria: serializer.fromJson<String>(json['categoria']),
      preco: serializer.fromJson<double>(json['preco']),
      custo: serializer.fromJson<double>(json['custo']),
      estoque: serializer.fromJson<int>(json['estoque']),
      emoji: serializer.fromJson<String>(json['emoji']),
      ativo: serializer.fromJson<bool>(json['ativo']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'nome': serializer.toJson<String>(nome),
      'categoria': serializer.toJson<String>(categoria),
      'preco': serializer.toJson<double>(preco),
      'custo': serializer.toJson<double>(custo),
      'estoque': serializer.toJson<int>(estoque),
      'emoji': serializer.toJson<String>(emoji),
      'ativo': serializer.toJson<bool>(ativo),
    };
  }

  ProdutoRow copyWith({
    int? id,
    String? nome,
    String? categoria,
    double? preco,
    double? custo,
    int? estoque,
    String? emoji,
    bool? ativo,
  }) => ProdutoRow(
    id: id ?? this.id,
    nome: nome ?? this.nome,
    categoria: categoria ?? this.categoria,
    preco: preco ?? this.preco,
    custo: custo ?? this.custo,
    estoque: estoque ?? this.estoque,
    emoji: emoji ?? this.emoji,
    ativo: ativo ?? this.ativo,
  );
  ProdutoRow copyWithCompanion(ProdutosCompanion data) {
    return ProdutoRow(
      id: data.id.present ? data.id.value : this.id,
      nome: data.nome.present ? data.nome.value : this.nome,
      categoria: data.categoria.present ? data.categoria.value : this.categoria,
      preco: data.preco.present ? data.preco.value : this.preco,
      custo: data.custo.present ? data.custo.value : this.custo,
      estoque: data.estoque.present ? data.estoque.value : this.estoque,
      emoji: data.emoji.present ? data.emoji.value : this.emoji,
      ativo: data.ativo.present ? data.ativo.value : this.ativo,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ProdutoRow(')
          ..write('id: $id, ')
          ..write('nome: $nome, ')
          ..write('categoria: $categoria, ')
          ..write('preco: $preco, ')
          ..write('custo: $custo, ')
          ..write('estoque: $estoque, ')
          ..write('emoji: $emoji, ')
          ..write('ativo: $ativo')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, nome, categoria, preco, custo, estoque, emoji, ativo);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ProdutoRow &&
          other.id == this.id &&
          other.nome == this.nome &&
          other.categoria == this.categoria &&
          other.preco == this.preco &&
          other.custo == this.custo &&
          other.estoque == this.estoque &&
          other.emoji == this.emoji &&
          other.ativo == this.ativo);
}

class ProdutosCompanion extends UpdateCompanion<ProdutoRow> {
  final Value<int> id;
  final Value<String> nome;
  final Value<String> categoria;
  final Value<double> preco;
  final Value<double> custo;
  final Value<int> estoque;
  final Value<String> emoji;
  final Value<bool> ativo;
  const ProdutosCompanion({
    this.id = const Value.absent(),
    this.nome = const Value.absent(),
    this.categoria = const Value.absent(),
    this.preco = const Value.absent(),
    this.custo = const Value.absent(),
    this.estoque = const Value.absent(),
    this.emoji = const Value.absent(),
    this.ativo = const Value.absent(),
  });
  ProdutosCompanion.insert({
    this.id = const Value.absent(),
    required String nome,
    required String categoria,
    required double preco,
    this.custo = const Value.absent(),
    this.estoque = const Value.absent(),
    this.emoji = const Value.absent(),
    this.ativo = const Value.absent(),
  }) : nome = Value(nome),
       categoria = Value(categoria),
       preco = Value(preco);
  static Insertable<ProdutoRow> custom({
    Expression<int>? id,
    Expression<String>? nome,
    Expression<String>? categoria,
    Expression<double>? preco,
    Expression<double>? custo,
    Expression<int>? estoque,
    Expression<String>? emoji,
    Expression<bool>? ativo,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (nome != null) 'nome': nome,
      if (categoria != null) 'categoria': categoria,
      if (preco != null) 'preco': preco,
      if (custo != null) 'custo': custo,
      if (estoque != null) 'estoque': estoque,
      if (emoji != null) 'emoji': emoji,
      if (ativo != null) 'ativo': ativo,
    });
  }

  ProdutosCompanion copyWith({
    Value<int>? id,
    Value<String>? nome,
    Value<String>? categoria,
    Value<double>? preco,
    Value<double>? custo,
    Value<int>? estoque,
    Value<String>? emoji,
    Value<bool>? ativo,
  }) {
    return ProdutosCompanion(
      id: id ?? this.id,
      nome: nome ?? this.nome,
      categoria: categoria ?? this.categoria,
      preco: preco ?? this.preco,
      custo: custo ?? this.custo,
      estoque: estoque ?? this.estoque,
      emoji: emoji ?? this.emoji,
      ativo: ativo ?? this.ativo,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (nome.present) {
      map['nome'] = Variable<String>(nome.value);
    }
    if (categoria.present) {
      map['categoria'] = Variable<String>(categoria.value);
    }
    if (preco.present) {
      map['preco'] = Variable<double>(preco.value);
    }
    if (custo.present) {
      map['custo'] = Variable<double>(custo.value);
    }
    if (estoque.present) {
      map['estoque'] = Variable<int>(estoque.value);
    }
    if (emoji.present) {
      map['emoji'] = Variable<String>(emoji.value);
    }
    if (ativo.present) {
      map['ativo'] = Variable<bool>(ativo.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProdutosCompanion(')
          ..write('id: $id, ')
          ..write('nome: $nome, ')
          ..write('categoria: $categoria, ')
          ..write('preco: $preco, ')
          ..write('custo: $custo, ')
          ..write('estoque: $estoque, ')
          ..write('emoji: $emoji, ')
          ..write('ativo: $ativo')
          ..write(')'))
        .toString();
  }
}

class $ClientesTable extends Clientes
    with TableInfo<$ClientesTable, ClienteRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ClientesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _nomeMeta = const VerificationMeta('nome');
  @override
  late final GeneratedColumn<String> nome = GeneratedColumn<String>(
    'nome',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(
      minTextLength: 1,
      maxTextLength: 80,
    ),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _telefoneMeta = const VerificationMeta(
    'telefone',
  );
  @override
  late final GeneratedColumn<String> telefone = GeneratedColumn<String>(
    'telefone',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant(''),
  );
  static const VerificationMeta _instagramMeta = const VerificationMeta(
    'instagram',
  );
  @override
  late final GeneratedColumn<String> instagram = GeneratedColumn<String>(
    'instagram',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant(''),
  );
  static const VerificationMeta _criadoEmMeta = const VerificationMeta(
    'criadoEm',
  );
  @override
  late final GeneratedColumn<DateTime> criadoEm = GeneratedColumn<DateTime>(
    'criado_em',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    nome,
    telefone,
    instagram,
    criadoEm,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'cliente';
  @override
  VerificationContext validateIntegrity(
    Insertable<ClienteRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('nome')) {
      context.handle(
        _nomeMeta,
        nome.isAcceptableOrUnknown(data['nome']!, _nomeMeta),
      );
    } else if (isInserting) {
      context.missing(_nomeMeta);
    }
    if (data.containsKey('telefone')) {
      context.handle(
        _telefoneMeta,
        telefone.isAcceptableOrUnknown(data['telefone']!, _telefoneMeta),
      );
    }
    if (data.containsKey('instagram')) {
      context.handle(
        _instagramMeta,
        instagram.isAcceptableOrUnknown(data['instagram']!, _instagramMeta),
      );
    }
    if (data.containsKey('criado_em')) {
      context.handle(
        _criadoEmMeta,
        criadoEm.isAcceptableOrUnknown(data['criado_em']!, _criadoEmMeta),
      );
    } else if (isInserting) {
      context.missing(_criadoEmMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ClienteRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ClienteRow(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      nome: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}nome'],
      )!,
      telefone: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}telefone'],
      )!,
      instagram: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}instagram'],
      )!,
      criadoEm: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}criado_em'],
      )!,
    );
  }

  @override
  $ClientesTable createAlias(String alias) {
    return $ClientesTable(attachedDatabase, alias);
  }
}

class ClienteRow extends DataClass implements Insertable<ClienteRow> {
  final int id;
  final String nome;
  final String telefone;
  final String instagram;
  final DateTime criadoEm;
  const ClienteRow({
    required this.id,
    required this.nome,
    required this.telefone,
    required this.instagram,
    required this.criadoEm,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['nome'] = Variable<String>(nome);
    map['telefone'] = Variable<String>(telefone);
    map['instagram'] = Variable<String>(instagram);
    map['criado_em'] = Variable<DateTime>(criadoEm);
    return map;
  }

  ClientesCompanion toCompanion(bool nullToAbsent) {
    return ClientesCompanion(
      id: Value(id),
      nome: Value(nome),
      telefone: Value(telefone),
      instagram: Value(instagram),
      criadoEm: Value(criadoEm),
    );
  }

  factory ClienteRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ClienteRow(
      id: serializer.fromJson<int>(json['id']),
      nome: serializer.fromJson<String>(json['nome']),
      telefone: serializer.fromJson<String>(json['telefone']),
      instagram: serializer.fromJson<String>(json['instagram']),
      criadoEm: serializer.fromJson<DateTime>(json['criadoEm']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'nome': serializer.toJson<String>(nome),
      'telefone': serializer.toJson<String>(telefone),
      'instagram': serializer.toJson<String>(instagram),
      'criadoEm': serializer.toJson<DateTime>(criadoEm),
    };
  }

  ClienteRow copyWith({
    int? id,
    String? nome,
    String? telefone,
    String? instagram,
    DateTime? criadoEm,
  }) => ClienteRow(
    id: id ?? this.id,
    nome: nome ?? this.nome,
    telefone: telefone ?? this.telefone,
    instagram: instagram ?? this.instagram,
    criadoEm: criadoEm ?? this.criadoEm,
  );
  ClienteRow copyWithCompanion(ClientesCompanion data) {
    return ClienteRow(
      id: data.id.present ? data.id.value : this.id,
      nome: data.nome.present ? data.nome.value : this.nome,
      telefone: data.telefone.present ? data.telefone.value : this.telefone,
      instagram: data.instagram.present ? data.instagram.value : this.instagram,
      criadoEm: data.criadoEm.present ? data.criadoEm.value : this.criadoEm,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ClienteRow(')
          ..write('id: $id, ')
          ..write('nome: $nome, ')
          ..write('telefone: $telefone, ')
          ..write('instagram: $instagram, ')
          ..write('criadoEm: $criadoEm')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, nome, telefone, instagram, criadoEm);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ClienteRow &&
          other.id == this.id &&
          other.nome == this.nome &&
          other.telefone == this.telefone &&
          other.instagram == this.instagram &&
          other.criadoEm == this.criadoEm);
}

class ClientesCompanion extends UpdateCompanion<ClienteRow> {
  final Value<int> id;
  final Value<String> nome;
  final Value<String> telefone;
  final Value<String> instagram;
  final Value<DateTime> criadoEm;
  const ClientesCompanion({
    this.id = const Value.absent(),
    this.nome = const Value.absent(),
    this.telefone = const Value.absent(),
    this.instagram = const Value.absent(),
    this.criadoEm = const Value.absent(),
  });
  ClientesCompanion.insert({
    this.id = const Value.absent(),
    required String nome,
    this.telefone = const Value.absent(),
    this.instagram = const Value.absent(),
    required DateTime criadoEm,
  }) : nome = Value(nome),
       criadoEm = Value(criadoEm);
  static Insertable<ClienteRow> custom({
    Expression<int>? id,
    Expression<String>? nome,
    Expression<String>? telefone,
    Expression<String>? instagram,
    Expression<DateTime>? criadoEm,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (nome != null) 'nome': nome,
      if (telefone != null) 'telefone': telefone,
      if (instagram != null) 'instagram': instagram,
      if (criadoEm != null) 'criado_em': criadoEm,
    });
  }

  ClientesCompanion copyWith({
    Value<int>? id,
    Value<String>? nome,
    Value<String>? telefone,
    Value<String>? instagram,
    Value<DateTime>? criadoEm,
  }) {
    return ClientesCompanion(
      id: id ?? this.id,
      nome: nome ?? this.nome,
      telefone: telefone ?? this.telefone,
      instagram: instagram ?? this.instagram,
      criadoEm: criadoEm ?? this.criadoEm,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (nome.present) {
      map['nome'] = Variable<String>(nome.value);
    }
    if (telefone.present) {
      map['telefone'] = Variable<String>(telefone.value);
    }
    if (instagram.present) {
      map['instagram'] = Variable<String>(instagram.value);
    }
    if (criadoEm.present) {
      map['criado_em'] = Variable<DateTime>(criadoEm.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ClientesCompanion(')
          ..write('id: $id, ')
          ..write('nome: $nome, ')
          ..write('telefone: $telefone, ')
          ..write('instagram: $instagram, ')
          ..write('criadoEm: $criadoEm')
          ..write(')'))
        .toString();
  }
}

class $VendasTable extends Vendas with TableInfo<$VendasTable, VendaRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $VendasTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _clienteIdMeta = const VerificationMeta(
    'clienteId',
  );
  @override
  late final GeneratedColumn<int> clienteId = GeneratedColumn<int>(
    'cliente_id',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES cliente (id) ON DELETE SET NULL',
    ),
  );
  static const VerificationMeta _dataHoraMeta = const VerificationMeta(
    'dataHora',
  );
  @override
  late final GeneratedColumn<DateTime> dataHora = GeneratedColumn<DateTime>(
    'data_hora',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _formaPagamentoMeta = const VerificationMeta(
    'formaPagamento',
  );
  @override
  late final GeneratedColumn<String> formaPagamento = GeneratedColumn<String>(
    'forma_pagamento',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _totalMeta = const VerificationMeta('total');
  @override
  late final GeneratedColumn<double> total = GeneratedColumn<double>(
    'total',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    clienteId,
    dataHora,
    formaPagamento,
    total,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'venda';
  @override
  VerificationContext validateIntegrity(
    Insertable<VendaRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('cliente_id')) {
      context.handle(
        _clienteIdMeta,
        clienteId.isAcceptableOrUnknown(data['cliente_id']!, _clienteIdMeta),
      );
    }
    if (data.containsKey('data_hora')) {
      context.handle(
        _dataHoraMeta,
        dataHora.isAcceptableOrUnknown(data['data_hora']!, _dataHoraMeta),
      );
    } else if (isInserting) {
      context.missing(_dataHoraMeta);
    }
    if (data.containsKey('forma_pagamento')) {
      context.handle(
        _formaPagamentoMeta,
        formaPagamento.isAcceptableOrUnknown(
          data['forma_pagamento']!,
          _formaPagamentoMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_formaPagamentoMeta);
    }
    if (data.containsKey('total')) {
      context.handle(
        _totalMeta,
        total.isAcceptableOrUnknown(data['total']!, _totalMeta),
      );
    } else if (isInserting) {
      context.missing(_totalMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  VendaRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return VendaRow(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      clienteId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}cliente_id'],
      ),
      dataHora: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}data_hora'],
      )!,
      formaPagamento: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}forma_pagamento'],
      )!,
      total: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}total'],
      )!,
    );
  }

  @override
  $VendasTable createAlias(String alias) {
    return $VendasTable(attachedDatabase, alias);
  }
}

class VendaRow extends DataClass implements Insertable<VendaRow> {
  final int id;
  final int? clienteId;
  final DateTime dataHora;
  final String formaPagamento;
  final double total;
  const VendaRow({
    required this.id,
    this.clienteId,
    required this.dataHora,
    required this.formaPagamento,
    required this.total,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || clienteId != null) {
      map['cliente_id'] = Variable<int>(clienteId);
    }
    map['data_hora'] = Variable<DateTime>(dataHora);
    map['forma_pagamento'] = Variable<String>(formaPagamento);
    map['total'] = Variable<double>(total);
    return map;
  }

  VendasCompanion toCompanion(bool nullToAbsent) {
    return VendasCompanion(
      id: Value(id),
      clienteId: clienteId == null && nullToAbsent
          ? const Value.absent()
          : Value(clienteId),
      dataHora: Value(dataHora),
      formaPagamento: Value(formaPagamento),
      total: Value(total),
    );
  }

  factory VendaRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return VendaRow(
      id: serializer.fromJson<int>(json['id']),
      clienteId: serializer.fromJson<int?>(json['clienteId']),
      dataHora: serializer.fromJson<DateTime>(json['dataHora']),
      formaPagamento: serializer.fromJson<String>(json['formaPagamento']),
      total: serializer.fromJson<double>(json['total']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'clienteId': serializer.toJson<int?>(clienteId),
      'dataHora': serializer.toJson<DateTime>(dataHora),
      'formaPagamento': serializer.toJson<String>(formaPagamento),
      'total': serializer.toJson<double>(total),
    };
  }

  VendaRow copyWith({
    int? id,
    Value<int?> clienteId = const Value.absent(),
    DateTime? dataHora,
    String? formaPagamento,
    double? total,
  }) => VendaRow(
    id: id ?? this.id,
    clienteId: clienteId.present ? clienteId.value : this.clienteId,
    dataHora: dataHora ?? this.dataHora,
    formaPagamento: formaPagamento ?? this.formaPagamento,
    total: total ?? this.total,
  );
  VendaRow copyWithCompanion(VendasCompanion data) {
    return VendaRow(
      id: data.id.present ? data.id.value : this.id,
      clienteId: data.clienteId.present ? data.clienteId.value : this.clienteId,
      dataHora: data.dataHora.present ? data.dataHora.value : this.dataHora,
      formaPagamento: data.formaPagamento.present
          ? data.formaPagamento.value
          : this.formaPagamento,
      total: data.total.present ? data.total.value : this.total,
    );
  }

  @override
  String toString() {
    return (StringBuffer('VendaRow(')
          ..write('id: $id, ')
          ..write('clienteId: $clienteId, ')
          ..write('dataHora: $dataHora, ')
          ..write('formaPagamento: $formaPagamento, ')
          ..write('total: $total')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, clienteId, dataHora, formaPagamento, total);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is VendaRow &&
          other.id == this.id &&
          other.clienteId == this.clienteId &&
          other.dataHora == this.dataHora &&
          other.formaPagamento == this.formaPagamento &&
          other.total == this.total);
}

class VendasCompanion extends UpdateCompanion<VendaRow> {
  final Value<int> id;
  final Value<int?> clienteId;
  final Value<DateTime> dataHora;
  final Value<String> formaPagamento;
  final Value<double> total;
  const VendasCompanion({
    this.id = const Value.absent(),
    this.clienteId = const Value.absent(),
    this.dataHora = const Value.absent(),
    this.formaPagamento = const Value.absent(),
    this.total = const Value.absent(),
  });
  VendasCompanion.insert({
    this.id = const Value.absent(),
    this.clienteId = const Value.absent(),
    required DateTime dataHora,
    required String formaPagamento,
    required double total,
  }) : dataHora = Value(dataHora),
       formaPagamento = Value(formaPagamento),
       total = Value(total);
  static Insertable<VendaRow> custom({
    Expression<int>? id,
    Expression<int>? clienteId,
    Expression<DateTime>? dataHora,
    Expression<String>? formaPagamento,
    Expression<double>? total,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (clienteId != null) 'cliente_id': clienteId,
      if (dataHora != null) 'data_hora': dataHora,
      if (formaPagamento != null) 'forma_pagamento': formaPagamento,
      if (total != null) 'total': total,
    });
  }

  VendasCompanion copyWith({
    Value<int>? id,
    Value<int?>? clienteId,
    Value<DateTime>? dataHora,
    Value<String>? formaPagamento,
    Value<double>? total,
  }) {
    return VendasCompanion(
      id: id ?? this.id,
      clienteId: clienteId ?? this.clienteId,
      dataHora: dataHora ?? this.dataHora,
      formaPagamento: formaPagamento ?? this.formaPagamento,
      total: total ?? this.total,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (clienteId.present) {
      map['cliente_id'] = Variable<int>(clienteId.value);
    }
    if (dataHora.present) {
      map['data_hora'] = Variable<DateTime>(dataHora.value);
    }
    if (formaPagamento.present) {
      map['forma_pagamento'] = Variable<String>(formaPagamento.value);
    }
    if (total.present) {
      map['total'] = Variable<double>(total.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('VendasCompanion(')
          ..write('id: $id, ')
          ..write('clienteId: $clienteId, ')
          ..write('dataHora: $dataHora, ')
          ..write('formaPagamento: $formaPagamento, ')
          ..write('total: $total')
          ..write(')'))
        .toString();
  }
}

class $ItensVendaTable extends ItensVenda
    with TableInfo<$ItensVendaTable, ItemVendaRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ItensVendaTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _vendaIdMeta = const VerificationMeta(
    'vendaId',
  );
  @override
  late final GeneratedColumn<int> vendaId = GeneratedColumn<int>(
    'venda_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES venda (id) ON DELETE CASCADE',
    ),
  );
  static const VerificationMeta _produtoIdMeta = const VerificationMeta(
    'produtoId',
  );
  @override
  late final GeneratedColumn<int> produtoId = GeneratedColumn<int>(
    'produto_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES produto (id)',
    ),
  );
  static const VerificationMeta _quantidadeMeta = const VerificationMeta(
    'quantidade',
  );
  @override
  late final GeneratedColumn<int> quantidade = GeneratedColumn<int>(
    'quantidade',
    aliasedName,
    false,
    check: () => ComparableExpr(quantidade).isBiggerThanValue(0),
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _precoUnitarioMeta = const VerificationMeta(
    'precoUnitario',
  );
  @override
  late final GeneratedColumn<double> precoUnitario = GeneratedColumn<double>(
    'preco_unitario',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    vendaId,
    produtoId,
    quantidade,
    precoUnitario,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'item_venda';
  @override
  VerificationContext validateIntegrity(
    Insertable<ItemVendaRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('venda_id')) {
      context.handle(
        _vendaIdMeta,
        vendaId.isAcceptableOrUnknown(data['venda_id']!, _vendaIdMeta),
      );
    } else if (isInserting) {
      context.missing(_vendaIdMeta);
    }
    if (data.containsKey('produto_id')) {
      context.handle(
        _produtoIdMeta,
        produtoId.isAcceptableOrUnknown(data['produto_id']!, _produtoIdMeta),
      );
    } else if (isInserting) {
      context.missing(_produtoIdMeta);
    }
    if (data.containsKey('quantidade')) {
      context.handle(
        _quantidadeMeta,
        quantidade.isAcceptableOrUnknown(data['quantidade']!, _quantidadeMeta),
      );
    } else if (isInserting) {
      context.missing(_quantidadeMeta);
    }
    if (data.containsKey('preco_unitario')) {
      context.handle(
        _precoUnitarioMeta,
        precoUnitario.isAcceptableOrUnknown(
          data['preco_unitario']!,
          _precoUnitarioMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_precoUnitarioMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ItemVendaRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ItemVendaRow(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      vendaId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}venda_id'],
      )!,
      produtoId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}produto_id'],
      )!,
      quantidade: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}quantidade'],
      )!,
      precoUnitario: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}preco_unitario'],
      )!,
    );
  }

  @override
  $ItensVendaTable createAlias(String alias) {
    return $ItensVendaTable(attachedDatabase, alias);
  }
}

class ItemVendaRow extends DataClass implements Insertable<ItemVendaRow> {
  final int id;
  final int vendaId;
  final int produtoId;
  final int quantidade;
  final double precoUnitario;
  const ItemVendaRow({
    required this.id,
    required this.vendaId,
    required this.produtoId,
    required this.quantidade,
    required this.precoUnitario,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['venda_id'] = Variable<int>(vendaId);
    map['produto_id'] = Variable<int>(produtoId);
    map['quantidade'] = Variable<int>(quantidade);
    map['preco_unitario'] = Variable<double>(precoUnitario);
    return map;
  }

  ItensVendaCompanion toCompanion(bool nullToAbsent) {
    return ItensVendaCompanion(
      id: Value(id),
      vendaId: Value(vendaId),
      produtoId: Value(produtoId),
      quantidade: Value(quantidade),
      precoUnitario: Value(precoUnitario),
    );
  }

  factory ItemVendaRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ItemVendaRow(
      id: serializer.fromJson<int>(json['id']),
      vendaId: serializer.fromJson<int>(json['vendaId']),
      produtoId: serializer.fromJson<int>(json['produtoId']),
      quantidade: serializer.fromJson<int>(json['quantidade']),
      precoUnitario: serializer.fromJson<double>(json['precoUnitario']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'vendaId': serializer.toJson<int>(vendaId),
      'produtoId': serializer.toJson<int>(produtoId),
      'quantidade': serializer.toJson<int>(quantidade),
      'precoUnitario': serializer.toJson<double>(precoUnitario),
    };
  }

  ItemVendaRow copyWith({
    int? id,
    int? vendaId,
    int? produtoId,
    int? quantidade,
    double? precoUnitario,
  }) => ItemVendaRow(
    id: id ?? this.id,
    vendaId: vendaId ?? this.vendaId,
    produtoId: produtoId ?? this.produtoId,
    quantidade: quantidade ?? this.quantidade,
    precoUnitario: precoUnitario ?? this.precoUnitario,
  );
  ItemVendaRow copyWithCompanion(ItensVendaCompanion data) {
    return ItemVendaRow(
      id: data.id.present ? data.id.value : this.id,
      vendaId: data.vendaId.present ? data.vendaId.value : this.vendaId,
      produtoId: data.produtoId.present ? data.produtoId.value : this.produtoId,
      quantidade: data.quantidade.present
          ? data.quantidade.value
          : this.quantidade,
      precoUnitario: data.precoUnitario.present
          ? data.precoUnitario.value
          : this.precoUnitario,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ItemVendaRow(')
          ..write('id: $id, ')
          ..write('vendaId: $vendaId, ')
          ..write('produtoId: $produtoId, ')
          ..write('quantidade: $quantidade, ')
          ..write('precoUnitario: $precoUnitario')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, vendaId, produtoId, quantidade, precoUnitario);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ItemVendaRow &&
          other.id == this.id &&
          other.vendaId == this.vendaId &&
          other.produtoId == this.produtoId &&
          other.quantidade == this.quantidade &&
          other.precoUnitario == this.precoUnitario);
}

class ItensVendaCompanion extends UpdateCompanion<ItemVendaRow> {
  final Value<int> id;
  final Value<int> vendaId;
  final Value<int> produtoId;
  final Value<int> quantidade;
  final Value<double> precoUnitario;
  const ItensVendaCompanion({
    this.id = const Value.absent(),
    this.vendaId = const Value.absent(),
    this.produtoId = const Value.absent(),
    this.quantidade = const Value.absent(),
    this.precoUnitario = const Value.absent(),
  });
  ItensVendaCompanion.insert({
    this.id = const Value.absent(),
    required int vendaId,
    required int produtoId,
    required int quantidade,
    required double precoUnitario,
  }) : vendaId = Value(vendaId),
       produtoId = Value(produtoId),
       quantidade = Value(quantidade),
       precoUnitario = Value(precoUnitario);
  static Insertable<ItemVendaRow> custom({
    Expression<int>? id,
    Expression<int>? vendaId,
    Expression<int>? produtoId,
    Expression<int>? quantidade,
    Expression<double>? precoUnitario,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (vendaId != null) 'venda_id': vendaId,
      if (produtoId != null) 'produto_id': produtoId,
      if (quantidade != null) 'quantidade': quantidade,
      if (precoUnitario != null) 'preco_unitario': precoUnitario,
    });
  }

  ItensVendaCompanion copyWith({
    Value<int>? id,
    Value<int>? vendaId,
    Value<int>? produtoId,
    Value<int>? quantidade,
    Value<double>? precoUnitario,
  }) {
    return ItensVendaCompanion(
      id: id ?? this.id,
      vendaId: vendaId ?? this.vendaId,
      produtoId: produtoId ?? this.produtoId,
      quantidade: quantidade ?? this.quantidade,
      precoUnitario: precoUnitario ?? this.precoUnitario,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (vendaId.present) {
      map['venda_id'] = Variable<int>(vendaId.value);
    }
    if (produtoId.present) {
      map['produto_id'] = Variable<int>(produtoId.value);
    }
    if (quantidade.present) {
      map['quantidade'] = Variable<int>(quantidade.value);
    }
    if (precoUnitario.present) {
      map['preco_unitario'] = Variable<double>(precoUnitario.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ItensVendaCompanion(')
          ..write('id: $id, ')
          ..write('vendaId: $vendaId, ')
          ..write('produtoId: $produtoId, ')
          ..write('quantidade: $quantidade, ')
          ..write('precoUnitario: $precoUnitario')
          ..write(')'))
        .toString();
  }
}

class $AvaliacoesTable extends Avaliacoes
    with TableInfo<$AvaliacoesTable, AvaliacaoRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AvaliacoesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _clienteIdMeta = const VerificationMeta(
    'clienteId',
  );
  @override
  late final GeneratedColumn<int> clienteId = GeneratedColumn<int>(
    'cliente_id',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES cliente (id) ON DELETE SET NULL',
    ),
  );
  static const VerificationMeta _notaMeta = const VerificationMeta('nota');
  @override
  late final GeneratedColumn<int> nota = GeneratedColumn<int>(
    'nota',
    aliasedName,
    false,
    check: () => ComparableExpr(nota).isBetweenValues(0, 10),
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _comentarioMeta = const VerificationMeta(
    'comentario',
  );
  @override
  late final GeneratedColumn<String> comentario = GeneratedColumn<String>(
    'comentario',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant(''),
  );
  static const VerificationMeta _dataHoraMeta = const VerificationMeta(
    'dataHora',
  );
  @override
  late final GeneratedColumn<DateTime> dataHora = GeneratedColumn<DateTime>(
    'data_hora',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    clienteId,
    nota,
    comentario,
    dataHora,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'avaliacao';
  @override
  VerificationContext validateIntegrity(
    Insertable<AvaliacaoRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('cliente_id')) {
      context.handle(
        _clienteIdMeta,
        clienteId.isAcceptableOrUnknown(data['cliente_id']!, _clienteIdMeta),
      );
    }
    if (data.containsKey('nota')) {
      context.handle(
        _notaMeta,
        nota.isAcceptableOrUnknown(data['nota']!, _notaMeta),
      );
    } else if (isInserting) {
      context.missing(_notaMeta);
    }
    if (data.containsKey('comentario')) {
      context.handle(
        _comentarioMeta,
        comentario.isAcceptableOrUnknown(data['comentario']!, _comentarioMeta),
      );
    }
    if (data.containsKey('data_hora')) {
      context.handle(
        _dataHoraMeta,
        dataHora.isAcceptableOrUnknown(data['data_hora']!, _dataHoraMeta),
      );
    } else if (isInserting) {
      context.missing(_dataHoraMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  AvaliacaoRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return AvaliacaoRow(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      clienteId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}cliente_id'],
      ),
      nota: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}nota'],
      )!,
      comentario: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}comentario'],
      )!,
      dataHora: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}data_hora'],
      )!,
    );
  }

  @override
  $AvaliacoesTable createAlias(String alias) {
    return $AvaliacoesTable(attachedDatabase, alias);
  }
}

class AvaliacaoRow extends DataClass implements Insertable<AvaliacaoRow> {
  final int id;
  final int? clienteId;
  final int nota;
  final String comentario;
  final DateTime dataHora;
  const AvaliacaoRow({
    required this.id,
    this.clienteId,
    required this.nota,
    required this.comentario,
    required this.dataHora,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || clienteId != null) {
      map['cliente_id'] = Variable<int>(clienteId);
    }
    map['nota'] = Variable<int>(nota);
    map['comentario'] = Variable<String>(comentario);
    map['data_hora'] = Variable<DateTime>(dataHora);
    return map;
  }

  AvaliacoesCompanion toCompanion(bool nullToAbsent) {
    return AvaliacoesCompanion(
      id: Value(id),
      clienteId: clienteId == null && nullToAbsent
          ? const Value.absent()
          : Value(clienteId),
      nota: Value(nota),
      comentario: Value(comentario),
      dataHora: Value(dataHora),
    );
  }

  factory AvaliacaoRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return AvaliacaoRow(
      id: serializer.fromJson<int>(json['id']),
      clienteId: serializer.fromJson<int?>(json['clienteId']),
      nota: serializer.fromJson<int>(json['nota']),
      comentario: serializer.fromJson<String>(json['comentario']),
      dataHora: serializer.fromJson<DateTime>(json['dataHora']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'clienteId': serializer.toJson<int?>(clienteId),
      'nota': serializer.toJson<int>(nota),
      'comentario': serializer.toJson<String>(comentario),
      'dataHora': serializer.toJson<DateTime>(dataHora),
    };
  }

  AvaliacaoRow copyWith({
    int? id,
    Value<int?> clienteId = const Value.absent(),
    int? nota,
    String? comentario,
    DateTime? dataHora,
  }) => AvaliacaoRow(
    id: id ?? this.id,
    clienteId: clienteId.present ? clienteId.value : this.clienteId,
    nota: nota ?? this.nota,
    comentario: comentario ?? this.comentario,
    dataHora: dataHora ?? this.dataHora,
  );
  AvaliacaoRow copyWithCompanion(AvaliacoesCompanion data) {
    return AvaliacaoRow(
      id: data.id.present ? data.id.value : this.id,
      clienteId: data.clienteId.present ? data.clienteId.value : this.clienteId,
      nota: data.nota.present ? data.nota.value : this.nota,
      comentario: data.comentario.present
          ? data.comentario.value
          : this.comentario,
      dataHora: data.dataHora.present ? data.dataHora.value : this.dataHora,
    );
  }

  @override
  String toString() {
    return (StringBuffer('AvaliacaoRow(')
          ..write('id: $id, ')
          ..write('clienteId: $clienteId, ')
          ..write('nota: $nota, ')
          ..write('comentario: $comentario, ')
          ..write('dataHora: $dataHora')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, clienteId, nota, comentario, dataHora);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AvaliacaoRow &&
          other.id == this.id &&
          other.clienteId == this.clienteId &&
          other.nota == this.nota &&
          other.comentario == this.comentario &&
          other.dataHora == this.dataHora);
}

class AvaliacoesCompanion extends UpdateCompanion<AvaliacaoRow> {
  final Value<int> id;
  final Value<int?> clienteId;
  final Value<int> nota;
  final Value<String> comentario;
  final Value<DateTime> dataHora;
  const AvaliacoesCompanion({
    this.id = const Value.absent(),
    this.clienteId = const Value.absent(),
    this.nota = const Value.absent(),
    this.comentario = const Value.absent(),
    this.dataHora = const Value.absent(),
  });
  AvaliacoesCompanion.insert({
    this.id = const Value.absent(),
    this.clienteId = const Value.absent(),
    required int nota,
    this.comentario = const Value.absent(),
    required DateTime dataHora,
  }) : nota = Value(nota),
       dataHora = Value(dataHora);
  static Insertable<AvaliacaoRow> custom({
    Expression<int>? id,
    Expression<int>? clienteId,
    Expression<int>? nota,
    Expression<String>? comentario,
    Expression<DateTime>? dataHora,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (clienteId != null) 'cliente_id': clienteId,
      if (nota != null) 'nota': nota,
      if (comentario != null) 'comentario': comentario,
      if (dataHora != null) 'data_hora': dataHora,
    });
  }

  AvaliacoesCompanion copyWith({
    Value<int>? id,
    Value<int?>? clienteId,
    Value<int>? nota,
    Value<String>? comentario,
    Value<DateTime>? dataHora,
  }) {
    return AvaliacoesCompanion(
      id: id ?? this.id,
      clienteId: clienteId ?? this.clienteId,
      nota: nota ?? this.nota,
      comentario: comentario ?? this.comentario,
      dataHora: dataHora ?? this.dataHora,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (clienteId.present) {
      map['cliente_id'] = Variable<int>(clienteId.value);
    }
    if (nota.present) {
      map['nota'] = Variable<int>(nota.value);
    }
    if (comentario.present) {
      map['comentario'] = Variable<String>(comentario.value);
    }
    if (dataHora.present) {
      map['data_hora'] = Variable<DateTime>(dataHora.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AvaliacoesCompanion(')
          ..write('id: $id, ')
          ..write('clienteId: $clienteId, ')
          ..write('nota: $nota, ')
          ..write('comentario: $comentario, ')
          ..write('dataHora: $dataHora')
          ..write(')'))
        .toString();
  }
}

class $FeriadosTable extends Feriados
    with TableInfo<$FeriadosTable, FeriadoRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $FeriadosTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _dataMeta = const VerificationMeta('data');
  @override
  late final GeneratedColumn<DateTime> data = GeneratedColumn<DateTime>(
    'data',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nomeMeta = const VerificationMeta('nome');
  @override
  late final GeneratedColumn<String> nome = GeneratedColumn<String>(
    'nome',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _tipoMeta = const VerificationMeta('tipo');
  @override
  late final GeneratedColumn<String> tipo = GeneratedColumn<String>(
    'tipo',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('national'),
  );
  @override
  List<GeneratedColumn> get $columns => [data, nome, tipo];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'feriado';
  @override
  VerificationContext validateIntegrity(
    Insertable<FeriadoRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('data')) {
      context.handle(
        _dataMeta,
        this.data.isAcceptableOrUnknown(data['data']!, _dataMeta),
      );
    } else if (isInserting) {
      context.missing(_dataMeta);
    }
    if (data.containsKey('nome')) {
      context.handle(
        _nomeMeta,
        nome.isAcceptableOrUnknown(data['nome']!, _nomeMeta),
      );
    } else if (isInserting) {
      context.missing(_nomeMeta);
    }
    if (data.containsKey('tipo')) {
      context.handle(
        _tipoMeta,
        tipo.isAcceptableOrUnknown(data['tipo']!, _tipoMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {data};
  @override
  FeriadoRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return FeriadoRow(
      data: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}data'],
      )!,
      nome: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}nome'],
      )!,
      tipo: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}tipo'],
      )!,
    );
  }

  @override
  $FeriadosTable createAlias(String alias) {
    return $FeriadosTable(attachedDatabase, alias);
  }
}

class FeriadoRow extends DataClass implements Insertable<FeriadoRow> {
  final DateTime data;
  final String nome;
  final String tipo;
  const FeriadoRow({
    required this.data,
    required this.nome,
    required this.tipo,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['data'] = Variable<DateTime>(data);
    map['nome'] = Variable<String>(nome);
    map['tipo'] = Variable<String>(tipo);
    return map;
  }

  FeriadosCompanion toCompanion(bool nullToAbsent) {
    return FeriadosCompanion(
      data: Value(data),
      nome: Value(nome),
      tipo: Value(tipo),
    );
  }

  factory FeriadoRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return FeriadoRow(
      data: serializer.fromJson<DateTime>(json['data']),
      nome: serializer.fromJson<String>(json['nome']),
      tipo: serializer.fromJson<String>(json['tipo']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'data': serializer.toJson<DateTime>(data),
      'nome': serializer.toJson<String>(nome),
      'tipo': serializer.toJson<String>(tipo),
    };
  }

  FeriadoRow copyWith({DateTime? data, String? nome, String? tipo}) =>
      FeriadoRow(
        data: data ?? this.data,
        nome: nome ?? this.nome,
        tipo: tipo ?? this.tipo,
      );
  FeriadoRow copyWithCompanion(FeriadosCompanion data) {
    return FeriadoRow(
      data: data.data.present ? data.data.value : this.data,
      nome: data.nome.present ? data.nome.value : this.nome,
      tipo: data.tipo.present ? data.tipo.value : this.tipo,
    );
  }

  @override
  String toString() {
    return (StringBuffer('FeriadoRow(')
          ..write('data: $data, ')
          ..write('nome: $nome, ')
          ..write('tipo: $tipo')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(data, nome, tipo);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FeriadoRow &&
          other.data == this.data &&
          other.nome == this.nome &&
          other.tipo == this.tipo);
}

class FeriadosCompanion extends UpdateCompanion<FeriadoRow> {
  final Value<DateTime> data;
  final Value<String> nome;
  final Value<String> tipo;
  final Value<int> rowid;
  const FeriadosCompanion({
    this.data = const Value.absent(),
    this.nome = const Value.absent(),
    this.tipo = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  FeriadosCompanion.insert({
    required DateTime data,
    required String nome,
    this.tipo = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : data = Value(data),
       nome = Value(nome);
  static Insertable<FeriadoRow> custom({
    Expression<DateTime>? data,
    Expression<String>? nome,
    Expression<String>? tipo,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (data != null) 'data': data,
      if (nome != null) 'nome': nome,
      if (tipo != null) 'tipo': tipo,
      if (rowid != null) 'rowid': rowid,
    });
  }

  FeriadosCompanion copyWith({
    Value<DateTime>? data,
    Value<String>? nome,
    Value<String>? tipo,
    Value<int>? rowid,
  }) {
    return FeriadosCompanion(
      data: data ?? this.data,
      nome: nome ?? this.nome,
      tipo: tipo ?? this.tipo,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (data.present) {
      map['data'] = Variable<DateTime>(data.value);
    }
    if (nome.present) {
      map['nome'] = Variable<String>(nome.value);
    }
    if (tipo.present) {
      map['tipo'] = Variable<String>(tipo.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FeriadosCompanion(')
          ..write('data: $data, ')
          ..write('nome: $nome, ')
          ..write('tipo: $tipo, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $EmpresasTable empresas = $EmpresasTable(this);
  late final $ProdutosTable produtos = $ProdutosTable(this);
  late final $ClientesTable clientes = $ClientesTable(this);
  late final $VendasTable vendas = $VendasTable(this);
  late final $ItensVendaTable itensVenda = $ItensVendaTable(this);
  late final $AvaliacoesTable avaliacoes = $AvaliacoesTable(this);
  late final $FeriadosTable feriados = $FeriadosTable(this);
  late final Index idxVendaData = Index(
    'idx_venda_data',
    'CREATE INDEX idx_venda_data ON venda (data_hora)',
  );
  late final Index idxVendaCliente = Index(
    'idx_venda_cliente',
    'CREATE INDEX idx_venda_cliente ON venda (cliente_id)',
  );
  late final Index idxItemVenda = Index(
    'idx_item_venda',
    'CREATE INDEX idx_item_venda ON item_venda (venda_id)',
  );
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    empresas,
    produtos,
    clientes,
    vendas,
    itensVenda,
    avaliacoes,
    feriados,
    idxVendaData,
    idxVendaCliente,
    idxItemVenda,
  ];
  @override
  StreamQueryUpdateRules get streamUpdateRules => const StreamQueryUpdateRules([
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'cliente',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('venda', kind: UpdateKind.update)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'venda',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('item_venda', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'cliente',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('avaliacao', kind: UpdateKind.update)],
    ),
  ]);
  @override
  DriftDatabaseOptions get options =>
      const DriftDatabaseOptions(storeDateTimeAsText: true);
}

typedef $$EmpresasTableCreateCompanionBuilder =
    EmpresasCompanion Function({
      Value<int> id,
      required String nome,
      required String segmento,
      Value<String> cidade,
      Value<String> instagram,
      Value<String> whatsapp,
    });
typedef $$EmpresasTableUpdateCompanionBuilder =
    EmpresasCompanion Function({
      Value<int> id,
      Value<String> nome,
      Value<String> segmento,
      Value<String> cidade,
      Value<String> instagram,
      Value<String> whatsapp,
    });

class $$EmpresasTableFilterComposer
    extends Composer<_$AppDatabase, $EmpresasTable> {
  $$EmpresasTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get nome => $composableBuilder(
    column: $table.nome,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get segmento => $composableBuilder(
    column: $table.segmento,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get cidade => $composableBuilder(
    column: $table.cidade,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get instagram => $composableBuilder(
    column: $table.instagram,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get whatsapp => $composableBuilder(
    column: $table.whatsapp,
    builder: (column) => ColumnFilters(column),
  );
}

class $$EmpresasTableOrderingComposer
    extends Composer<_$AppDatabase, $EmpresasTable> {
  $$EmpresasTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get nome => $composableBuilder(
    column: $table.nome,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get segmento => $composableBuilder(
    column: $table.segmento,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get cidade => $composableBuilder(
    column: $table.cidade,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get instagram => $composableBuilder(
    column: $table.instagram,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get whatsapp => $composableBuilder(
    column: $table.whatsapp,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$EmpresasTableAnnotationComposer
    extends Composer<_$AppDatabase, $EmpresasTable> {
  $$EmpresasTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get nome =>
      $composableBuilder(column: $table.nome, builder: (column) => column);

  GeneratedColumn<String> get segmento =>
      $composableBuilder(column: $table.segmento, builder: (column) => column);

  GeneratedColumn<String> get cidade =>
      $composableBuilder(column: $table.cidade, builder: (column) => column);

  GeneratedColumn<String> get instagram =>
      $composableBuilder(column: $table.instagram, builder: (column) => column);

  GeneratedColumn<String> get whatsapp =>
      $composableBuilder(column: $table.whatsapp, builder: (column) => column);
}

class $$EmpresasTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $EmpresasTable,
          EmpresaRow,
          $$EmpresasTableFilterComposer,
          $$EmpresasTableOrderingComposer,
          $$EmpresasTableAnnotationComposer,
          $$EmpresasTableCreateCompanionBuilder,
          $$EmpresasTableUpdateCompanionBuilder,
          (
            EmpresaRow,
            BaseReferences<_$AppDatabase, $EmpresasTable, EmpresaRow>,
          ),
          EmpresaRow,
          PrefetchHooks Function()
        > {
  $$EmpresasTableTableManager(_$AppDatabase db, $EmpresasTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$EmpresasTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$EmpresasTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$EmpresasTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> nome = const Value.absent(),
                Value<String> segmento = const Value.absent(),
                Value<String> cidade = const Value.absent(),
                Value<String> instagram = const Value.absent(),
                Value<String> whatsapp = const Value.absent(),
              }) => EmpresasCompanion(
                id: id,
                nome: nome,
                segmento: segmento,
                cidade: cidade,
                instagram: instagram,
                whatsapp: whatsapp,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String nome,
                required String segmento,
                Value<String> cidade = const Value.absent(),
                Value<String> instagram = const Value.absent(),
                Value<String> whatsapp = const Value.absent(),
              }) => EmpresasCompanion.insert(
                id: id,
                nome: nome,
                segmento: segmento,
                cidade: cidade,
                instagram: instagram,
                whatsapp: whatsapp,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$EmpresasTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $EmpresasTable,
      EmpresaRow,
      $$EmpresasTableFilterComposer,
      $$EmpresasTableOrderingComposer,
      $$EmpresasTableAnnotationComposer,
      $$EmpresasTableCreateCompanionBuilder,
      $$EmpresasTableUpdateCompanionBuilder,
      (EmpresaRow, BaseReferences<_$AppDatabase, $EmpresasTable, EmpresaRow>),
      EmpresaRow,
      PrefetchHooks Function()
    >;
typedef $$ProdutosTableCreateCompanionBuilder =
    ProdutosCompanion Function({
      Value<int> id,
      required String nome,
      required String categoria,
      required double preco,
      Value<double> custo,
      Value<int> estoque,
      Value<String> emoji,
      Value<bool> ativo,
    });
typedef $$ProdutosTableUpdateCompanionBuilder =
    ProdutosCompanion Function({
      Value<int> id,
      Value<String> nome,
      Value<String> categoria,
      Value<double> preco,
      Value<double> custo,
      Value<int> estoque,
      Value<String> emoji,
      Value<bool> ativo,
    });

final class $$ProdutosTableReferences
    extends BaseReferences<_$AppDatabase, $ProdutosTable, ProdutoRow> {
  $$ProdutosTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$ItensVendaTable, List<ItemVendaRow>>
  _itensVendaRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.itensVenda,
    aliasName: $_aliasNameGenerator(db.produtos.id, db.itensVenda.produtoId),
  );

  $$ItensVendaTableProcessedTableManager get itensVendaRefs {
    final manager = $$ItensVendaTableTableManager(
      $_db,
      $_db.itensVenda,
    ).filter((f) => f.produtoId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_itensVendaRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$ProdutosTableFilterComposer
    extends Composer<_$AppDatabase, $ProdutosTable> {
  $$ProdutosTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get nome => $composableBuilder(
    column: $table.nome,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get categoria => $composableBuilder(
    column: $table.categoria,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get preco => $composableBuilder(
    column: $table.preco,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get custo => $composableBuilder(
    column: $table.custo,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get estoque => $composableBuilder(
    column: $table.estoque,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get emoji => $composableBuilder(
    column: $table.emoji,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get ativo => $composableBuilder(
    column: $table.ativo,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> itensVendaRefs(
    Expression<bool> Function($$ItensVendaTableFilterComposer f) f,
  ) {
    final $$ItensVendaTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.itensVenda,
      getReferencedColumn: (t) => t.produtoId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ItensVendaTableFilterComposer(
            $db: $db,
            $table: $db.itensVenda,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$ProdutosTableOrderingComposer
    extends Composer<_$AppDatabase, $ProdutosTable> {
  $$ProdutosTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get nome => $composableBuilder(
    column: $table.nome,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get categoria => $composableBuilder(
    column: $table.categoria,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get preco => $composableBuilder(
    column: $table.preco,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get custo => $composableBuilder(
    column: $table.custo,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get estoque => $composableBuilder(
    column: $table.estoque,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get emoji => $composableBuilder(
    column: $table.emoji,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get ativo => $composableBuilder(
    column: $table.ativo,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$ProdutosTableAnnotationComposer
    extends Composer<_$AppDatabase, $ProdutosTable> {
  $$ProdutosTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get nome =>
      $composableBuilder(column: $table.nome, builder: (column) => column);

  GeneratedColumn<String> get categoria =>
      $composableBuilder(column: $table.categoria, builder: (column) => column);

  GeneratedColumn<double> get preco =>
      $composableBuilder(column: $table.preco, builder: (column) => column);

  GeneratedColumn<double> get custo =>
      $composableBuilder(column: $table.custo, builder: (column) => column);

  GeneratedColumn<int> get estoque =>
      $composableBuilder(column: $table.estoque, builder: (column) => column);

  GeneratedColumn<String> get emoji =>
      $composableBuilder(column: $table.emoji, builder: (column) => column);

  GeneratedColumn<bool> get ativo =>
      $composableBuilder(column: $table.ativo, builder: (column) => column);

  Expression<T> itensVendaRefs<T extends Object>(
    Expression<T> Function($$ItensVendaTableAnnotationComposer a) f,
  ) {
    final $$ItensVendaTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.itensVenda,
      getReferencedColumn: (t) => t.produtoId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ItensVendaTableAnnotationComposer(
            $db: $db,
            $table: $db.itensVenda,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$ProdutosTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ProdutosTable,
          ProdutoRow,
          $$ProdutosTableFilterComposer,
          $$ProdutosTableOrderingComposer,
          $$ProdutosTableAnnotationComposer,
          $$ProdutosTableCreateCompanionBuilder,
          $$ProdutosTableUpdateCompanionBuilder,
          (ProdutoRow, $$ProdutosTableReferences),
          ProdutoRow,
          PrefetchHooks Function({bool itensVendaRefs})
        > {
  $$ProdutosTableTableManager(_$AppDatabase db, $ProdutosTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ProdutosTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ProdutosTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ProdutosTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> nome = const Value.absent(),
                Value<String> categoria = const Value.absent(),
                Value<double> preco = const Value.absent(),
                Value<double> custo = const Value.absent(),
                Value<int> estoque = const Value.absent(),
                Value<String> emoji = const Value.absent(),
                Value<bool> ativo = const Value.absent(),
              }) => ProdutosCompanion(
                id: id,
                nome: nome,
                categoria: categoria,
                preco: preco,
                custo: custo,
                estoque: estoque,
                emoji: emoji,
                ativo: ativo,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String nome,
                required String categoria,
                required double preco,
                Value<double> custo = const Value.absent(),
                Value<int> estoque = const Value.absent(),
                Value<String> emoji = const Value.absent(),
                Value<bool> ativo = const Value.absent(),
              }) => ProdutosCompanion.insert(
                id: id,
                nome: nome,
                categoria: categoria,
                preco: preco,
                custo: custo,
                estoque: estoque,
                emoji: emoji,
                ativo: ativo,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$ProdutosTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({itensVendaRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (itensVendaRefs) db.itensVenda],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (itensVendaRefs)
                    await $_getPrefetchedData<
                      ProdutoRow,
                      $ProdutosTable,
                      ItemVendaRow
                    >(
                      currentTable: table,
                      referencedTable: $$ProdutosTableReferences
                          ._itensVendaRefsTable(db),
                      managerFromTypedResult: (p0) => $$ProdutosTableReferences(
                        db,
                        table,
                        p0,
                      ).itensVendaRefs,
                      referencedItemsForCurrentItem: (item, referencedItems) =>
                          referencedItems.where((e) => e.produtoId == item.id),
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$ProdutosTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ProdutosTable,
      ProdutoRow,
      $$ProdutosTableFilterComposer,
      $$ProdutosTableOrderingComposer,
      $$ProdutosTableAnnotationComposer,
      $$ProdutosTableCreateCompanionBuilder,
      $$ProdutosTableUpdateCompanionBuilder,
      (ProdutoRow, $$ProdutosTableReferences),
      ProdutoRow,
      PrefetchHooks Function({bool itensVendaRefs})
    >;
typedef $$ClientesTableCreateCompanionBuilder =
    ClientesCompanion Function({
      Value<int> id,
      required String nome,
      Value<String> telefone,
      Value<String> instagram,
      required DateTime criadoEm,
    });
typedef $$ClientesTableUpdateCompanionBuilder =
    ClientesCompanion Function({
      Value<int> id,
      Value<String> nome,
      Value<String> telefone,
      Value<String> instagram,
      Value<DateTime> criadoEm,
    });

final class $$ClientesTableReferences
    extends BaseReferences<_$AppDatabase, $ClientesTable, ClienteRow> {
  $$ClientesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$VendasTable, List<VendaRow>> _vendasRefsTable(
    _$AppDatabase db,
  ) => MultiTypedResultKey.fromTable(
    db.vendas,
    aliasName: $_aliasNameGenerator(db.clientes.id, db.vendas.clienteId),
  );

  $$VendasTableProcessedTableManager get vendasRefs {
    final manager = $$VendasTableTableManager(
      $_db,
      $_db.vendas,
    ).filter((f) => f.clienteId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_vendasRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$AvaliacoesTable, List<AvaliacaoRow>>
  _avaliacoesRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.avaliacoes,
    aliasName: $_aliasNameGenerator(db.clientes.id, db.avaliacoes.clienteId),
  );

  $$AvaliacoesTableProcessedTableManager get avaliacoesRefs {
    final manager = $$AvaliacoesTableTableManager(
      $_db,
      $_db.avaliacoes,
    ).filter((f) => f.clienteId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_avaliacoesRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$ClientesTableFilterComposer
    extends Composer<_$AppDatabase, $ClientesTable> {
  $$ClientesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get nome => $composableBuilder(
    column: $table.nome,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get telefone => $composableBuilder(
    column: $table.telefone,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get instagram => $composableBuilder(
    column: $table.instagram,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get criadoEm => $composableBuilder(
    column: $table.criadoEm,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> vendasRefs(
    Expression<bool> Function($$VendasTableFilterComposer f) f,
  ) {
    final $$VendasTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.vendas,
      getReferencedColumn: (t) => t.clienteId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$VendasTableFilterComposer(
            $db: $db,
            $table: $db.vendas,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> avaliacoesRefs(
    Expression<bool> Function($$AvaliacoesTableFilterComposer f) f,
  ) {
    final $$AvaliacoesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.avaliacoes,
      getReferencedColumn: (t) => t.clienteId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$AvaliacoesTableFilterComposer(
            $db: $db,
            $table: $db.avaliacoes,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$ClientesTableOrderingComposer
    extends Composer<_$AppDatabase, $ClientesTable> {
  $$ClientesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get nome => $composableBuilder(
    column: $table.nome,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get telefone => $composableBuilder(
    column: $table.telefone,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get instagram => $composableBuilder(
    column: $table.instagram,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get criadoEm => $composableBuilder(
    column: $table.criadoEm,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$ClientesTableAnnotationComposer
    extends Composer<_$AppDatabase, $ClientesTable> {
  $$ClientesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get nome =>
      $composableBuilder(column: $table.nome, builder: (column) => column);

  GeneratedColumn<String> get telefone =>
      $composableBuilder(column: $table.telefone, builder: (column) => column);

  GeneratedColumn<String> get instagram =>
      $composableBuilder(column: $table.instagram, builder: (column) => column);

  GeneratedColumn<DateTime> get criadoEm =>
      $composableBuilder(column: $table.criadoEm, builder: (column) => column);

  Expression<T> vendasRefs<T extends Object>(
    Expression<T> Function($$VendasTableAnnotationComposer a) f,
  ) {
    final $$VendasTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.vendas,
      getReferencedColumn: (t) => t.clienteId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$VendasTableAnnotationComposer(
            $db: $db,
            $table: $db.vendas,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> avaliacoesRefs<T extends Object>(
    Expression<T> Function($$AvaliacoesTableAnnotationComposer a) f,
  ) {
    final $$AvaliacoesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.avaliacoes,
      getReferencedColumn: (t) => t.clienteId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$AvaliacoesTableAnnotationComposer(
            $db: $db,
            $table: $db.avaliacoes,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$ClientesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ClientesTable,
          ClienteRow,
          $$ClientesTableFilterComposer,
          $$ClientesTableOrderingComposer,
          $$ClientesTableAnnotationComposer,
          $$ClientesTableCreateCompanionBuilder,
          $$ClientesTableUpdateCompanionBuilder,
          (ClienteRow, $$ClientesTableReferences),
          ClienteRow,
          PrefetchHooks Function({bool vendasRefs, bool avaliacoesRefs})
        > {
  $$ClientesTableTableManager(_$AppDatabase db, $ClientesTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ClientesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ClientesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ClientesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> nome = const Value.absent(),
                Value<String> telefone = const Value.absent(),
                Value<String> instagram = const Value.absent(),
                Value<DateTime> criadoEm = const Value.absent(),
              }) => ClientesCompanion(
                id: id,
                nome: nome,
                telefone: telefone,
                instagram: instagram,
                criadoEm: criadoEm,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String nome,
                Value<String> telefone = const Value.absent(),
                Value<String> instagram = const Value.absent(),
                required DateTime criadoEm,
              }) => ClientesCompanion.insert(
                id: id,
                nome: nome,
                telefone: telefone,
                instagram: instagram,
                criadoEm: criadoEm,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$ClientesTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback:
              ({vendasRefs = false, avaliacoesRefs = false}) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [
                    if (vendasRefs) db.vendas,
                    if (avaliacoesRefs) db.avaliacoes,
                  ],
                  addJoins: null,
                  getPrefetchedDataCallback: (items) async {
                    return [
                      if (vendasRefs)
                        await $_getPrefetchedData<
                          ClienteRow,
                          $ClientesTable,
                          VendaRow
                        >(
                          currentTable: table,
                          referencedTable: $$ClientesTableReferences
                              ._vendasRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$ClientesTableReferences(
                                db,
                                table,
                                p0,
                              ).vendasRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.clienteId == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (avaliacoesRefs)
                        await $_getPrefetchedData<
                          ClienteRow,
                          $ClientesTable,
                          AvaliacaoRow
                        >(
                          currentTable: table,
                          referencedTable: $$ClientesTableReferences
                              ._avaliacoesRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$ClientesTableReferences(
                                db,
                                table,
                                p0,
                              ).avaliacoesRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.clienteId == item.id,
                              ),
                          typedResults: items,
                        ),
                    ];
                  },
                );
              },
        ),
      );
}

typedef $$ClientesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ClientesTable,
      ClienteRow,
      $$ClientesTableFilterComposer,
      $$ClientesTableOrderingComposer,
      $$ClientesTableAnnotationComposer,
      $$ClientesTableCreateCompanionBuilder,
      $$ClientesTableUpdateCompanionBuilder,
      (ClienteRow, $$ClientesTableReferences),
      ClienteRow,
      PrefetchHooks Function({bool vendasRefs, bool avaliacoesRefs})
    >;
typedef $$VendasTableCreateCompanionBuilder =
    VendasCompanion Function({
      Value<int> id,
      Value<int?> clienteId,
      required DateTime dataHora,
      required String formaPagamento,
      required double total,
    });
typedef $$VendasTableUpdateCompanionBuilder =
    VendasCompanion Function({
      Value<int> id,
      Value<int?> clienteId,
      Value<DateTime> dataHora,
      Value<String> formaPagamento,
      Value<double> total,
    });

final class $$VendasTableReferences
    extends BaseReferences<_$AppDatabase, $VendasTable, VendaRow> {
  $$VendasTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $ClientesTable _clienteIdTable(_$AppDatabase db) => db.clientes
      .createAlias($_aliasNameGenerator(db.vendas.clienteId, db.clientes.id));

  $$ClientesTableProcessedTableManager? get clienteId {
    final $_column = $_itemColumn<int>('cliente_id');
    if ($_column == null) return null;
    final manager = $$ClientesTableTableManager(
      $_db,
      $_db.clientes,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_clienteIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static MultiTypedResultKey<$ItensVendaTable, List<ItemVendaRow>>
  _itensVendaRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.itensVenda,
    aliasName: $_aliasNameGenerator(db.vendas.id, db.itensVenda.vendaId),
  );

  $$ItensVendaTableProcessedTableManager get itensVendaRefs {
    final manager = $$ItensVendaTableTableManager(
      $_db,
      $_db.itensVenda,
    ).filter((f) => f.vendaId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_itensVendaRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$VendasTableFilterComposer
    extends Composer<_$AppDatabase, $VendasTable> {
  $$VendasTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get dataHora => $composableBuilder(
    column: $table.dataHora,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get formaPagamento => $composableBuilder(
    column: $table.formaPagamento,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get total => $composableBuilder(
    column: $table.total,
    builder: (column) => ColumnFilters(column),
  );

  $$ClientesTableFilterComposer get clienteId {
    final $$ClientesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.clienteId,
      referencedTable: $db.clientes,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ClientesTableFilterComposer(
            $db: $db,
            $table: $db.clientes,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<bool> itensVendaRefs(
    Expression<bool> Function($$ItensVendaTableFilterComposer f) f,
  ) {
    final $$ItensVendaTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.itensVenda,
      getReferencedColumn: (t) => t.vendaId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ItensVendaTableFilterComposer(
            $db: $db,
            $table: $db.itensVenda,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$VendasTableOrderingComposer
    extends Composer<_$AppDatabase, $VendasTable> {
  $$VendasTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get dataHora => $composableBuilder(
    column: $table.dataHora,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get formaPagamento => $composableBuilder(
    column: $table.formaPagamento,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get total => $composableBuilder(
    column: $table.total,
    builder: (column) => ColumnOrderings(column),
  );

  $$ClientesTableOrderingComposer get clienteId {
    final $$ClientesTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.clienteId,
      referencedTable: $db.clientes,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ClientesTableOrderingComposer(
            $db: $db,
            $table: $db.clientes,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$VendasTableAnnotationComposer
    extends Composer<_$AppDatabase, $VendasTable> {
  $$VendasTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get dataHora =>
      $composableBuilder(column: $table.dataHora, builder: (column) => column);

  GeneratedColumn<String> get formaPagamento => $composableBuilder(
    column: $table.formaPagamento,
    builder: (column) => column,
  );

  GeneratedColumn<double> get total =>
      $composableBuilder(column: $table.total, builder: (column) => column);

  $$ClientesTableAnnotationComposer get clienteId {
    final $$ClientesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.clienteId,
      referencedTable: $db.clientes,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ClientesTableAnnotationComposer(
            $db: $db,
            $table: $db.clientes,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<T> itensVendaRefs<T extends Object>(
    Expression<T> Function($$ItensVendaTableAnnotationComposer a) f,
  ) {
    final $$ItensVendaTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.itensVenda,
      getReferencedColumn: (t) => t.vendaId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ItensVendaTableAnnotationComposer(
            $db: $db,
            $table: $db.itensVenda,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$VendasTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $VendasTable,
          VendaRow,
          $$VendasTableFilterComposer,
          $$VendasTableOrderingComposer,
          $$VendasTableAnnotationComposer,
          $$VendasTableCreateCompanionBuilder,
          $$VendasTableUpdateCompanionBuilder,
          (VendaRow, $$VendasTableReferences),
          VendaRow,
          PrefetchHooks Function({bool clienteId, bool itensVendaRefs})
        > {
  $$VendasTableTableManager(_$AppDatabase db, $VendasTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$VendasTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$VendasTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$VendasTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int?> clienteId = const Value.absent(),
                Value<DateTime> dataHora = const Value.absent(),
                Value<String> formaPagamento = const Value.absent(),
                Value<double> total = const Value.absent(),
              }) => VendasCompanion(
                id: id,
                clienteId: clienteId,
                dataHora: dataHora,
                formaPagamento: formaPagamento,
                total: total,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int?> clienteId = const Value.absent(),
                required DateTime dataHora,
                required String formaPagamento,
                required double total,
              }) => VendasCompanion.insert(
                id: id,
                clienteId: clienteId,
                dataHora: dataHora,
                formaPagamento: formaPagamento,
                total: total,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) =>
                    (e.readTable(table), $$VendasTableReferences(db, table, e)),
              )
              .toList(),
          prefetchHooksCallback: ({clienteId = false, itensVendaRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (itensVendaRefs) db.itensVenda],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (clienteId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.clienteId,
                                referencedTable: $$VendasTableReferences
                                    ._clienteIdTable(db),
                                referencedColumn: $$VendasTableReferences
                                    ._clienteIdTable(db)
                                    .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [
                  if (itensVendaRefs)
                    await $_getPrefetchedData<
                      VendaRow,
                      $VendasTable,
                      ItemVendaRow
                    >(
                      currentTable: table,
                      referencedTable: $$VendasTableReferences
                          ._itensVendaRefsTable(db),
                      managerFromTypedResult: (p0) =>
                          $$VendasTableReferences(db, table, p0).itensVendaRefs,
                      referencedItemsForCurrentItem: (item, referencedItems) =>
                          referencedItems.where((e) => e.vendaId == item.id),
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$VendasTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $VendasTable,
      VendaRow,
      $$VendasTableFilterComposer,
      $$VendasTableOrderingComposer,
      $$VendasTableAnnotationComposer,
      $$VendasTableCreateCompanionBuilder,
      $$VendasTableUpdateCompanionBuilder,
      (VendaRow, $$VendasTableReferences),
      VendaRow,
      PrefetchHooks Function({bool clienteId, bool itensVendaRefs})
    >;
typedef $$ItensVendaTableCreateCompanionBuilder =
    ItensVendaCompanion Function({
      Value<int> id,
      required int vendaId,
      required int produtoId,
      required int quantidade,
      required double precoUnitario,
    });
typedef $$ItensVendaTableUpdateCompanionBuilder =
    ItensVendaCompanion Function({
      Value<int> id,
      Value<int> vendaId,
      Value<int> produtoId,
      Value<int> quantidade,
      Value<double> precoUnitario,
    });

final class $$ItensVendaTableReferences
    extends BaseReferences<_$AppDatabase, $ItensVendaTable, ItemVendaRow> {
  $$ItensVendaTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $VendasTable _vendaIdTable(_$AppDatabase db) => db.vendas.createAlias(
    $_aliasNameGenerator(db.itensVenda.vendaId, db.vendas.id),
  );

  $$VendasTableProcessedTableManager get vendaId {
    final $_column = $_itemColumn<int>('venda_id')!;

    final manager = $$VendasTableTableManager(
      $_db,
      $_db.vendas,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_vendaIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $ProdutosTable _produtoIdTable(_$AppDatabase db) =>
      db.produtos.createAlias(
        $_aliasNameGenerator(db.itensVenda.produtoId, db.produtos.id),
      );

  $$ProdutosTableProcessedTableManager get produtoId {
    final $_column = $_itemColumn<int>('produto_id')!;

    final manager = $$ProdutosTableTableManager(
      $_db,
      $_db.produtos,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_produtoIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$ItensVendaTableFilterComposer
    extends Composer<_$AppDatabase, $ItensVendaTable> {
  $$ItensVendaTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get quantidade => $composableBuilder(
    column: $table.quantidade,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get precoUnitario => $composableBuilder(
    column: $table.precoUnitario,
    builder: (column) => ColumnFilters(column),
  );

  $$VendasTableFilterComposer get vendaId {
    final $$VendasTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.vendaId,
      referencedTable: $db.vendas,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$VendasTableFilterComposer(
            $db: $db,
            $table: $db.vendas,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$ProdutosTableFilterComposer get produtoId {
    final $$ProdutosTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.produtoId,
      referencedTable: $db.produtos,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ProdutosTableFilterComposer(
            $db: $db,
            $table: $db.produtos,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$ItensVendaTableOrderingComposer
    extends Composer<_$AppDatabase, $ItensVendaTable> {
  $$ItensVendaTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get quantidade => $composableBuilder(
    column: $table.quantidade,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get precoUnitario => $composableBuilder(
    column: $table.precoUnitario,
    builder: (column) => ColumnOrderings(column),
  );

  $$VendasTableOrderingComposer get vendaId {
    final $$VendasTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.vendaId,
      referencedTable: $db.vendas,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$VendasTableOrderingComposer(
            $db: $db,
            $table: $db.vendas,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$ProdutosTableOrderingComposer get produtoId {
    final $$ProdutosTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.produtoId,
      referencedTable: $db.produtos,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ProdutosTableOrderingComposer(
            $db: $db,
            $table: $db.produtos,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$ItensVendaTableAnnotationComposer
    extends Composer<_$AppDatabase, $ItensVendaTable> {
  $$ItensVendaTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get quantidade => $composableBuilder(
    column: $table.quantidade,
    builder: (column) => column,
  );

  GeneratedColumn<double> get precoUnitario => $composableBuilder(
    column: $table.precoUnitario,
    builder: (column) => column,
  );

  $$VendasTableAnnotationComposer get vendaId {
    final $$VendasTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.vendaId,
      referencedTable: $db.vendas,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$VendasTableAnnotationComposer(
            $db: $db,
            $table: $db.vendas,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$ProdutosTableAnnotationComposer get produtoId {
    final $$ProdutosTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.produtoId,
      referencedTable: $db.produtos,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ProdutosTableAnnotationComposer(
            $db: $db,
            $table: $db.produtos,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$ItensVendaTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ItensVendaTable,
          ItemVendaRow,
          $$ItensVendaTableFilterComposer,
          $$ItensVendaTableOrderingComposer,
          $$ItensVendaTableAnnotationComposer,
          $$ItensVendaTableCreateCompanionBuilder,
          $$ItensVendaTableUpdateCompanionBuilder,
          (ItemVendaRow, $$ItensVendaTableReferences),
          ItemVendaRow,
          PrefetchHooks Function({bool vendaId, bool produtoId})
        > {
  $$ItensVendaTableTableManager(_$AppDatabase db, $ItensVendaTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ItensVendaTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ItensVendaTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ItensVendaTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> vendaId = const Value.absent(),
                Value<int> produtoId = const Value.absent(),
                Value<int> quantidade = const Value.absent(),
                Value<double> precoUnitario = const Value.absent(),
              }) => ItensVendaCompanion(
                id: id,
                vendaId: vendaId,
                produtoId: produtoId,
                quantidade: quantidade,
                precoUnitario: precoUnitario,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int vendaId,
                required int produtoId,
                required int quantidade,
                required double precoUnitario,
              }) => ItensVendaCompanion.insert(
                id: id,
                vendaId: vendaId,
                produtoId: produtoId,
                quantidade: quantidade,
                precoUnitario: precoUnitario,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$ItensVendaTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({vendaId = false, produtoId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (vendaId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.vendaId,
                                referencedTable: $$ItensVendaTableReferences
                                    ._vendaIdTable(db),
                                referencedColumn: $$ItensVendaTableReferences
                                    ._vendaIdTable(db)
                                    .id,
                              )
                              as T;
                    }
                    if (produtoId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.produtoId,
                                referencedTable: $$ItensVendaTableReferences
                                    ._produtoIdTable(db),
                                referencedColumn: $$ItensVendaTableReferences
                                    ._produtoIdTable(db)
                                    .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$ItensVendaTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ItensVendaTable,
      ItemVendaRow,
      $$ItensVendaTableFilterComposer,
      $$ItensVendaTableOrderingComposer,
      $$ItensVendaTableAnnotationComposer,
      $$ItensVendaTableCreateCompanionBuilder,
      $$ItensVendaTableUpdateCompanionBuilder,
      (ItemVendaRow, $$ItensVendaTableReferences),
      ItemVendaRow,
      PrefetchHooks Function({bool vendaId, bool produtoId})
    >;
typedef $$AvaliacoesTableCreateCompanionBuilder =
    AvaliacoesCompanion Function({
      Value<int> id,
      Value<int?> clienteId,
      required int nota,
      Value<String> comentario,
      required DateTime dataHora,
    });
typedef $$AvaliacoesTableUpdateCompanionBuilder =
    AvaliacoesCompanion Function({
      Value<int> id,
      Value<int?> clienteId,
      Value<int> nota,
      Value<String> comentario,
      Value<DateTime> dataHora,
    });

final class $$AvaliacoesTableReferences
    extends BaseReferences<_$AppDatabase, $AvaliacoesTable, AvaliacaoRow> {
  $$AvaliacoesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $ClientesTable _clienteIdTable(_$AppDatabase db) =>
      db.clientes.createAlias(
        $_aliasNameGenerator(db.avaliacoes.clienteId, db.clientes.id),
      );

  $$ClientesTableProcessedTableManager? get clienteId {
    final $_column = $_itemColumn<int>('cliente_id');
    if ($_column == null) return null;
    final manager = $$ClientesTableTableManager(
      $_db,
      $_db.clientes,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_clienteIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$AvaliacoesTableFilterComposer
    extends Composer<_$AppDatabase, $AvaliacoesTable> {
  $$AvaliacoesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get nota => $composableBuilder(
    column: $table.nota,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get comentario => $composableBuilder(
    column: $table.comentario,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get dataHora => $composableBuilder(
    column: $table.dataHora,
    builder: (column) => ColumnFilters(column),
  );

  $$ClientesTableFilterComposer get clienteId {
    final $$ClientesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.clienteId,
      referencedTable: $db.clientes,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ClientesTableFilterComposer(
            $db: $db,
            $table: $db.clientes,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$AvaliacoesTableOrderingComposer
    extends Composer<_$AppDatabase, $AvaliacoesTable> {
  $$AvaliacoesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get nota => $composableBuilder(
    column: $table.nota,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get comentario => $composableBuilder(
    column: $table.comentario,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get dataHora => $composableBuilder(
    column: $table.dataHora,
    builder: (column) => ColumnOrderings(column),
  );

  $$ClientesTableOrderingComposer get clienteId {
    final $$ClientesTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.clienteId,
      referencedTable: $db.clientes,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ClientesTableOrderingComposer(
            $db: $db,
            $table: $db.clientes,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$AvaliacoesTableAnnotationComposer
    extends Composer<_$AppDatabase, $AvaliacoesTable> {
  $$AvaliacoesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get nota =>
      $composableBuilder(column: $table.nota, builder: (column) => column);

  GeneratedColumn<String> get comentario => $composableBuilder(
    column: $table.comentario,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get dataHora =>
      $composableBuilder(column: $table.dataHora, builder: (column) => column);

  $$ClientesTableAnnotationComposer get clienteId {
    final $$ClientesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.clienteId,
      referencedTable: $db.clientes,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ClientesTableAnnotationComposer(
            $db: $db,
            $table: $db.clientes,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$AvaliacoesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $AvaliacoesTable,
          AvaliacaoRow,
          $$AvaliacoesTableFilterComposer,
          $$AvaliacoesTableOrderingComposer,
          $$AvaliacoesTableAnnotationComposer,
          $$AvaliacoesTableCreateCompanionBuilder,
          $$AvaliacoesTableUpdateCompanionBuilder,
          (AvaliacaoRow, $$AvaliacoesTableReferences),
          AvaliacaoRow,
          PrefetchHooks Function({bool clienteId})
        > {
  $$AvaliacoesTableTableManager(_$AppDatabase db, $AvaliacoesTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$AvaliacoesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$AvaliacoesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$AvaliacoesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int?> clienteId = const Value.absent(),
                Value<int> nota = const Value.absent(),
                Value<String> comentario = const Value.absent(),
                Value<DateTime> dataHora = const Value.absent(),
              }) => AvaliacoesCompanion(
                id: id,
                clienteId: clienteId,
                nota: nota,
                comentario: comentario,
                dataHora: dataHora,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int?> clienteId = const Value.absent(),
                required int nota,
                Value<String> comentario = const Value.absent(),
                required DateTime dataHora,
              }) => AvaliacoesCompanion.insert(
                id: id,
                clienteId: clienteId,
                nota: nota,
                comentario: comentario,
                dataHora: dataHora,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$AvaliacoesTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({clienteId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (clienteId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.clienteId,
                                referencedTable: $$AvaliacoesTableReferences
                                    ._clienteIdTable(db),
                                referencedColumn: $$AvaliacoesTableReferences
                                    ._clienteIdTable(db)
                                    .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$AvaliacoesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $AvaliacoesTable,
      AvaliacaoRow,
      $$AvaliacoesTableFilterComposer,
      $$AvaliacoesTableOrderingComposer,
      $$AvaliacoesTableAnnotationComposer,
      $$AvaliacoesTableCreateCompanionBuilder,
      $$AvaliacoesTableUpdateCompanionBuilder,
      (AvaliacaoRow, $$AvaliacoesTableReferences),
      AvaliacaoRow,
      PrefetchHooks Function({bool clienteId})
    >;
typedef $$FeriadosTableCreateCompanionBuilder =
    FeriadosCompanion Function({
      required DateTime data,
      required String nome,
      Value<String> tipo,
      Value<int> rowid,
    });
typedef $$FeriadosTableUpdateCompanionBuilder =
    FeriadosCompanion Function({
      Value<DateTime> data,
      Value<String> nome,
      Value<String> tipo,
      Value<int> rowid,
    });

class $$FeriadosTableFilterComposer
    extends Composer<_$AppDatabase, $FeriadosTable> {
  $$FeriadosTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<DateTime> get data => $composableBuilder(
    column: $table.data,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get nome => $composableBuilder(
    column: $table.nome,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get tipo => $composableBuilder(
    column: $table.tipo,
    builder: (column) => ColumnFilters(column),
  );
}

class $$FeriadosTableOrderingComposer
    extends Composer<_$AppDatabase, $FeriadosTable> {
  $$FeriadosTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<DateTime> get data => $composableBuilder(
    column: $table.data,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get nome => $composableBuilder(
    column: $table.nome,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get tipo => $composableBuilder(
    column: $table.tipo,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$FeriadosTableAnnotationComposer
    extends Composer<_$AppDatabase, $FeriadosTable> {
  $$FeriadosTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<DateTime> get data =>
      $composableBuilder(column: $table.data, builder: (column) => column);

  GeneratedColumn<String> get nome =>
      $composableBuilder(column: $table.nome, builder: (column) => column);

  GeneratedColumn<String> get tipo =>
      $composableBuilder(column: $table.tipo, builder: (column) => column);
}

class $$FeriadosTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $FeriadosTable,
          FeriadoRow,
          $$FeriadosTableFilterComposer,
          $$FeriadosTableOrderingComposer,
          $$FeriadosTableAnnotationComposer,
          $$FeriadosTableCreateCompanionBuilder,
          $$FeriadosTableUpdateCompanionBuilder,
          (
            FeriadoRow,
            BaseReferences<_$AppDatabase, $FeriadosTable, FeriadoRow>,
          ),
          FeriadoRow,
          PrefetchHooks Function()
        > {
  $$FeriadosTableTableManager(_$AppDatabase db, $FeriadosTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$FeriadosTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$FeriadosTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$FeriadosTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<DateTime> data = const Value.absent(),
                Value<String> nome = const Value.absent(),
                Value<String> tipo = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => FeriadosCompanion(
                data: data,
                nome: nome,
                tipo: tipo,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required DateTime data,
                required String nome,
                Value<String> tipo = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => FeriadosCompanion.insert(
                data: data,
                nome: nome,
                tipo: tipo,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$FeriadosTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $FeriadosTable,
      FeriadoRow,
      $$FeriadosTableFilterComposer,
      $$FeriadosTableOrderingComposer,
      $$FeriadosTableAnnotationComposer,
      $$FeriadosTableCreateCompanionBuilder,
      $$FeriadosTableUpdateCompanionBuilder,
      (FeriadoRow, BaseReferences<_$AppDatabase, $FeriadosTable, FeriadoRow>),
      FeriadoRow,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$EmpresasTableTableManager get empresas =>
      $$EmpresasTableTableManager(_db, _db.empresas);
  $$ProdutosTableTableManager get produtos =>
      $$ProdutosTableTableManager(_db, _db.produtos);
  $$ClientesTableTableManager get clientes =>
      $$ClientesTableTableManager(_db, _db.clientes);
  $$VendasTableTableManager get vendas =>
      $$VendasTableTableManager(_db, _db.vendas);
  $$ItensVendaTableTableManager get itensVenda =>
      $$ItensVendaTableTableManager(_db, _db.itensVenda);
  $$AvaliacoesTableTableManager get avaliacoes =>
      $$AvaliacoesTableTableManager(_db, _db.avaliacoes);
  $$FeriadosTableTableManager get feriados =>
      $$FeriadosTableTableManager(_db, _db.feriados);
}
