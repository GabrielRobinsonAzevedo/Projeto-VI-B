// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'series.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PontoDiario {

 DateTime get dia; double get valor; int get vendas;
/// Create a copy of PontoDiario
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PontoDiarioCopyWith<PontoDiario> get copyWith => _$PontoDiarioCopyWithImpl<PontoDiario>(this as PontoDiario, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PontoDiario&&(identical(other.dia, dia) || other.dia == dia)&&(identical(other.valor, valor) || other.valor == valor)&&(identical(other.vendas, vendas) || other.vendas == vendas));
}


@override
int get hashCode => Object.hash(runtimeType,dia,valor,vendas);

@override
String toString() {
  return 'PontoDiario(dia: $dia, valor: $valor, vendas: $vendas)';
}


}

/// @nodoc
abstract mixin class $PontoDiarioCopyWith<$Res>  {
  factory $PontoDiarioCopyWith(PontoDiario value, $Res Function(PontoDiario) _then) = _$PontoDiarioCopyWithImpl;
@useResult
$Res call({
 DateTime dia, double valor, int vendas
});




}
/// @nodoc
class _$PontoDiarioCopyWithImpl<$Res>
    implements $PontoDiarioCopyWith<$Res> {
  _$PontoDiarioCopyWithImpl(this._self, this._then);

  final PontoDiario _self;
  final $Res Function(PontoDiario) _then;

/// Create a copy of PontoDiario
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? dia = null,Object? valor = null,Object? vendas = null,}) {
  return _then(_self.copyWith(
dia: null == dia ? _self.dia : dia // ignore: cast_nullable_to_non_nullable
as DateTime,valor: null == valor ? _self.valor : valor // ignore: cast_nullable_to_non_nullable
as double,vendas: null == vendas ? _self.vendas : vendas // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [PontoDiario].
extension PontoDiarioPatterns on PontoDiario {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PontoDiario value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PontoDiario() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PontoDiario value)  $default,){
final _that = this;
switch (_that) {
case _PontoDiario():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PontoDiario value)?  $default,){
final _that = this;
switch (_that) {
case _PontoDiario() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime dia,  double valor,  int vendas)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PontoDiario() when $default != null:
return $default(_that.dia,_that.valor,_that.vendas);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime dia,  double valor,  int vendas)  $default,) {final _that = this;
switch (_that) {
case _PontoDiario():
return $default(_that.dia,_that.valor,_that.vendas);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime dia,  double valor,  int vendas)?  $default,) {final _that = this;
switch (_that) {
case _PontoDiario() when $default != null:
return $default(_that.dia,_that.valor,_that.vendas);case _:
  return null;

}
}

}

/// @nodoc


class _PontoDiario implements PontoDiario {
  const _PontoDiario({required this.dia, required this.valor, this.vendas = 0});
  

@override final  DateTime dia;
@override final  double valor;
@override@JsonKey() final  int vendas;

/// Create a copy of PontoDiario
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PontoDiarioCopyWith<_PontoDiario> get copyWith => __$PontoDiarioCopyWithImpl<_PontoDiario>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PontoDiario&&(identical(other.dia, dia) || other.dia == dia)&&(identical(other.valor, valor) || other.valor == valor)&&(identical(other.vendas, vendas) || other.vendas == vendas));
}


@override
int get hashCode => Object.hash(runtimeType,dia,valor,vendas);

@override
String toString() {
  return 'PontoDiario(dia: $dia, valor: $valor, vendas: $vendas)';
}


}

