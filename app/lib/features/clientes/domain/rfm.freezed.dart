// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rfm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ClienteResumo {

 Cliente get cliente; DateTime? get primeiraCompra; DateTime? get ultimaCompra; int get compras; double get valorTotal;
/// Create a copy of ClienteResumo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClienteResumoCopyWith<ClienteResumo> get copyWith => _$ClienteResumoCopyWithImpl<ClienteResumo>(this as ClienteResumo, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClienteResumo&&(identical(other.cliente, cliente) || other.cliente == cliente)&&(identical(other.primeiraCompra, primeiraCompra) || other.primeiraCompra == primeiraCompra)&&(identical(other.ultimaCompra, ultimaCompra) || other.ultimaCompra == ultimaCompra)&&(identical(other.compras, compras) || other.compras == compras)&&(identical(other.valorTotal, valorTotal) || other.valorTotal == valorTotal));
}


@override
int get hashCode => Object.hash(runtimeType,cliente,primeiraCompra,ultimaCompra,compras,valorTotal);

@override
String toString() {
  return 'ClienteResumo(cliente: $cliente, primeiraCompra: $primeiraCompra, ultimaCompra: $ultimaCompra, compras: $compras, valorTotal: $valorTotal)';
}


}

/// @nodoc
abstract mixin class $ClienteResumoCopyWith<$Res>  {
  factory $ClienteResumoCopyWith(ClienteResumo value, $Res Function(ClienteResumo) _then) = _$ClienteResumoCopyWithImpl;
@useResult
$Res call({
 Cliente cliente, DateTime? primeiraCompra, DateTime? ultimaCompra, int compras, double valorTotal
});


$ClienteCopyWith<$Res> get cliente;

}
/// @nodoc
class _$ClienteResumoCopyWithImpl<$Res>
    implements $ClienteResumoCopyWith<$Res> {
  _$ClienteResumoCopyWithImpl(this._self, this._then);

  final ClienteResumo _self;
  final $Res Function(ClienteResumo) _then;

/// Create a copy of ClienteResumo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? cliente = null,Object? primeiraCompra = freezed,Object? ultimaCompra = freezed,Object? compras = null,Object? valorTotal = null,}) {
  return _then(_self.copyWith(
cliente: null == cliente ? _self.cliente : cliente // ignore: cast_nullable_to_non_nullable
as Cliente,primeiraCompra: freezed == primeiraCompra ? _self.primeiraCompra : primeiraCompra // ignore: cast_nullable_to_non_nullable
as DateTime?,ultimaCompra: freezed == ultimaCompra ? _self.ultimaCompra : ultimaCompra // ignore: cast_nullable_to_non_nullable
as DateTime?,compras: null == compras ? _self.compras : compras // ignore: cast_nullable_to_non_nullable
as int,valorTotal: null == valorTotal ? _self.valorTotal : valorTotal // ignore: cast_nullable_to_non_nullable
as double,
  ));
}
/// Create a copy of ClienteResumo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ClienteCopyWith<$Res> get cliente {
  
  return $ClienteCopyWith<$Res>(_self.cliente, (value) {
    return _then(_self.copyWith(cliente: value));
  });
}
}


/// Adds pattern-matching-related methods to [ClienteResumo].
extension ClienteResumoPatterns on ClienteResumo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClienteResumo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClienteResumo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClienteResumo value)  $default,){
final _that = this;
switch (_that) {
case _ClienteResumo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClienteResumo value)?  $default,){
final _that = this;
switch (_that) {
case _ClienteResumo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Cliente cliente,  DateTime? primeiraCompra,  DateTime? ultimaCompra,  int compras,  double valorTotal)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClienteResumo() when $default != null:
return $default(_that.cliente,_that.primeiraCompra,_that.ultimaCompra,_that.compras,_that.valorTotal);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Cliente cliente,  DateTime? primeiraCompra,  DateTime? ultimaCompra,  int compras,  double valorTotal)  $default,) {final _that = this;
switch (_that) {
case _ClienteResumo():
return $default(_that.cliente,_that.primeiraCompra,_that.ultimaCompra,_that.compras,_that.valorTotal);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Cliente cliente,  DateTime? primeiraCompra,  DateTime? ultimaCompra,  int compras,  double valorTotal)?  $default,) {final _that = this;
switch (_that) {
case _ClienteResumo() when $default != null:
return $default(_that.cliente,_that.primeiraCompra,_that.ultimaCompra,_that.compras,_that.valorTotal);case _:
  return null;

}
}

}

