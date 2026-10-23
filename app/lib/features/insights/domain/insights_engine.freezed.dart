// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'insights_engine.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Insight {

 TipoInsight get tipo; String get titulo; String get texto;/// 0–100: quanto maior, mais acima aparece no app.
 int get prioridade;
/// Create a copy of Insight
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InsightCopyWith<Insight> get copyWith => _$InsightCopyWithImpl<Insight>(this as Insight, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Insight&&(identical(other.tipo, tipo) || other.tipo == tipo)&&(identical(other.titulo, titulo) || other.titulo == titulo)&&(identical(other.texto, texto) || other.texto == texto)&&(identical(other.prioridade, prioridade) || other.prioridade == prioridade));
}


@override
int get hashCode => Object.hash(runtimeType,tipo,titulo,texto,prioridade);

@override
String toString() {
  return 'Insight(tipo: $tipo, titulo: $titulo, texto: $texto, prioridade: $prioridade)';
}


}

/// @nodoc
abstract mixin class $InsightCopyWith<$Res>  {
  factory $InsightCopyWith(Insight value, $Res Function(Insight) _then) = _$InsightCopyWithImpl;
@useResult
$Res call({
 TipoInsight tipo, String titulo, String texto, int prioridade
});




}
/// @nodoc
class _$InsightCopyWithImpl<$Res>
    implements $InsightCopyWith<$Res> {
  _$InsightCopyWithImpl(this._self, this._then);

  final Insight _self;
  final $Res Function(Insight) _then;

/// Create a copy of Insight
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? tipo = null,Object? titulo = null,Object? texto = null,Object? prioridade = null,}) {
  return _then(_self.copyWith(
tipo: null == tipo ? _self.tipo : tipo // ignore: cast_nullable_to_non_nullable
as TipoInsight,titulo: null == titulo ? _self.titulo : titulo // ignore: cast_nullable_to_non_nullable
as String,texto: null == texto ? _self.texto : texto // ignore: cast_nullable_to_non_nullable
as String,prioridade: null == prioridade ? _self.prioridade : prioridade // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [Insight].
extension InsightPatterns on Insight {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Insight value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Insight() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Insight value)  $default,){
final _that = this;
switch (_that) {
case _Insight():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Insight value)?  $default,){
final _that = this;
switch (_that) {
case _Insight() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( TipoInsight tipo,  String titulo,  String texto,  int prioridade)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Insight() when $default != null:
return $default(_that.tipo,_that.titulo,_that.texto,_that.prioridade);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( TipoInsight tipo,  String titulo,  String texto,  int prioridade)  $default,) {final _that = this;
switch (_that) {
case _Insight():
return $default(_that.tipo,_that.titulo,_that.texto,_that.prioridade);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( TipoInsight tipo,  String titulo,  String texto,  int prioridade)?  $default,) {final _that = this;
switch (_that) {
case _Insight() when $default != null:
return $default(_that.tipo,_that.titulo,_that.texto,_that.prioridade);case _:
  return null;

}
}

}

/// @nodoc


class _Insight implements Insight {
  const _Insight({required this.tipo, required this.titulo, required this.texto, required this.prioridade});
  

@override final  TipoInsight tipo;
@override final  String titulo;
@override final  String texto;
/// 0–100: quanto maior, mais acima aparece no app.
@override final  int prioridade;

/// Create a copy of Insight
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InsightCopyWith<_Insight> get copyWith => __$InsightCopyWithImpl<_Insight>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Insight&&(identical(other.tipo, tipo) || other.tipo == tipo)&&(identical(other.titulo, titulo) || other.titulo == titulo)&&(identical(other.texto, texto) || other.texto == texto)&&(identical(other.prioridade, prioridade) || other.prioridade == prioridade));
}


@override
int get hashCode => Object.hash(runtimeType,tipo,titulo,texto,prioridade);

@override
String toString() {
  return 'Insight(tipo: $tipo, titulo: $titulo, texto: $texto, prioridade: $prioridade)';
}


}

/// @nodoc
abstract mixin class _$InsightCopyWith<$Res> implements $InsightCopyWith<$Res> {
  factory _$InsightCopyWith(_Insight value, $Res Function(_Insight) _then) = __$InsightCopyWithImpl;
@override @useResult
$Res call({
 TipoInsight tipo, String titulo, String texto, int prioridade
});




}
/// @nodoc
class __$InsightCopyWithImpl<$Res>
    implements _$InsightCopyWith<$Res> {
  __$InsightCopyWithImpl(this._self, this._then);

  final _Insight _self;
  final $Res Function(_Insight) _then;

/// Create a copy of Insight
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? tipo = null,Object? titulo = null,Object? texto = null,Object? prioridade = null,}) {
  return _then(_Insight(
tipo: null == tipo ? _self.tipo : tipo // ignore: cast_nullable_to_non_nullable
as TipoInsight,titulo: null == titulo ? _self.titulo : titulo // ignore: cast_nullable_to_non_nullable
as String,texto: null == texto ? _self.texto : texto // ignore: cast_nullable_to_non_nullable
as String,prioridade: null == prioridade ? _self.prioridade : prioridade // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$VariacaoProduto {

 ProdutoVendido get atual; double get receitaAnterior;
/// Create a copy of VariacaoProduto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VariacaoProdutoCopyWith<VariacaoProduto> get copyWith => _$VariacaoProdutoCopyWithImpl<VariacaoProduto>(this as VariacaoProduto, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VariacaoProduto&&(identical(other.atual, atual) || other.atual == atual)&&(identical(other.receitaAnterior, receitaAnterior) || other.receitaAnterior == receitaAnterior));
}


@override
int get hashCode => Object.hash(runtimeType,atual,receitaAnterior);

@override
String toString() {
  return 'VariacaoProduto(atual: $atual, receitaAnterior: $receitaAnterior)';
}


}

/// @nodoc
abstract mixin class $VariacaoProdutoCopyWith<$Res>  {
  factory $VariacaoProdutoCopyWith(VariacaoProduto value, $Res Function(VariacaoProduto) _then) = _$VariacaoProdutoCopyWithImpl;
@useResult
$Res call({
 ProdutoVendido atual, double receitaAnterior
});


$ProdutoVendidoCopyWith<$Res> get atual;

}
/// @nodoc
class _$VariacaoProdutoCopyWithImpl<$Res>
    implements $VariacaoProdutoCopyWith<$Res> {
  _$VariacaoProdutoCopyWithImpl(this._self, this._then);

  final VariacaoProduto _self;
  final $Res Function(VariacaoProduto) _then;

/// Create a copy of VariacaoProduto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? atual = null,Object? receitaAnterior = null,}) {
  return _then(_self.copyWith(
atual: null == atual ? _self.atual : atual // ignore: cast_nullable_to_non_nullable
as ProdutoVendido,receitaAnterior: null == receitaAnterior ? _self.receitaAnterior : receitaAnterior // ignore: cast_nullable_to_non_nullable
as double,
  ));
}
/// Create a copy of VariacaoProduto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProdutoVendidoCopyWith<$Res> get atual {
  
  return $ProdutoVendidoCopyWith<$Res>(_self.atual, (value) {
    return _then(_self.copyWith(atual: value));
  });
}
}


