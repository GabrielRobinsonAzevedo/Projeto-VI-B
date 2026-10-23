// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'produto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Produto {

 int? get id; String get nome; String get categoria; double get preco; double get custo; int get estoque; String get emoji;
/// Create a copy of Produto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProdutoCopyWith<Produto> get copyWith => _$ProdutoCopyWithImpl<Produto>(this as Produto, _$identity);

  /// Serializes this Produto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Produto&&(identical(other.id, id) || other.id == id)&&(identical(other.nome, nome) || other.nome == nome)&&(identical(other.categoria, categoria) || other.categoria == categoria)&&(identical(other.preco, preco) || other.preco == preco)&&(identical(other.custo, custo) || other.custo == custo)&&(identical(other.estoque, estoque) || other.estoque == estoque)&&(identical(other.emoji, emoji) || other.emoji == emoji));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,nome,categoria,preco,custo,estoque,emoji);

@override
String toString() {
  return 'Produto(id: $id, nome: $nome, categoria: $categoria, preco: $preco, custo: $custo, estoque: $estoque, emoji: $emoji)';
}


}

/// @nodoc
abstract mixin class $ProdutoCopyWith<$Res>  {
  factory $ProdutoCopyWith(Produto value, $Res Function(Produto) _then) = _$ProdutoCopyWithImpl;
@useResult
$Res call({
 int? id, String nome, String categoria, double preco, double custo, int estoque, String emoji
});




}
/// @nodoc
class _$ProdutoCopyWithImpl<$Res>
    implements $ProdutoCopyWith<$Res> {
  _$ProdutoCopyWithImpl(this._self, this._then);

  final Produto _self;
  final $Res Function(Produto) _then;

/// Create a copy of Produto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? nome = null,Object? categoria = null,Object? preco = null,Object? custo = null,Object? estoque = null,Object? emoji = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,nome: null == nome ? _self.nome : nome // ignore: cast_nullable_to_non_nullable
as String,categoria: null == categoria ? _self.categoria : categoria // ignore: cast_nullable_to_non_nullable
as String,preco: null == preco ? _self.preco : preco // ignore: cast_nullable_to_non_nullable
as double,custo: null == custo ? _self.custo : custo // ignore: cast_nullable_to_non_nullable
as double,estoque: null == estoque ? _self.estoque : estoque // ignore: cast_nullable_to_non_nullable
as int,emoji: null == emoji ? _self.emoji : emoji // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Produto].
extension ProdutoPatterns on Produto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Produto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Produto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Produto value)  $default,){
final _that = this;
switch (_that) {
case _Produto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Produto value)?  $default,){
final _that = this;
switch (_that) {
case _Produto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String nome,  String categoria,  double preco,  double custo,  int estoque,  String emoji)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Produto() when $default != null:
return $default(_that.id,_that.nome,_that.categoria,_that.preco,_that.custo,_that.estoque,_that.emoji);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String nome,  String categoria,  double preco,  double custo,  int estoque,  String emoji)  $default,) {final _that = this;
switch (_that) {
case _Produto():
return $default(_that.id,_that.nome,_that.categoria,_that.preco,_that.custo,_that.estoque,_that.emoji);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String nome,  String categoria,  double preco,  double custo,  int estoque,  String emoji)?  $default,) {final _that = this;
switch (_that) {
case _Produto() when $default != null:
return $default(_that.id,_that.nome,_that.categoria,_that.preco,_that.custo,_that.estoque,_that.emoji);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Produto extends Produto {
  const _Produto({this.id, required this.nome, required this.categoria, required this.preco, this.custo = 0, this.estoque = 0, this.emoji = '📦'}): super._();
  factory _Produto.fromJson(Map<String, dynamic> json) => _$ProdutoFromJson(json);

@override final  int? id;
@override final  String nome;
@override final  String categoria;
@override final  double preco;
@override@JsonKey() final  double custo;
@override@JsonKey() final  int estoque;
@override@JsonKey() final  String emoji;

/// Create a copy of Produto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProdutoCopyWith<_Produto> get copyWith => __$ProdutoCopyWithImpl<_Produto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProdutoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Produto&&(identical(other.id, id) || other.id == id)&&(identical(other.nome, nome) || other.nome == nome)&&(identical(other.categoria, categoria) || other.categoria == categoria)&&(identical(other.preco, preco) || other.preco == preco)&&(identical(other.custo, custo) || other.custo == custo)&&(identical(other.estoque, estoque) || other.estoque == estoque)&&(identical(other.emoji, emoji) || other.emoji == emoji));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,nome,categoria,preco,custo,estoque,emoji);

@override
String toString() {
  return 'Produto(id: $id, nome: $nome, categoria: $categoria, preco: $preco, custo: $custo, estoque: $estoque, emoji: $emoji)';
}


}

/// @nodoc
abstract mixin class _$ProdutoCopyWith<$Res> implements $ProdutoCopyWith<$Res> {
  factory _$ProdutoCopyWith(_Produto value, $Res Function(_Produto) _then) = __$ProdutoCopyWithImpl;
@override @useResult
$Res call({
 int? id, String nome, String categoria, double preco, double custo, int estoque, String emoji
});




}
/// @nodoc
class __$ProdutoCopyWithImpl<$Res>
    implements _$ProdutoCopyWith<$Res> {
  __$ProdutoCopyWithImpl(this._self, this._then);

  final _Produto _self;
  final $Res Function(_Produto) _then;

/// Create a copy of Produto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? nome = null,Object? categoria = null,Object? preco = null,Object? custo = null,Object? estoque = null,Object? emoji = null,}) {
  return _then(_Produto(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,nome: null == nome ? _self.nome : nome // ignore: cast_nullable_to_non_nullable
as String,categoria: null == categoria ? _self.categoria : categoria // ignore: cast_nullable_to_non_nullable
as String,preco: null == preco ? _self.preco : preco // ignore: cast_nullable_to_non_nullable
as double,custo: null == custo ? _self.custo : custo // ignore: cast_nullable_to_non_nullable
as double,estoque: null == estoque ? _self.estoque : estoque // ignore: cast_nullable_to_non_nullable
as int,emoji: null == emoji ? _self.emoji : emoji // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