/// @nodoc


class _ClienteResumo implements ClienteResumo {
  const _ClienteResumo({required this.cliente, this.primeiraCompra, this.ultimaCompra, this.compras = 0, this.valorTotal = 0});
  

@override final  Cliente cliente;
@override final  DateTime? primeiraCompra;
@override final  DateTime? ultimaCompra;
@override@JsonKey() final  int compras;
@override@JsonKey() final  double valorTotal;

/// Create a copy of ClienteResumo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClienteResumoCopyWith<_ClienteResumo> get copyWith => __$ClienteResumoCopyWithImpl<_ClienteResumo>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClienteResumo&&(identical(other.cliente, cliente) || other.cliente == cliente)&&(identical(other.primeiraCompra, primeiraCompra) || other.primeiraCompra == primeiraCompra)&&(identical(other.ultimaCompra, ultimaCompra) || other.ultimaCompra == ultimaCompra)&&(identical(other.compras, compras) || other.compras == compras)&&(identical(other.valorTotal, valorTotal) || other.valorTotal == valorTotal));
}


@override
int get hashCode => Object.hash(runtimeType,cliente,primeiraCompra,ultimaCompra,compras,valorTotal);

@override
String toString() {
  return 'ClienteResumo(cliente: $cliente, primeiraCompra: $primeiraCompra, ultimaCompra: $ultimaCompra, compras: $compras, valorTotal: $valorTotal)';
}


}

/// @nodoc
abstract mixin class _$ClienteResumoCopyWith<$Res> implements $ClienteResumoCopyWith<$Res> {
  factory _$ClienteResumoCopyWith(_ClienteResumo value, $Res Function(_ClienteResumo) _then) = __$ClienteResumoCopyWithImpl;
@override @useResult
$Res call({
 Cliente cliente, DateTime? primeiraCompra, DateTime? ultimaCompra, int compras, double valorTotal
});


@override $ClienteCopyWith<$Res> get cliente;

}
/// @nodoc
class __$ClienteResumoCopyWithImpl<$Res>
    implements _$ClienteResumoCopyWith<$Res> {
  __$ClienteResumoCopyWithImpl(this._self, this._then);

  final _ClienteResumo _self;
  final $Res Function(_ClienteResumo) _then;

/// Create a copy of ClienteResumo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cliente = null,Object? primeiraCompra = freezed,Object? ultimaCompra = freezed,Object? compras = null,Object? valorTotal = null,}) {
  return _then(_ClienteResumo(
cliente: null == cliente ? _self.cliente : cliente // ignore: cast_nullable_to_non_nullable
as Cliente,primeiraCompra: freezed == primeiraCompra ? _self.primeiraCompra : primeiraCompra // ignore: cast_nullable_to_non_nullable
as DateTime?,ultimaCompra: freezed == ultimaCompra ? _self.ultimaCompra : ultimaCompra // ignore: cast_nullable_to_non_nullable
as DateTime?,compras: null == compras ? _self.compras : compras // ignore: cast_nullable_to_non_nullable
as int,valorTotal: null == valorTotal ? _self.valorTotal : valorTotal // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

/// Create a copy of ClienteResumo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ClienteCopyWith<$Res> get cliente {
  
  return $ClienteCopyWith<$Res>(_self.cliente, (value) {
    return _then(_self.copyWith(cliente: value));
  });
}
}

/// @nodoc
mixin _$ClienteRfm {

 Cliente get cliente; int get recenciaDias; int get frequencia; double get valor; int get r; int get f; int get m; Segmento get segmento; DateTime? get ultimaCompra;
/// Create a copy of ClienteRfm
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClienteRfmCopyWith<ClienteRfm> get copyWith => _$ClienteRfmCopyWithImpl<ClienteRfm>(this as ClienteRfm, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClienteRfm&&(identical(other.cliente, cliente) || other.cliente == cliente)&&(identical(other.recenciaDias, recenciaDias) || other.recenciaDias == recenciaDias)&&(identical(other.frequencia, frequencia) || other.frequencia == frequencia)&&(identical(other.valor, valor) || other.valor == valor)&&(identical(other.r, r) || other.r == r)&&(identical(other.f, f) || other.f == f)&&(identical(other.m, m) || other.m == m)&&(identical(other.segmento, segmento) || other.segmento == segmento)&&(identical(other.ultimaCompra, ultimaCompra) || other.ultimaCompra == ultimaCompra));
}


@override
int get hashCode => Object.hash(runtimeType,cliente,recenciaDias,frequencia,valor,r,f,m,segmento,ultimaCompra);

@override
String toString() {
  return 'ClienteRfm(cliente: $cliente, recenciaDias: $recenciaDias, frequencia: $frequencia, valor: $valor, r: $r, f: $f, m: $m, segmento: $segmento, ultimaCompra: $ultimaCompra)';
}


}

