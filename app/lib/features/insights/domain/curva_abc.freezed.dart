// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'curva_abc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProdutoVendido {

 int get produtoId; String get nome; String get emoji; String get categoria; int get quantidade; double get receita; double get custo;
/// Create a copy of ProdutoVendido
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProdutoVendidoCopyWith<ProdutoVendido> get copyWith => _$ProdutoVendidoCopyWithImpl<ProdutoVendido>(this as ProdutoVendido, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProdutoVendido&&(identical(other.produtoId, produtoId) || other.produtoId == produtoId)&&(identical(other.nome, nome) || other.nome == nome)&&(identical(other.emoji, emoji) || other.emoji == emoji)&&(identical(other.categoria, categoria) || other.categoria == categoria)&&(identical(other.quantidade, quantidade) || other.quantidade == quantidade)&&(identical(other.receita, receita) || other.receita == receita)&&(identical(other.custo, custo) || other.custo == custo));
}


@override
int get hashCode => Object.hash(runtimeType,produtoId,nome,emoji,categoria,quantidade,receita,custo);

@override
String toString() {
  return 'ProdutoVendido(produtoId: $produtoId, nome: $nome, emoji: $emoji, categoria: $categoria, quantidade: $quantidade, receita: $receita, custo: $custo)';
}


}

