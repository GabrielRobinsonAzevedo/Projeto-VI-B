// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'venda.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Venda {

 int? get id; int? get clienteId; String? get clienteNome; DateTime get dataHora; String get formaPagamento; double get total; int get quantidadeItens; List<ItemVenda> get itens;
/// Create a copy of Venda
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VendaCopyWith<Venda> get copyWith => _$VendaCopyWithImpl<Venda>(this as Venda, _$identity);

  /// Serializes this Venda to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Venda&&(identical(other.id, id) || other.id == id)&&(identical(other.clienteId, clienteId) || other.clienteId == clienteId)&&(identical(other.clienteNome, clienteNome) || other.clienteNome == clienteNome)&&(identical(other.dataHora, dataHora) || other.dataHora == dataHora)&&(identical(other.formaPagamento, formaPagamento) || other.formaPagamento == formaPagamento)&&(identical(other.total, total) || other.total == total)&&(identical(other.quantidadeItens, quantidadeItens) || other.quantidadeItens == quantidadeItens)&&const DeepCollectionEquality().equals(other.itens, itens));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,clienteId,clienteNome,dataHora,formaPagamento,total,quantidadeItens,const DeepCollectionEquality().hash(itens));

@override
String toString() {
  return 'Venda(id: $id, clienteId: $clienteId, clienteNome: $clienteNome, dataHora: $dataHora, formaPagamento: $formaPagamento, total: $total, quantidadeItens: $quantidadeItens, itens: $itens)';
}


}

/// @nodoc
abstract mixin class $VendaCopyWith<$Res>  {
  factory $VendaCopyWith(Venda value, $Res Function(Venda) _then) = _$VendaCopyWithImpl;
@useResult
$Res call({
 int? id, int? clienteId, String? clienteNome, DateTime dataHora, String formaPagamento, double total, int quantidadeItens, List<ItemVenda> itens
});




}
/// @nodoc
class _$VendaCopyWithImpl<$Res>
    implements $VendaCopyWith<$Res> {
  _$VendaCopyWithImpl(this._self, this._then);

  final Venda _self;
  final $Res Function(Venda) _then;

/// Create a copy of Venda
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? clienteId = freezed,Object? clienteNome = freezed,Object? dataHora = null,Object? formaPagamento = null,Object? total = null,Object? quantidadeItens = null,Object? itens = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,clienteId: freezed == clienteId ? _self.clienteId : clienteId // ignore: cast_nullable_to_non_nullable
as int?,clienteNome: freezed == clienteNome ? _self.clienteNome : clienteNome // ignore: cast_nullable_to_non_nullable
as String?,dataHora: null == dataHora ? _self.dataHora : dataHora // ignore: cast_nullable_to_non_nullable
as DateTime,formaPagamento: null == formaPagamento ? _self.formaPagamento : formaPagamento // ignore: cast_nullable_to_non_nullable
as String,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as double,quantidadeItens: null == quantidadeItens ? _self.quantidadeItens : quantidadeItens // ignore: cast_nullable_to_non_nullable
as int,itens: null == itens ? _self.itens : itens // ignore: cast_nullable_to_non_nullable
as List<ItemVenda>,
  ));
}

}


/// Adds pattern-matching-related methods to [Venda].
extension VendaPatterns on Venda {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Venda value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Venda() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Venda value)  $default,){
final _that = this;
switch (_that) {
case _Venda():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Venda value)?  $default,){
final _that = this;
switch (_that) {
case _Venda() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  int? clienteId,  String? clienteNome,  DateTime dataHora,  String formaPagamento,  double total,  int quantidadeItens,  List<ItemVenda> itens)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Venda() when $default != null:
return $default(_that.id,_that.clienteId,_that.clienteNome,_that.dataHora,_that.formaPagamento,_that.total,_that.quantidadeItens,_that.itens);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  int? clienteId,  String? clienteNome,  DateTime dataHora,  String formaPagamento,  double total,  int quantidadeItens,  List<ItemVenda> itens)  $default,) {final _that = this;
switch (_that) {
case _Venda():
return $default(_that.id,_that.clienteId,_that.clienteNome,_that.dataHora,_that.formaPagamento,_that.total,_that.quantidadeItens,_that.itens);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  int? clienteId,  String? clienteNome,  DateTime dataHora,  String formaPagamento,  double total,  int quantidadeItens,  List<ItemVenda> itens)?  $default,) {final _that = this;
switch (_that) {
case _Venda() when $default != null:
return $default(_that.id,_that.clienteId,_that.clienteNome,_that.dataHora,_that.formaPagamento,_that.total,_that.quantidadeItens,_that.itens);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Venda implements Venda {
  const _Venda({this.id, this.clienteId, this.clienteNome, required this.dataHora, required this.formaPagamento, required this.total, this.quantidadeItens = 0, final  List<ItemVenda> itens = const <ItemVenda>[]}): _itens = itens;
  factory _Venda.fromJson(Map<String, dynamic> json) => _$VendaFromJson(json);

@override final  int? id;
@override final  int? clienteId;
@override final  String? clienteNome;
@override final  DateTime dataHora;
@override final  String formaPagamento;
@override final  double total;
@override@JsonKey() final  int quantidadeItens;
 final  List<ItemVenda> _itens;
@override@JsonKey() List<ItemVenda> get itens {
  if (_itens is EqualUnmodifiableListView) return _itens;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_itens);
}


/// Create a copy of Venda
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VendaCopyWith<_Venda> get copyWith => __$VendaCopyWithImpl<_Venda>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VendaToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Venda&&(identical(other.id, id) || other.id == id)&&(identical(other.clienteId, clienteId) || other.clienteId == clienteId)&&(identical(other.clienteNome, clienteNome) || other.clienteNome == clienteNome)&&(identical(other.dataHora, dataHora) || other.dataHora == dataHora)&&(identical(other.formaPagamento, formaPagamento) || other.formaPagamento == formaPagamento)&&(identical(other.total, total) || other.total == total)&&(identical(other.quantidadeItens, quantidadeItens) || other.quantidadeItens == quantidadeItens)&&const DeepCollectionEquality().equals(other._itens, _itens));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,clienteId,clienteNome,dataHora,formaPagamento,total,quantidadeItens,const DeepCollectionEquality().hash(_itens));

