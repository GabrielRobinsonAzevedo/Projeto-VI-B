// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vendas_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$VendasState {

 PeriodoVendas get periodo; List<Venda> get vendas;
/// Create a copy of VendasState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VendasStateCopyWith<VendasState> get copyWith => _$VendasStateCopyWithImpl<VendasState>(this as VendasState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VendasState&&(identical(other.periodo, periodo) || other.periodo == periodo)&&const DeepCollectionEquality().equals(other.vendas, vendas));
}


@override
int get hashCode => Object.hash(runtimeType,periodo,const DeepCollectionEquality().hash(vendas));

@override
String toString() {
  return 'VendasState(periodo: $periodo, vendas: $vendas)';
}


}

/// @nodoc
abstract mixin class $VendasStateCopyWith<$Res>  {
  factory $VendasStateCopyWith(VendasState value, $Res Function(VendasState) _then) = _$VendasStateCopyWithImpl;
@useResult
$Res call({
 PeriodoVendas periodo, List<Venda> vendas
});




}
/// @nodoc
class _$VendasStateCopyWithImpl<$Res>
    implements $VendasStateCopyWith<$Res> {
  _$VendasStateCopyWithImpl(this._self, this._then);

  final VendasState _self;
  final $Res Function(VendasState) _then;

/// Create a copy of VendasState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? periodo = null,Object? vendas = null,}) {
  return _then(_self.copyWith(
periodo: null == periodo ? _self.periodo : periodo // ignore: cast_nullable_to_non_nullable
as PeriodoVendas,vendas: null == vendas ? _self.vendas : vendas // ignore: cast_nullable_to_non_nullable
as List<Venda>,
  ));
}

}


/// Adds pattern-matching-related methods to [VendasState].
extension VendasStatePatterns on VendasState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VendasState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VendasState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VendasState value)  $default,){
final _that = this;
switch (_that) {
case _VendasState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VendasState value)?  $default,){
final _that = this;
switch (_that) {
case _VendasState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( PeriodoVendas periodo,  List<Venda> vendas)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VendasState() when $default != null:
return $default(_that.periodo,_that.vendas);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( PeriodoVendas periodo,  List<Venda> vendas)  $default,) {final _that = this;
switch (_that) {
case _VendasState():
return $default(_that.periodo,_that.vendas);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( PeriodoVendas periodo,  List<Venda> vendas)?  $default,) {final _that = this;
switch (_that) {
case _VendasState() when $default != null:
return $default(_that.periodo,_that.vendas);case _:
  return null;

}
}

}

/// @nodoc


class _VendasState extends VendasState {
  const _VendasState({required this.periodo, required final  List<Venda> vendas}): _vendas = vendas,super._();
  

@override final  PeriodoVendas periodo;
 final  List<Venda> _vendas;
@override List<Venda> get vendas {
  if (_vendas is EqualUnmodifiableListView) return _vendas;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_vendas);
}


/// Create a copy of VendasState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VendasStateCopyWith<_VendasState> get copyWith => __$VendasStateCopyWithImpl<_VendasState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VendasState&&(identical(other.periodo, periodo) || other.periodo == periodo)&&const DeepCollectionEquality().equals(other._vendas, _vendas));
}


@override
int get hashCode => Object.hash(runtimeType,periodo,const DeepCollectionEquality().hash(_vendas));

@override
String toString() {
  return 'VendasState(periodo: $periodo, vendas: $vendas)';
}


}

/// @nodoc
abstract mixin class _$VendasStateCopyWith<$Res> implements $VendasStateCopyWith<$Res> {
  factory _$VendasStateCopyWith(_VendasState value, $Res Function(_VendasState) _then) = __$VendasStateCopyWithImpl;
@override @useResult
$Res call({
 PeriodoVendas periodo, List<Venda> vendas
});




}
/// @nodoc
class __$VendasStateCopyWithImpl<$Res>
    implements _$VendasStateCopyWith<$Res> {
  __$VendasStateCopyWithImpl(this._self, this._then);

  final _VendasState _self;
  final $Res Function(_VendasState) _then;

/// Create a copy of VendasState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? periodo = null,Object? vendas = null,}) {
  return _then(_VendasState(
periodo: null == periodo ? _self.periodo : periodo // ignore: cast_nullable_to_non_nullable
as PeriodoVendas,vendas: null == vendas ? _self._vendas : vendas // ignore: cast_nullable_to_non_nullable
as List<Venda>,
  ));
}


}

// dart format on