/// Adds pattern-matching-related methods to [VariacaoProduto].
extension VariacaoProdutoPatterns on VariacaoProduto {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VariacaoProduto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VariacaoProduto() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VariacaoProduto value)  $default,){
final _that = this;
switch (_that) {
case _VariacaoProduto():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VariacaoProduto value)?  $default,){
final _that = this;
switch (_that) {
case _VariacaoProduto() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ProdutoVendido atual,  double receitaAnterior)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VariacaoProduto() when $default != null:
return $default(_that.atual,_that.receitaAnterior);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ProdutoVendido atual,  double receitaAnterior)  $default,) {final _that = this;
switch (_that) {
case _VariacaoProduto():
return $default(_that.atual,_that.receitaAnterior);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ProdutoVendido atual,  double receitaAnterior)?  $default,) {final _that = this;
switch (_that) {
case _VariacaoProduto() when $default != null:
return $default(_that.atual,_that.receitaAnterior);case _:
  return null;

}
}

}

/// @nodoc


class _VariacaoProduto implements VariacaoProduto {
  const _VariacaoProduto({required this.atual, required this.receitaAnterior});
  

@override final  ProdutoVendido atual;
@override final  double receitaAnterior;

/// Create a copy of VariacaoProduto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VariacaoProdutoCopyWith<_VariacaoProduto> get copyWith => __$VariacaoProdutoCopyWithImpl<_VariacaoProduto>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VariacaoProduto&&(identical(other.atual, atual) || other.atual == atual)&&(identical(other.receitaAnterior, receitaAnterior) || other.receitaAnterior == receitaAnterior));
}