/// @nodoc
abstract mixin class $ClienteRfmCopyWith<$Res>  {
  factory $ClienteRfmCopyWith(ClienteRfm value, $Res Function(ClienteRfm) _then) = _$ClienteRfmCopyWithImpl;
@useResult
$Res call({
 Cliente cliente, int recenciaDias, int frequencia, double valor, int r, int f, int m, Segmento segmento, DateTime? ultimaCompra
});


$ClienteCopyWith<$Res> get cliente;

}
/// @nodoc
class _$ClienteRfmCopyWithImpl<$Res>
    implements $ClienteRfmCopyWith<$Res> {
  _$ClienteRfmCopyWithImpl(this._self, this._then);

  final ClienteRfm _self;
  final $Res Function(ClienteRfm) _then;

/// Create a copy of ClienteRfm
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? cliente = null,Object? recenciaDias = null,Object? frequencia = null,Object? valor = null,Object? r = null,Object? f = null,Object? m = null,Object? segmento = null,Object? ultimaCompra = freezed,}) {
  return _then(_self.copyWith(
cliente: null == cliente ? _self.cliente : cliente // ignore: cast_nullable_to_non_nullable
as Cliente,recenciaDias: null == recenciaDias ? _self.recenciaDias : recenciaDias // ignore: cast_nullable_to_non_nullable
as int,frequencia: null == frequencia ? _self.frequencia : frequencia // ignore: cast_nullable_to_non_nullable
as int,valor: null == valor ? _self.valor : valor // ignore: cast_nullable_to_non_nullable
as double,r: null == r ? _self.r : r // ignore: cast_nullable_to_non_nullable
as int,f: null == f ? _self.f : f // ignore: cast_nullable_to_non_nullable
as int,m: null == m ? _self.m : m // ignore: cast_nullable_to_non_nullable
as int,segmento: null == segmento ? _self.segmento : segmento // ignore: cast_nullable_to_non_nullable
as Segmento,ultimaCompra: freezed == ultimaCompra ? _self.ultimaCompra : ultimaCompra // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}
/// Create a copy of ClienteRfm
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ClienteCopyWith<$Res> get cliente {
  
  return $ClienteCopyWith<$Res>(_self.cliente, (value) {
    return _then(_self.copyWith(cliente: value));
  });
}
}


/// Adds pattern-matching-related methods to [ClienteRfm].
extension ClienteRfmPatterns on ClienteRfm {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClienteRfm value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClienteRfm() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClienteRfm value)  $default,){
final _that = this;
switch (_that) {
case _ClienteRfm():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClienteRfm value)?  $default,){
final _that = this;
switch (_that) {
case _ClienteRfm() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Cliente cliente,  int recenciaDias,  int frequencia,  double valor,  int r,  int f,  int m,  Segmento segmento,  DateTime? ultimaCompra)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClienteRfm() when $default != null:
return $default(_that.cliente,_that.recenciaDias,_that.frequencia,_that.valor,_that.r,_that.f,_that.m,_that.segmento,_that.ultimaCompra);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Cliente cliente,  int recenciaDias,  int frequencia,  double valor,  int r,  int f,  int m,  Segmento segmento,  DateTime? ultimaCompra)  $default,) {final _that = this;
switch (_that) {
case _ClienteRfm():
return $default(_that.cliente,_that.recenciaDias,_that.frequencia,_that.valor,_that.r,_that.f,_that.m,_that.segmento,_that.ultimaCompra);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Cliente cliente,  int recenciaDias,  int frequencia,  double valor,  int r,  int f,  int m,  Segmento segmento,  DateTime? ultimaCompra)?  $default,) {final _that = this;
switch (_that) {
case _ClienteRfm() when $default != null:
return $default(_that.cliente,_that.recenciaDias,_that.frequencia,_that.valor,_that.r,_that.f,_that.m,_that.segmento,_that.ultimaCompra);case _:
  return null;

}
}

}

