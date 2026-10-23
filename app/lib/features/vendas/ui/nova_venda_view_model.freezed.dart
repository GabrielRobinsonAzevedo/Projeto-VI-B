// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nova_venda_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NovaVendaState {

 List<Produto> get produtos; List<Cliente> get clientes;/// produtoId → quantidade no carrinho.
 Map<int, int> get carrinho; Cliente? get cliente; String get formaPagamento; String? get categoria; String get busca; bool get salvando;
/// Create a copy of NovaVendaState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NovaVendaStateCopyWith<NovaVendaState> get copyWith => _$NovaVendaStateCopyWithImpl<NovaVendaState>(this as NovaVendaState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NovaVendaState&&const DeepCollectionEquality().equals(other.produtos, produtos)&&const DeepCollectionEquality().equals(other.clientes, clientes)&&const DeepCollectionEquality().equals(other.carrinho, carrinho)&&(identical(other.cliente, cliente) || other.cliente == cliente)&&(identical(other.formaPagamento, formaPagamento) || other.formaPagamento == formaPagamento)&&(identical(other.categoria, categoria) || other.categoria == categoria)&&(identical(other.busca, busca) || other.busca == busca)&&(identical(other.salvando, salvando) || other.salvando == salvando));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(produtos),const DeepCollectionEquality().hash(clientes),const DeepCollectionEquality().hash(carrinho),cliente,formaPagamento,categoria,busca,salvando);

@override
String toString() {
  return 'NovaVendaState(produtos: $produtos, clientes: $clientes, carrinho: $carrinho, cliente: $cliente, formaPagamento: $formaPagamento, categoria: $categoria, busca: $busca, salvando: $salvando)';
}


}

/// @nodoc
abstract mixin class $NovaVendaStateCopyWith<$Res>  {
  factory $NovaVendaStateCopyWith(NovaVendaState value, $Res Function(NovaVendaState) _then) = _$NovaVendaStateCopyWithImpl;
@useResult
$Res call({
 List<Produto> produtos, List<Cliente> clientes, Map<int, int> carrinho, Cliente? cliente, String formaPagamento, String? categoria, String busca, bool salvando
});


$ClienteCopyWith<$Res>? get cliente;

}
/// @nodoc
class _$NovaVendaStateCopyWithImpl<$Res>
    implements $NovaVendaStateCopyWith<$Res> {
  _$NovaVendaStateCopyWithImpl(this._self, this._then);

  final NovaVendaState _self;
  final $Res Function(NovaVendaState) _then;

/// Create a copy of NovaVendaState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? produtos = null,Object? clientes = null,Object? carrinho = null,Object? cliente = freezed,Object? formaPagamento = null,Object? categoria = freezed,Object? busca = null,Object? salvando = null,}) {
  return _then(_self.copyWith(
produtos: null == produtos ? _self.produtos : produtos // ignore: cast_nullable_to_non_nullable
as List<Produto>,clientes: null == clientes ? _self.clientes : clientes // ignore: cast_nullable_to_non_nullable
as List<Cliente>,carrinho: null == carrinho ? _self.carrinho : carrinho // ignore: cast_nullable_to_non_nullable
as Map<int, int>,cliente: freezed == cliente ? _self.cliente : cliente // ignore: cast_nullable_to_non_nullable
as Cliente?,formaPagamento: null == formaPagamento ? _self.formaPagamento : formaPagamento // ignore: cast_nullable_to_non_nullable
as String,categoria: freezed == categoria ? _self.categoria : categoria // ignore: cast_nullable_to_non_nullable
as String?,busca: null == busca ? _self.busca : busca // ignore: cast_nullable_to_non_nullable
as String,salvando: null == salvando ? _self.salvando : salvando // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of NovaVendaState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ClienteCopyWith<$Res>? get cliente {
    if (_self.cliente == null) {
    return null;
  }

  return $ClienteCopyWith<$Res>(_self.cliente!, (value) {
    return _then(_self.copyWith(cliente: value));
  });
}
}


/// Adds pattern-matching-related methods to [NovaVendaState].
extension NovaVendaStatePatterns on NovaVendaState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NovaVendaState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NovaVendaState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NovaVendaState value)  $default,){
final _that = this;
switch (_that) {
case _NovaVendaState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NovaVendaState value)?  $default,){
final _that = this;
switch (_that) {
case _NovaVendaState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Produto> produtos,  List<Cliente> clientes,  Map<int, int> carrinho,  Cliente? cliente,  String formaPagamento,  String? categoria,  String busca,  bool salvando)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NovaVendaState() when $default != null:
return $default(_that.produtos,_that.clientes,_that.carrinho,_that.cliente,_that.formaPagamento,_that.categoria,_that.busca,_that.salvando);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Produto> produtos,  List<Cliente> clientes,  Map<int, int> carrinho,  Cliente? cliente,  String formaPagamento,  String? categoria,  String busca,  bool salvando)  $default,) {final _that = this;
switch (_that) {
case _NovaVendaState():
return $default(_that.produtos,_that.clientes,_that.carrinho,_that.cliente,_that.formaPagamento,_that.categoria,_that.busca,_that.salvando);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Produto> produtos,  List<Cliente> clientes,  Map<int, int> carrinho,  Cliente? cliente,  String formaPagamento,  String? categoria,  String busca,  bool salvando)?  $default,) {final _that = this;
switch (_that) {
case _NovaVendaState() when $default != null:
return $default(_that.produtos,_that.clientes,_that.carrinho,_that.cliente,_that.formaPagamento,_that.categoria,_that.busca,_that.salvando);case _:
  return null;

}
}

}