/// @nodoc
abstract mixin class $ProdutoVendidoCopyWith<$Res>  {
  factory $ProdutoVendidoCopyWith(ProdutoVendido value, $Res Function(ProdutoVendido) _then) = _$ProdutoVendidoCopyWithImpl;
@useResult
$Res call({
 int produtoId, String nome, String emoji, String categoria, int quantidade, double receita, double custo
});




}
/// @nodoc
class _$ProdutoVendidoCopyWithImpl<$Res>
    implements $ProdutoVendidoCopyWith<$Res> {
  _$ProdutoVendidoCopyWithImpl(this._self, this._then);

  final ProdutoVendido _self;
  final $Res Function(ProdutoVendido) _then;

/// Create a copy of ProdutoVendido
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? produtoId = null,Object? nome = null,Object? emoji = null,Object? categoria = null,Object? quantidade = null,Object? receita = null,Object? custo = null,}) {
  return _then(_self.copyWith(
produtoId: null == produtoId ? _self.produtoId : produtoId // ignore: cast_nullable_to_non_nullable
as int,nome: null == nome ? _self.nome : nome // ignore: cast_nullable_to_non_nullable
as String,emoji: null == emoji ? _self.emoji : emoji // ignore: cast_nullable_to_non_nullable
as String,categoria: null == categoria ? _self.categoria : categoria // ignore: cast_nullable_to_non_nullable
as String,quantidade: null == quantidade ? _self.quantidade : quantidade // ignore: cast_nullable_to_non_nullable
as int,receita: null == receita ? _self.receita : receita // ignore: cast_nullable_to_non_nullable
as double,custo: null == custo ? _self.custo : custo // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [ProdutoVendido].
extension ProdutoVendidoPatterns on ProdutoVendido {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProdutoVendido value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProdutoVendido() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProdutoVendido value)  $default,){
final _that = this;
switch (_that) {
case _ProdutoVendido():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProdutoVendido value)?  $default,){
final _that = this;
switch (_that) {
case _ProdutoVendido() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int produtoId,  String nome,  String emoji,  String categoria,  int quantidade,  double receita,  double custo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProdutoVendido() when $default != null:
return $default(_that.produtoId,_that.nome,_that.emoji,_that.categoria,_that.quantidade,_that.receita,_that.custo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int produtoId,  String nome,  String emoji,  String categoria,  int quantidade,  double receita,  double custo)  $default,) {final _that = this;
switch (_that) {
case _ProdutoVendido():
return $default(_that.produtoId,_that.nome,_that.emoji,_that.categoria,_that.quantidade,_that.receita,_that.custo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int produtoId,  String nome,  String emoji,  String categoria,  int quantidade,  double receita,  double custo)?  $default,) {final _that = this;
switch (_that) {
case _ProdutoVendido() when $default != null:
return $default(_that.produtoId,_that.nome,_that.emoji,_that.categoria,_that.quantidade,_that.receita,_that.custo);case _:
  return null;

}
}

}

/// @nodoc


class _ProdutoVendido extends ProdutoVendido {
  const _ProdutoVendido({required this.produtoId, required this.nome, this.emoji = '📦', this.categoria = '', required this.quantidade, required this.receita, this.custo = 0}): super._();
  

@override final  int produtoId;
@override final  String nome;
@override@JsonKey() final  String emoji;
@override@JsonKey() final  String categoria;
@override final  int quantidade;
@override final  double receita;
@override@JsonKey() final  double custo;

/// Create a copy of ProdutoVendido
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProdutoVendidoCopyWith<_ProdutoVendido> get copyWith => __$ProdutoVendidoCopyWithImpl<_ProdutoVendido>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProdutoVendido&&(identical(other.produtoId, produtoId) || other.produtoId == produtoId)&&(identical(other.nome, nome) || other.nome == nome)&&(identical(other.emoji, emoji) || other.emoji == emoji)&&(identical(other.categoria, categoria) || other.categoria == categoria)&&(identical(other.quantidade, quantidade) || other.quantidade == quantidade)&&(identical(other.receita, receita) || other.receita == receita)&&(identical(other.custo, custo) || other.custo == custo));
}


@override
int get hashCode => Object.hash(runtimeType,produtoId,nome,emoji,categoria,quantidade,receita,custo);

@override
String toString() {
  return 'ProdutoVendido(produtoId: $produtoId, nome: $nome, emoji: $emoji, categoria: $categoria, quantidade: $quantidade, receita: $receita, custo: $custo)';
}


}

/// @nodoc
abstract mixin class _$ProdutoVendidoCopyWith<$Res> implements $ProdutoVendidoCopyWith<$Res> {
  factory _$ProdutoVendidoCopyWith(_ProdutoVendido value, $Res Function(_ProdutoVendido) _then) = __$ProdutoVendidoCopyWithImpl;
@override @useResult
$Res call({
 int produtoId, String nome, String emoji, String categoria, int quantidade, double receita, double custo
});




}
/// @nodoc
class __$ProdutoVendidoCopyWithImpl<$Res>
    implements _$ProdutoVendidoCopyWith<$Res> {
  __$ProdutoVendidoCopyWithImpl(this._self, this._then);

  final _ProdutoVendido _self;
  final $Res Function(_ProdutoVendido) _then;

/// Create a copy of ProdutoVendido
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? produtoId = null,Object? nome = null,Object? emoji = null,Object? categoria = null,Object? quantidade = null,Object? receita = null,Object? custo = null,}) {
  return _then(_ProdutoVendido(
produtoId: null == produtoId ? _self.produtoId : produtoId // ignore: cast_nullable_to_non_nullable
as int,nome: null == nome ? _self.nome : nome // ignore: cast_nullable_to_non_nullable
as String,emoji: null == emoji ? _self.emoji : emoji // ignore: cast_nullable_to_non_nullable
as String,categoria: null == categoria ? _self.categoria : categoria // ignore: cast_nullable_to_non_nullable
as String,quantidade: null == quantidade ? _self.quantidade : quantidade // ignore: cast_nullable_to_non_nullable
as int,receita: null == receita ? _self.receita : receita // ignore: cast_nullable_to_non_nullable
as double,custo: null == custo ? _self.custo : custo // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

/// @nodoc
mixin _$ItemAbc {

 ProdutoVendido get produto; String get classe; double get participacao; double get acumulado;
/// Create a copy of ItemAbc
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ItemAbcCopyWith<ItemAbc> get copyWith => _$ItemAbcCopyWithImpl<ItemAbc>(this as ItemAbc, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ItemAbc&&(identical(other.produto, produto) || other.produto == produto)&&(identical(other.classe, classe) || other.classe == classe)&&(identical(other.participacao, participacao) || other.participacao == participacao)&&(identical(other.acumulado, acumulado) || other.acumulado == acumulado));
}


@override
int get hashCode => Object.hash(runtimeType,produto,classe,participacao,acumulado);

@override
String toString() {
  return 'ItemAbc(produto: $produto, classe: $classe, participacao: $participacao, acumulado: $acumulado)';
}


}

/// @nodoc
abstract mixin class $ItemAbcCopyWith<$Res>  {
  factory $ItemAbcCopyWith(ItemAbc value, $Res Function(ItemAbc) _then) = _$ItemAbcCopyWithImpl;
@useResult
$Res call({
 ProdutoVendido produto, String classe, double participacao, double acumulado
});


$ProdutoVendidoCopyWith<$Res> get produto;

}
/// @nodoc
class _$ItemAbcCopyWithImpl<$Res>
    implements $ItemAbcCopyWith<$Res> {
  _$ItemAbcCopyWithImpl(this._self, this._then);

  final ItemAbc _self;
  final $Res Function(ItemAbc) _then;

/// Create a copy of ItemAbc
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? produto = null,Object? classe = null,Object? participacao = null,Object? acumulado = null,}) {
  return _then(_self.copyWith(
produto: null == produto ? _self.produto : produto // ignore: cast_nullable_to_non_nullable
as ProdutoVendido,classe: null == classe ? _self.classe : classe // ignore: cast_nullable_to_non_nullable
as String,participacao: null == participacao ? _self.participacao : participacao // ignore: cast_nullable_to_non_nullable
as double,acumulado: null == acumulado ? _self.acumulado : acumulado // ignore: cast_nullable_to_non_nullable
as double,
  ));
}
/// Create a copy of ItemAbc
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProdutoVendidoCopyWith<$Res> get produto {
  
  return $ProdutoVendidoCopyWith<$Res>(_self.produto, (value) {
    return _then(_self.copyWith(produto: value));
  });
}
}