/// @nodoc


class _ClienteRfm implements ClienteRfm {
  const _ClienteRfm({required this.cliente, required this.recenciaDias, required this.frequencia, required this.valor, required this.r, required this.f, required this.m, required this.segmento, this.ultimaCompra});
  

@override final  Cliente cliente;
@override final  int recenciaDias;
@override final  int frequencia;
@override final  double valor;
@override final  int r;
@override final  int f;
@override final  int m;
@override final  Segmento segmento;
@override final  DateTime? ultimaCompra;

/// Create a copy of ClienteRfm
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClienteRfmCopyWith<_ClienteRfm> get copyWith => __$ClienteRfmCopyWithImpl<_ClienteRfm>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClienteRfm&&(identical(other.cliente, cliente) || other.cliente == cliente)&&(identical(other.recenciaDias, recenciaDias) || other.recenciaDias == recenciaDias)&&(identical(other.frequencia, frequencia) || other.frequencia == frequencia)&&(identical(other.valor, valor) || other.valor == valor)&&(identical(other.r, r) || other.r == r)&&(identical(other.f, f) || other.f == f)&&(identical(other.m, m) || other.m == m)&&(identical(other.segmento, segmento) || other.segmento == segmento)&&(identical(other.ultimaCompra, ultimaCompra) || other.ultimaCompra == ultimaCompra));
}


@override
int get hashCode => Object.hash(runtimeType,cliente,recenciaDias,frequencia,valor,r,f,m,segmento,ultimaCompra);

@override
String toString() {
  return 'ClienteRfm(cliente: $cliente, recenciaDias: $recenciaDias, frequencia: $frequencia, valor: $valor, r: $r, f: $f, m: $m, segmento: $segmento, ultimaCompra: $ultimaCompra)';
}


}

/// @nodoc
abstract mixin class _$ClienteRfmCopyWith<$Res> implements $ClienteRfmCopyWith<$Res> {
  factory _$ClienteRfmCopyWith(_ClienteRfm value, $Res Function(_ClienteRfm) _then) = __$ClienteRfmCopyWithImpl;
@override @useResult
$Res call({
 Cliente cliente, int recenciaDias, int frequencia, double valor, int r, int f, int m, Segmento segmento, DateTime? ultimaCompra
});


@override $ClienteCopyWith<$Res> get cliente;

}
/// @nodoc
class __$ClienteRfmCopyWithImpl<$Res>
    implements _$ClienteRfmCopyWith<$Res> {
  __$ClienteRfmCopyWithImpl(this._self, this._then);

  final _ClienteRfm _self;
  final $Res Function(_ClienteRfm) _then;

/// Create a copy of ClienteRfm
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cliente = null,Object? recenciaDias = null,Object? frequencia = null,Object? valor = null,Object? r = null,Object? f = null,Object? m = null,Object? segmento = null,Object? ultimaCompra = freezed,}) {
  return _then(_ClienteRfm(
cliente: null == cliente ? _self.cliente : cliente // ignore: cast_nullable_to_non_nullable
as Cliente,recenciaDias: null == recenciaDias ? _self.recenciaDias : recenciaDias // ignore: cast_nullable_to_non_nullable
as int,frequencia: null == frequencia ? _self.frequencia : frequencia // ignore: cast_nullable_to_non_nullable
as int,valor: null == valor ? _self.valor : valor // ignore: cast_nullable_to_non_nullable
as double,r: null == r ? _self.r : r // ignore: cast_nullable_to_non_nullable
as int,f: null == f ? _self.f : f // ignore: cast_nullable_to_non_nullable
as int,m: null == m ? _self.m : m // ignore: cast_nullable_to_non_nullable
as int,segmento: null == segmento ? _self.segmento : segmento // ignore: cast_nullable_to_non_nullable
as Segmento,ultimaCompra: freezed == ultimaCompra ? _self.ultimaCompra : ultimaCompra // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

/// Create a copy of ClienteRfm
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ClienteCopyWith<$Res> get cliente {
  
  return $ClienteCopyWith<$Res>(_self.cliente, (value) {
    return _then(_self.copyWith(cliente: value));
  });
}
}

// dart format on