/// @nodoc
abstract mixin class _$PontoDiarioCopyWith<$Res> implements $PontoDiarioCopyWith<$Res> {
  factory _$PontoDiarioCopyWith(_PontoDiario value, $Res Function(_PontoDiario) _then) = __$PontoDiarioCopyWithImpl;
@override @useResult
$Res call({
 DateTime dia, double valor, int vendas
});




}
/// @nodoc
class __$PontoDiarioCopyWithImpl<$Res>
    implements _$PontoDiarioCopyWith<$Res> {
  __$PontoDiarioCopyWithImpl(this._self, this._then);

  final _PontoDiario _self;
  final $Res Function(_PontoDiario) _then;

/// Create a copy of PontoDiario
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? dia = null,Object? valor = null,Object? vendas = null,}) {
  return _then(_PontoDiario(
dia: null == dia ? _self.dia : dia // ignore: cast_nullable_to_non_nullable
as DateTime,valor: null == valor ? _self.valor : valor // ignore: cast_nullable_to_non_nullable
as double,vendas: null == vendas ? _self.vendas : vendas // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$ResumoPeriodo {

 double get receita; int get vendas;
/// Create a copy of ResumoPeriodo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResumoPeriodoCopyWith<ResumoPeriodo> get copyWith => _$ResumoPeriodoCopyWithImpl<ResumoPeriodo>(this as ResumoPeriodo, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResumoPeriodo&&(identical(other.receita, receita) || other.receita == receita)&&(identical(other.vendas, vendas) || other.vendas == vendas));
}


@override
int get hashCode => Object.hash(runtimeType,receita,vendas);

@override
String toString() {
  return 'ResumoPeriodo(receita: $receita, vendas: $vendas)';
}


}

/// @nodoc
abstract mixin class $ResumoPeriodoCopyWith<$Res>  {
  factory $ResumoPeriodoCopyWith(ResumoPeriodo value, $Res Function(ResumoPeriodo) _then) = _$ResumoPeriodoCopyWithImpl;
@useResult
$Res call({
 double receita, int vendas
});




}
/// @nodoc
class _$ResumoPeriodoCopyWithImpl<$Res>
    implements $ResumoPeriodoCopyWith<$Res> {
  _$ResumoPeriodoCopyWithImpl(this._self, this._then);

  final ResumoPeriodo _self;
  final $Res Function(ResumoPeriodo) _then;

/// Create a copy of ResumoPeriodo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? receita = null,Object? vendas = null,}) {
  return _then(_self.copyWith(
receita: null == receita ? _self.receita : receita // ignore: cast_nullable_to_non_nullable
as double,vendas: null == vendas ? _self.vendas : vendas // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ResumoPeriodo].
extension ResumoPeriodoPatterns on ResumoPeriodo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ResumoPeriodo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ResumoPeriodo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ResumoPeriodo value)  $default,){
final _that = this;
switch (_that) {
case _ResumoPeriodo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ResumoPeriodo value)?  $default,){
final _that = this;
switch (_that) {
case _ResumoPeriodo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double receita,  int vendas)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ResumoPeriodo() when $default != null:
return $default(_that.receita,_that.vendas);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double receita,  int vendas)  $default,) {final _that = this;
switch (_that) {
case _ResumoPeriodo():
return $default(_that.receita,_that.vendas);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double receita,  int vendas)?  $default,) {final _that = this;
switch (_that) {
case _ResumoPeriodo() when $default != null:
return $default(_that.receita,_that.vendas);case _:
  return null;

}
}

}

/// @nodoc


class _ResumoPeriodo extends ResumoPeriodo {
  const _ResumoPeriodo({required this.receita, required this.vendas}): super._();
  

@override final  double receita;
@override final  int vendas;

/// Create a copy of ResumoPeriodo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ResumoPeriodoCopyWith<_ResumoPeriodo> get copyWith => __$ResumoPeriodoCopyWithImpl<_ResumoPeriodo>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResumoPeriodo&&(identical(other.receita, receita) || other.receita == receita)&&(identical(other.vendas, vendas) || other.vendas == vendas));
}


@override
int get hashCode => Object.hash(runtimeType,receita,vendas);

@override
String toString() {
  return 'ResumoPeriodo(receita: $receita, vendas: $vendas)';
}


}

/// @nodoc
abstract mixin class _$ResumoPeriodoCopyWith<$Res> implements $ResumoPeriodoCopyWith<$Res> {
  factory _$ResumoPeriodoCopyWith(_ResumoPeriodo value, $Res Function(_ResumoPeriodo) _then) = __$ResumoPeriodoCopyWithImpl;
@override @useResult
$Res call({
 double receita, int vendas
});




}
/// @nodoc
class __$ResumoPeriodoCopyWithImpl<$Res>
    implements _$ResumoPeriodoCopyWith<$Res> {
  __$ResumoPeriodoCopyWithImpl(this._self, this._then);

  final _ResumoPeriodo _self;
  final $Res Function(_ResumoPeriodo) _then;

/// Create a copy of ResumoPeriodo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? receita = null,Object? vendas = null,}) {
  return _then(_ResumoPeriodo(
receita: null == receita ? _self.receita : receita // ignore: cast_nullable_to_non_nullable
as double,vendas: null == vendas ? _self.vendas : vendas // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