@override
String toString() {
  return 'Venda(id: $id, clienteId: $clienteId, clienteNome: $clienteNome, dataHora: $dataHora, formaPagamento: $formaPagamento, total: $total, quantidadeItens: $quantidadeItens, itens: $itens)';
}


}

/// @nodoc
abstract mixin class _$VendaCopyWith<$Res> implements $VendaCopyWith<$Res> {
  factory _$VendaCopyWith(_Venda value, $Res Function(_Venda) _then) = __$VendaCopyWithImpl;
@override @useResult
$Res call({
 int? id, int? clienteId, String? clienteNome, DateTime dataHora, String formaPagamento, double total, int quantidadeItens, List<ItemVenda> itens
});




}
/// @nodoc
class __$VendaCopyWithImpl<$Res>
    implements _$VendaCopyWith<$Res> {
  __$VendaCopyWithImpl(this._self, this._then);

  final _Venda _self;
  final $Res Function(_Venda) _then;

/// Create a copy of Venda
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? clienteId = freezed,Object? clienteNome = freezed,Object? dataHora = null,Object? formaPagamento = null,Object? total = null,Object? quantidadeItens = null,Object? itens = null,}) {
  return _then(_Venda(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,clienteId: freezed == clienteId ? _self.clienteId : clienteId // ignore: cast_nullable_to_non_nullable
as int?,clienteNome: freezed == clienteNome ? _self.clienteNome : clienteNome // ignore: cast_nullable_to_non_nullable
as String?,dataHora: null == dataHora ? _self.dataHora : dataHora // ignore: cast_nullable_to_non_nullable
as DateTime,formaPagamento: null == formaPagamento ? _self.formaPagamento : formaPagamento // ignore: cast_nullable_to_non_nullable
as String,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as double,quantidadeItens: null == quantidadeItens ? _self.quantidadeItens : quantidadeItens // ignore: cast_nullable_to_non_nullable
as int,itens: null == itens ? _self._itens : itens // ignore: cast_nullable_to_non_nullable
as List<ItemVenda>,
  ));
}


}


/// @nodoc
mixin _$ItemVenda {

 int get produtoId; String get nome; String get emoji; int get quantidade; double get precoUnitario;
/// Create a copy of ItemVenda
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ItemVendaCopyWith<ItemVenda> get copyWith => _$ItemVendaCopyWithImpl<ItemVenda>(this as ItemVenda, _$identity);

  /// Serializes this ItemVenda to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ItemVenda&&(identical(other.produtoId, produtoId) || other.produtoId == produtoId)&&(identical(other.nome, nome) || other.nome == nome)&&(identical(other.emoji, emoji) || other.emoji == emoji)&&(identical(other.quantidade, quantidade) || other.quantidade == quantidade)&&(identical(other.precoUnitario, precoUnitario) || other.precoUnitario == precoUnitario));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,produtoId,nome,emoji,quantidade,precoUnitario);

@override
String toString() {
  return 'ItemVenda(produtoId: $produtoId, nome: $nome, emoji: $emoji, quantidade: $quantidade, precoUnitario: $precoUnitario)';
}


}