@override
int get hashCode => Object.hash(runtimeType,atual,receitaAnterior);

@override
String toString() {
  return 'VariacaoProduto(atual: $atual, receitaAnterior: $receitaAnterior)';
}


}

/// @nodoc
abstract mixin class _$VariacaoProdutoCopyWith<$Res> implements $VariacaoProdutoCopyWith<$Res> {
  factory _$VariacaoProdutoCopyWith(_VariacaoProduto value, $Res Function(_VariacaoProduto) _then) = __$VariacaoProdutoCopyWithImpl;
@override @useResult
$Res call({
 ProdutoVendido atual, double receitaAnterior
});


@override $ProdutoVendidoCopyWith<$Res> get atual;

}
/// @nodoc
class __$VariacaoProdutoCopyWithImpl<$Res>
    implements _$VariacaoProdutoCopyWith<$Res> {
  __$VariacaoProdutoCopyWithImpl(this._self, this._then);

  final _VariacaoProduto _self;
  final $Res Function(_VariacaoProduto) _then;

/// Create a copy of VariacaoProduto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? atual = null,Object? receitaAnterior = null,}) {
  return _then(_VariacaoProduto(
atual: null == atual ? _self.atual : atual // ignore: cast_nullable_to_non_nullable
as ProdutoVendido,receitaAnterior: null == receitaAnterior ? _self.receitaAnterior : receitaAnterior // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

/// Create a copy of VariacaoProduto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProdutoVendidoCopyWith<$Res> get atual {
  
  return $ProdutoVendidoCopyWith<$Res>(_self.atual, (value) {
    return _then(_self.copyWith(atual: value));
  });
}
}

/// @nodoc
mixin _$DadosInsights {

 DateTime get hoje;/// Índice sazonal (1,0 = média) de segunda a domingo.
 List<double> get fatorSemana;/// Hora (0–23) → quantidade de vendas.
 Map<int, int> get vendasPorHora; int get clientesEmRisco; List<VariacaoProduto> get variacoes; List<ProdutoVendido> get produtosPeriodo; List<Produto> get estoqueBaixo; double get variacaoFaturamento; Nps get nps; Feriado? get proximoFeriado;
/// Create a copy of DadosInsights
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DadosInsightsCopyWith<DadosInsights> get copyWith => _$DadosInsightsCopyWithImpl<DadosInsights>(this as DadosInsights, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DadosInsights&&(identical(other.hoje, hoje) || other.hoje == hoje)&&const DeepCollectionEquality().equals(other.fatorSemana, fatorSemana)&&const DeepCollectionEquality().equals(other.vendasPorHora, vendasPorHora)&&(identical(other.clientesEmRisco, clientesEmRisco) || other.clientesEmRisco == clientesEmRisco)&&const DeepCollectionEquality().equals(other.variacoes, variacoes)&&const DeepCollectionEquality().equals(other.produtosPeriodo, produtosPeriodo)&&const DeepCollectionEquality().equals(other.estoqueBaixo, estoqueBaixo)&&(identical(other.variacaoFaturamento, variacaoFaturamento) || other.variacaoFaturamento == variacaoFaturamento)&&(identical(other.nps, nps) || other.nps == nps)&&(identical(other.proximoFeriado, proximoFeriado) || other.proximoFeriado == proximoFeriado));
}


@override
int get hashCode => Object.hash(runtimeType,hoje,const DeepCollectionEquality().hash(fatorSemana),const DeepCollectionEquality().hash(vendasPorHora),clientesEmRisco,const DeepCollectionEquality().hash(variacoes),const DeepCollectionEquality().hash(produtosPeriodo),const DeepCollectionEquality().hash(estoqueBaixo),variacaoFaturamento,nps,proximoFeriado);

@override
String toString() {
  return 'DadosInsights(hoje: $hoje, fatorSemana: $fatorSemana, vendasPorHora: $vendasPorHora, clientesEmRisco: $clientesEmRisco, variacoes: $variacoes, produtosPeriodo: $produtosPeriodo, estoqueBaixo: $estoqueBaixo, variacaoFaturamento: $variacaoFaturamento, nps: $nps, proximoFeriado: $proximoFeriado)';
}


}