/// @nodoc


class _NovaVendaState extends NovaVendaState {
  const _NovaVendaState({required final  List<Produto> produtos, required final  List<Cliente> clientes, final  Map<int, int> carrinho = const <int, int>{}, this.cliente, this.formaPagamento = 'Pix', this.categoria, this.busca = '', this.salvando = false}): _produtos = produtos,_clientes = clientes,_carrinho = carrinho,super._();
  

 final  List<Produto> _produtos;
@override List<Produto> get produtos {
  if (_produtos is EqualUnmodifiableListView) return _produtos;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_produtos);
}

 final  List<Cliente> _clientes;
@override List<Cliente> get clientes {
  if (_clientes is EqualUnmodifiableListView) return _clientes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_clientes);
}

/// produtoId → quantidade no carrinho.
 final  Map<int, int> _carrinho;
/// produtoId → quantidade no carrinho.
@override@JsonKey() Map<int, int> get carrinho {
  if (_carrinho is EqualUnmodifiableMapView) return _carrinho;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_carrinho);
}

@override final  Cliente? cliente;
@override@JsonKey() final  String formaPagamento;
@override final  String? categoria;
@override@JsonKey() final  String busca;
@override@JsonKey() final  bool salvando;

/// Create a copy of NovaVendaState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NovaVendaStateCopyWith<_NovaVendaState> get copyWith => __$NovaVendaStateCopyWithImpl<_NovaVendaState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NovaVendaState&&const DeepCollectionEquality().equals(other._produtos, _produtos)&&const DeepCollectionEquality().equals(other._clientes, _clientes)&&const DeepCollectionEquality().equals(other._carrinho, _carrinho)&&(identical(other.cliente, cliente) || other.cliente == cliente)&&(identical(other.formaPagamento, formaPagamento) || other.formaPagamento == formaPagamento)&&(identical(other.categoria, categoria) || other.categoria == categoria)&&(identical(other.busca, busca) || other.busca == busca)&&(identical(other.salvando, salvando) || other.salvando == salvando));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_produtos),const DeepCollectionEquality().hash(_clientes),const DeepCollectionEquality().hash(_carrinho),cliente,formaPagamento,categoria,busca,salvando);

@override
String toString() {
  return 'NovaVendaState(produtos: $produtos, clientes: $clientes, carrinho: $carrinho, cliente: $cliente, formaPagamento: $formaPagamento, categoria: $categoria, busca: $busca, salvando: $salvando)';
}


}

/// @nodoc
abstract mixin class _$NovaVendaStateCopyWith<$Res> implements $NovaVendaStateCopyWith<$Res> {
  factory _$NovaVendaStateCopyWith(_NovaVendaState value, $Res Function(_NovaVendaState) _then) = __$NovaVendaStateCopyWithImpl;
@override @useResult
$Res call({
 List<Produto> produtos, List<Cliente> clientes, Map<int, int> carrinho, Cliente? cliente, String formaPagamento, String? categoria, String busca, bool salvando
});


@override $ClienteCopyWith<$Res>? get cliente;

}
/// @nodoc
class __$NovaVendaStateCopyWithImpl<$Res>
    implements _$NovaVendaStateCopyWith<$Res> {
  __$NovaVendaStateCopyWithImpl(this._self, this._then);

  final _NovaVendaState _self;
  final $Res Function(_NovaVendaState) _then;

/// Create a copy of NovaVendaState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? produtos = null,Object? clientes = null,Object? carrinho = null,Object? cliente = freezed,Object? formaPagamento = null,Object? categoria = freezed,Object? busca = null,Object? salvando = null,}) {
  return _then(_NovaVendaState(
produtos: null == produtos ? _self._produtos : produtos // ignore: cast_nullable_to_non_nullable
as List<Produto>,clientes: null == clientes ? _self._clientes : clientes // ignore: cast_nullable_to_non_nullable
as List<Cliente>,carrinho: null == carrinho ? _self._carrinho : carrinho // ignore: cast_nullable_to_non_nullable
as Map<int, int>,cliente: freezed == cliente ? _self.cliente : cliente // ignore: cast_nullable_to_non_nullable
as Cliente?,formaPagamento: null == formaPagamento ? _self.formaPagamento : formaPagamento // ignore: cast_nullable_to_non_nullable
as String,categoria: freezed == categoria ? _self.categoria : categoria // ignore: cast_nullable_to_non_nullable
as String?,busca: null == busca ? _self.busca : busca // ignore: cast_nullable_to_non_nullable
as String,salvando: null == salvando ? _self.salvando : salvando // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of NovaVendaState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ClienteCopyWith<$Res>? get cliente {
    if (_self.cliente == null) {
    return null;
  }

  return $ClienteCopyWith<$Res>(_self.cliente!, (value) {
    return _then(_self.copyWith(cliente: value));
  });
}
}

// dart format on