/// @nodoc
abstract mixin class $ItemVendaCopyWith<$Res>  {
  factory $ItemVendaCopyWith(ItemVenda value, $Res Function(ItemVenda) _then) = _$ItemVendaCopyWithImpl;
@useResult
$Res call({
 int produtoId, String nome, String emoji, int quantidade, double precoUnitario
});




}
/// @nodoc
class _$ItemVendaCopyWithImpl<$Res>
    implements $ItemVendaCopyWith<$Res> {
  _$ItemVendaCopyWithImpl(this._self, this._then);

  final ItemVenda _self;
  final $Res Function(ItemVenda) _then;

/// Create a copy of ItemVenda
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? produtoId = null,Object? nome = null,Object? emoji = null,Object? quantidade = null,Object? precoUnitario = null,}) {
  return _then(_self.copyWith(
produtoId: null == produtoId ? _self.produtoId : produtoId // ignore: cast_nullable_to_non_nullable
as int,nome: null == nome ? _self.nome : nome // ignore: cast_nullable_to_non_nullable
as String,emoji: null == emoji ? _self.emoji : emoji // ignore: cast_nullable_to_non_nullable
as String,quantidade: null == quantidade ? _self.quantidade : quantidade // ignore: cast_nullable_to_non_nullable
as int,precoUnitario: null == precoUnitario ? _self.precoUnitario : precoUnitario // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [ItemVenda].
extension ItemVendaPatterns on ItemVenda {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ItemVenda value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ItemVenda() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ItemVenda value)  $default,){
final _that = this;
switch (_that) {
case _ItemVenda():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ItemVenda value)?  $default,){
final _that = this;
switch (_that) {
case _ItemVenda() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int produtoId,  String nome,  String emoji,  int quantidade,  double precoUnitario)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ItemVenda() when $default != null:
return $default(_that.produtoId,_that.nome,_that.emoji,_that.quantidade,_that.precoUnitario);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int produtoId,  String nome,  String emoji,  int quantidade,  double precoUnitario)  $default,) {final _that = this;
switch (_that) {
case _ItemVenda():
return $default(_that.produtoId,_that.nome,_that.emoji,_that.quantidade,_that.precoUnitario);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int produtoId,  String nome,  String emoji,  int quantidade,  double precoUnitario)?  $default,) {final _that = this;
switch (_that) {
case _ItemVenda() when $default != null:
return $default(_that.produtoId,_that.nome,_that.emoji,_that.quantidade,_that.precoUnitario);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ItemVenda extends ItemVenda {
  const _ItemVenda({required this.produtoId, required this.nome, this.emoji = '📦', required this.quantidade, required this.precoUnitario}): super._();
  factory _ItemVenda.fromJson(Map<String, dynamic> json) => _$ItemVendaFromJson(json);

@override final  int produtoId;
@override final  String nome;
@override@JsonKey() final  String emoji;
@override final  int quantidade;
@override final  double precoUnitario;

/// Create a copy of ItemVenda
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ItemVendaCopyWith<_ItemVenda> get copyWith => __$ItemVendaCopyWithImpl<_ItemVenda>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ItemVendaToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ItemVenda&&(identical(other.produtoId, produtoId) || other.produtoId == produtoId)&&(identical(other.nome, nome) || other.nome == nome)&&(identical(other.emoji, emoji) || other.emoji == emoji)&&(identical(other.quantidade, quantidade) || other.quantidade == quantidade)&&(identical(other.precoUnitario, precoUnitario) || other.precoUnitario == precoUnitario));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,produtoId,nome,emoji,quantidade,precoUnitario);

@override
String toString() {
  return 'ItemVenda(produtoId: $produtoId, nome: $nome, emoji: $emoji, quantidade: $quantidade, precoUnitario: $precoUnitario)';
}


}

/// @nodoc
abstract mixin class _$ItemVendaCopyWith<$Res> implements $ItemVendaCopyWith<$Res> {
  factory _$ItemVendaCopyWith(_ItemVenda value, $Res Function(_ItemVenda) _then) = __$ItemVendaCopyWithImpl;
@override @useResult
$Res call({
 int produtoId, String nome, String emoji, int quantidade, double precoUnitario
});




}
/// @nodoc
class __$ItemVendaCopyWithImpl<$Res>
    implements _$ItemVendaCopyWith<$Res> {
  __$ItemVendaCopyWithImpl(this._self, this._then);

  final _ItemVenda _self;
  final $Res Function(_ItemVenda) _then;

/// Create a copy of ItemVenda
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? produtoId = null,Object? nome = null,Object? emoji = null,Object? quantidade = null,Object? precoUnitario = null,}) {
  return _then(_ItemVenda(
produtoId: null == produtoId ? _self.produtoId : produtoId // ignore: cast_nullable_to_non_nullable
as int,nome: null == nome ? _self.nome : nome // ignore: cast_nullable_to_non_nullable
as String,emoji: null == emoji ? _self.emoji : emoji // ignore: cast_nullable_to_non_nullable
as String,quantidade: null == quantidade ? _self.quantidade : quantidade // ignore: cast_nullable_to_non_nullable
as int,precoUnitario: null == precoUnitario ? _self.precoUnitario : precoUnitario // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