/// @nodoc
abstract mixin class $DadosInsightsCopyWith<$Res>  {
  factory $DadosInsightsCopyWith(DadosInsights value, $Res Function(DadosInsights) _then) = _$DadosInsightsCopyWithImpl;
@useResult
$Res call({
 DateTime hoje, List<double> fatorSemana, Map<int, int> vendasPorHora, int clientesEmRisco, List<VariacaoProduto> variacoes, List<ProdutoVendido> produtosPeriodo, List<Produto> estoqueBaixo, double variacaoFaturamento, Nps nps, Feriado? proximoFeriado
});


$NpsCopyWith<$Res> get nps;$FeriadoCopyWith<$Res>? get proximoFeriado;

}
/// @nodoc
class _$DadosInsightsCopyWithImpl<$Res>
    implements $DadosInsightsCopyWith<$Res> {
  _$DadosInsightsCopyWithImpl(this._self, this._then);

  final DadosInsights _self;
  final $Res Function(DadosInsights) _then;

/// Create a copy of DadosInsights
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? hoje = null,Object? fatorSemana = null,Object? vendasPorHora = null,Object? clientesEmRisco = null,Object? variacoes = null,Object? produtosPeriodo = null,Object? estoqueBaixo = null,Object? variacaoFaturamento = null,Object? nps = null,Object? proximoFeriado = freezed,}) {
  return _then(_self.copyWith(
hoje: null == hoje ? _self.hoje : hoje // ignore: cast_nullable_to_non_nullable
as DateTime,fatorSemana: null == fatorSemana ? _self.fatorSemana : fatorSemana // ignore: cast_nullable_to_non_nullable
as List<double>,vendasPorHora: null == vendasPorHora ? _self.vendasPorHora : vendasPorHora // ignore: cast_nullable_to_non_nullable
as Map<int, int>,clientesEmRisco: null == clientesEmRisco ? _self.clientesEmRisco : clientesEmRisco // ignore: cast_nullable_to_non_nullable
as int,variacoes: null == variacoes ? _self.variacoes : variacoes // ignore: cast_nullable_to_non_nullable
as List<VariacaoProduto>,produtosPeriodo: null == produtosPeriodo ? _self.produtosPeriodo : produtosPeriodo // ignore: cast_nullable_to_non_nullable
as List<ProdutoVendido>,estoqueBaixo: null == estoqueBaixo ? _self.estoqueBaixo : estoqueBaixo // ignore: cast_nullable_to_non_nullable
as List<Produto>,variacaoFaturamento: null == variacaoFaturamento ? _self.variacaoFaturamento : variacaoFaturamento // ignore: cast_nullable_to_non_nullable
as double,nps: null == nps ? _self.nps : nps // ignore: cast_nullable_to_non_nullable
as Nps,proximoFeriado: freezed == proximoFeriado ? _self.proximoFeriado : proximoFeriado // ignore: cast_nullable_to_non_nullable
as Feriado?,
  ));
}
/// Create a copy of DadosInsights
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NpsCopyWith<$Res> get nps {
  
  return $NpsCopyWith<$Res>(_self.nps, (value) {
    return _then(_self.copyWith(nps: value));
  });
}/// Create a copy of DadosInsights
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FeriadoCopyWith<$Res>? get proximoFeriado {
    if (_self.proximoFeriado == null) {
    return null;
  }

  return $FeriadoCopyWith<$Res>(_self.proximoFeriado!, (value) {
    return _then(_self.copyWith(proximoFeriado: value));
  });
}
}


/// Adds pattern-matching-related methods to [DadosInsights].
extension DadosInsightsPatterns on DadosInsights {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DadosInsights value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DadosInsights() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DadosInsights value)  $default,){
final _that = this;
switch (_that) {
case _DadosInsights():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DadosInsights value)?  $default,){
final _that = this;
switch (_that) {
case _DadosInsights() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime hoje,  List<double> fatorSemana,  Map<int, int> vendasPorHora,  int clientesEmRisco,  List<VariacaoProduto> variacoes,  List<ProdutoVendido> produtosPeriodo,  List<Produto> estoqueBaixo,  double variacaoFaturamento,  Nps nps,  Feriado? proximoFeriado)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DadosInsights() when $default != null:
return $default(_that.hoje,_that.fatorSemana,_that.vendasPorHora,_that.clientesEmRisco,_that.variacoes,_that.produtosPeriodo,_that.estoqueBaixo,_that.variacaoFaturamento,_that.nps,_that.proximoFeriado);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime hoje,  List<double> fatorSemana,  Map<int, int> vendasPorHora,  int clientesEmRisco,  List<VariacaoProduto> variacoes,  List<ProdutoVendido> produtosPeriodo,  List<Produto> estoqueBaixo,  double variacaoFaturamento,  Nps nps,  Feriado? proximoFeriado)  $default,) {final _that = this;
switch (_that) {
case _DadosInsights():
return $default(_that.hoje,_that.fatorSemana,_that.vendasPorHora,_that.clientesEmRisco,_that.variacoes,_that.produtosPeriodo,_that.estoqueBaixo,_that.variacaoFaturamento,_that.nps,_that.proximoFeriado);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime hoje,  List<double> fatorSemana,  Map<int, int> vendasPorHora,  int clientesEmRisco,  List<VariacaoProduto> variacoes,  List<ProdutoVendido> produtosPeriodo,  List<Produto> estoqueBaixo,  double variacaoFaturamento,  Nps nps,  Feriado? proximoFeriado)?  $default,) {final _that = this;
switch (_that) {
case _DadosInsights() when $default != null:
return $default(_that.hoje,_that.fatorSemana,_that.vendasPorHora,_that.clientesEmRisco,_that.variacoes,_that.produtosPeriodo,_that.estoqueBaixo,_that.variacaoFaturamento,_that.nps,_that.proximoFeriado);case _:
  return null;

}
}

}