/// Adds pattern-matching-related methods to [ItemAbc].
extension ItemAbcPatterns on ItemAbc {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ItemAbc value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ItemAbc() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ItemAbc value)  $default,){
final _that = this;
switch (_that) {
case _ItemAbc():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ItemAbc value)?  $default,){
final _that = this;
switch (_that) {
case _ItemAbc() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ProdutoVendido produto,  String classe,  double participacao,  double acumulado)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ItemAbc() when $default != null:
return $default(_that.produto,_that.classe,_that.participacao,_that.acumulado);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ProdutoVendido produto,  String classe,  double participacao,  double acumulado)  $default,) {final _that = this;
switch (_that) {
case _ItemAbc():
return $default(_that.produto,_that.classe,_that.participacao,_that.acumulado);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ProdutoVendido produto,  String classe,  double participacao,  double acumulado)?  $default,) {final _that = this;
switch (_that) {
case _ItemAbc() when $default != null:
return $default(_that.produto,_that.classe,_that.participacao,_that.acumulado);case _:
  return null;

}
}

}

/// @nodoc


class _ItemAbc implements ItemAbc {
  const _ItemAbc({required this.produto, required this.classe, required this.participacao, required this.acumulado});
  

@override final  ProdutoVendido produto;
@override final  String classe;
@override final  double participacao;
@override final  double acumulado;

/// Create a copy of ItemAbc
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ItemAbcCopyWith<_ItemAbc> get copyWith => __$ItemAbcCopyWithImpl<_ItemAbc>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ItemAbc&&(identical(other.produto, produto) || other.produto == produto)&&(identical(other.classe, classe) || other.classe == classe)&&(identical(other.participacao, participacao) || other.participacao == participacao)&&(identical(other.acumulado, acumulado) || other.acumulado == acumulado));
}


@override
int get hashCode => Object.hash(runtimeType,produto,classe,participacao,acumulado);

@override
String toString() {
  return 'ItemAbc(produto: $produto, classe: $classe, participacao: $participacao, acumulado: $acumulado)';
}


}

/// @nodoc
abstract mixin class _$ItemAbcCopyWith<$Res> implements $ItemAbcCopyWith<$Res> {
  factory _$ItemAbcCopyWith(_ItemAbc value, $Res Function(_ItemAbc) _then) = __$ItemAbcCopyWithImpl;
@override @useResult
$Res call({
 ProdutoVendido produto, String classe, double participacao, double acumulado
});


@override $ProdutoVendidoCopyWith<$Res> get produto;

}
/// @nodoc
class __$ItemAbcCopyWithImpl<$Res>
    implements _$ItemAbcCopyWith<$Res> {
  __$ItemAbcCopyWithImpl(this._self, this._then);

  final _ItemAbc _self;
  final $Res Function(_ItemAbc) _then;

/// Create a copy of ItemAbc
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? produto = null,Object? classe = null,Object? participacao = null,Object? acumulado = null,}) {
  return _then(_ItemAbc(
produto: null == produto ? _self.produto : produto // ignore: cast_nullable_to_non_nullable
as ProdutoVendido,classe: null == classe ? _self.classe : classe // ignore: cast_nullable_to_non_nullable
as String,participacao: null == participacao ? _self.participacao : participacao // ignore: cast_nullable_to_non_nullable
as double,acumulado: null == acumulado ? _self.acumulado : acumulado // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

/// Create a copy of ItemAbc
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProdutoVendidoCopyWith<$Res> get produto {
  
  return $ProdutoVendidoCopyWith<$Res>(_self.produto, (value) {
    return _then(_self.copyWith(produto: value));
  });
}
}

// dart format on