/// @nodoc


class _DadosInsights implements DadosInsights {
  const _DadosInsights({required this.hoje, required final  List<double> fatorSemana, required final  Map<int, int> vendasPorHora, required this.clientesEmRisco, required final  List<VariacaoProduto> variacoes, required final  List<ProdutoVendido> produtosPeriodo, required final  List<Produto> estoqueBaixo, required this.variacaoFaturamento, required this.nps, this.proximoFeriado}): _fatorSemana = fatorSemana,_vendasPorHora = vendasPorHora,_variacoes = variacoes,_produtosPeriodo = produtosPeriodo,_estoqueBaixo = estoqueBaixo;
  

@override final  DateTime hoje;
/// Índice sazonal (1,0 = média) de segunda a domingo.
 final  List<double> _fatorSemana;
/// Índice sazonal (1,0 = média) de segunda a domingo.
@override List<double> get fatorSemana {
  if (_fatorSemana is EqualUnmodifiableListView) return _fatorSemana;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_fatorSemana);
}

/// Hora (0–23) → quantidade de vendas.
 final  Map<int, int> _vendasPorHora;
/// Hora (0–23) → quantidade de vendas.
@override Map<int, int> get vendasPorHora {
  if (_vendasPorHora is EqualUnmodifiableMapView) return _vendasPorHora;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_vendasPorHora);
}

@override final  int clientesEmRisco;
 final  List<VariacaoProduto> _variacoes;
@override List<VariacaoProduto> get variacoes {
  if (_variacoes is EqualUnmodifiableListView) return _variacoes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_variacoes);
}

 final  List<ProdutoVendido> _produtosPeriodo;
@override List<ProdutoVendido> get produtosPeriodo {
  if (_produtosPeriodo is EqualUnmodifiableListView) return _produtosPeriodo;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_produtosPeriodo);
}

 final  List<Produto> _estoqueBaixo;
@override List<Produto> get estoqueBaixo {
  if (_estoqueBaixo is EqualUnmodifiableListView) return _estoqueBaixo;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_estoqueBaixo);
}

@override final  double variacaoFaturamento;
@override final  Nps nps;
@override final  Feriado? proximoFeriado;

/// Create a copy of DadosInsights
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DadosInsightsCopyWith<_DadosInsights> get copyWith => __$DadosInsightsCopyWithImpl<_DadosInsights>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DadosInsights&&(identical(other.hoje, hoje) || other.hoje == hoje)&&const DeepCollectionEquality().equals(other._fatorSemana, _fatorSemana)&&const DeepCollectionEquality().equals(other._vendasPorHora, _vendasPorHora)&&(identical(other.clientesEmRisco, clientesEmRisco) || other.clientesEmRisco == clientesEmRisco)&&const DeepCollectionEquality().equals(other._variacoes, _variacoes)&&const DeepCollectionEquality().equals(other._produtosPeriodo, _produtosPeriodo)&&const DeepCollectionEquality().equals(other._estoqueBaixo, _estoqueBaixo)&&(identical(other.variacaoFaturamento, variacaoFaturamento) || other.variacaoFaturamento == variacaoFaturamento)&&(identical(other.nps, nps) || other.nps == nps)&&(identical(other.proximoFeriado, proximoFeriado) || other.proximoFeriado == proximoFeriado));
}


@override
int get hashCode => Object.hash(runtimeType,hoje,const DeepCollectionEquality().hash(_fatorSemana),const DeepCollectionEquality().hash(_vendasPorHora),clientesEmRisco,const DeepCollectionEquality().hash(_variacoes),const DeepCollectionEquality().hash(_produtosPeriodo),const DeepCollectionEquality().hash(_estoqueBaixo),variacaoFaturamento,nps,proximoFeriado);

@override
String toString() {
  return 'DadosInsights(hoje: $hoje, fatorSemana: $fatorSemana, vendasPorHora: $vendasPorHora, clientesEmRisco: $clientesEmRisco, variacoes: $variacoes, produtosPeriodo: $produtosPeriodo, estoqueBaixo: $estoqueBaixo, variacaoFaturamento: $variacaoFaturamento, nps: $nps, proximoFeriado: $proximoFeriado)';
}


}

/// @nodoc
abstract mixin class _$DadosInsightsCopyWith<$Res> implements $DadosInsightsCopyWith<$Res> {
  factory _$DadosInsightsCopyWith(_DadosInsights value, $Res Function(_DadosInsights) _then) = __$DadosInsightsCopyWithImpl;
@override @useResult
$Res call({
 DateTime hoje, List<double> fatorSemana, Map<int, int> vendasPorHora, int clientesEmRisco, List<VariacaoProduto> variacoes, List<ProdutoVendido> produtosPeriodo, List<Produto> estoqueBaixo, double variacaoFaturamento, Nps nps, Feriado? proximoFeriado
});


@override $NpsCopyWith<$Res> get nps;@override $FeriadoCopyWith<$Res>? get proximoFeriado;

}
/// @nodoc
class __$DadosInsightsCopyWithImpl<$Res>
    implements _$DadosInsightsCopyWith<$Res> {
  __$DadosInsightsCopyWithImpl(this._self, this._then);

  final _DadosInsights _self;
  final $Res Function(_DadosInsights) _then;

/// Create a copy of DadosInsights
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? hoje = null,Object? fatorSemana = null,Object? vendasPorHora = null,Object? clientesEmRisco = null,Object? variacoes = null,Object? produtosPeriodo = null,Object? estoqueBaixo = null,Object? variacaoFaturamento = null,Object? nps = null,Object? proximoFeriado = freezed,}) {
  return _then(_DadosInsights(
hoje: null == hoje ? _self.hoje : hoje // ignore: cast_nullable_to_non_nullable
as DateTime,fatorSemana: null == fatorSemana ? _self._fatorSemana : fatorSemana // ignore: cast_nullable_to_non_nullable
as List<double>,vendasPorHora: null == vendasPorHora ? _self._vendasPorHora : vendasPorHora // ignore: cast_nullable_to_non_nullable
as Map<int, int>,clientesEmRisco: null == clientesEmRisco ? _self.clientesEmRisco : clientesEmRisco // ignore: cast_nullable_to_non_nullable
as int,variacoes: null == variacoes ? _self._variacoes : variacoes // ignore: cast_nullable_to_non_nullable
as List<VariacaoProduto>,produtosPeriodo: null == produtosPeriodo ? _self._produtosPeriodo : produtosPeriodo // ignore: cast_nullable_to_non_nullable
as List<ProdutoVendido>,estoqueBaixo: null == estoqueBaixo ? _self._estoqueBaixo : estoqueBaixo // ignore: cast_nullable_to_non_nullable
as List<Produto>,variacaoFaturamento: null == variacaoFaturamento ? _self.variacaoFaturamento : variacaoFaturamento // ignore: cast_nullable_to_non_nullable
as double,nps: null == nps ? _self.nps : nps // ignore: cast_nullable_to_non_nullable
as Nps,proximoFeriado: freezed == proximoFeriado ? _self.proximoFeriado : proximoFeriado // ignore: cast_nullable_to_non_nullable
as Feriado?,
  ));
}

/// Create a copy of DadosInsights
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NpsCopyWith<$Res> get nps {
  
  return $NpsCopyWith<$Res>(_self.nps, (value) {
    return _then(_self.copyWith(nps: value));
  });
}/// Create a copy of DadosInsights
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FeriadoCopyWith<$Res>? get proximoFeriado {
    if (_self.proximoFeriado == null) {
    return null;
  }

  return $FeriadoCopyWith<$Res>(_self.proximoFeriado!, (value) {
    return _then(_self.copyWith(proximoFeriado: value));
  });
}
}

// dart format on
