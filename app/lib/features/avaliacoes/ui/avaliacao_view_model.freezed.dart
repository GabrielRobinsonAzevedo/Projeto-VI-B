// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'avaliacao_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AvaliacaoState {

 Empresa get empresa; List<Cliente> get clientes;
/// Create a copy of AvaliacaoState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AvaliacaoStateCopyWith<AvaliacaoState> get copyWith => _$AvaliacaoStateCopyWithImpl<AvaliacaoState>(this as AvaliacaoState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AvaliacaoState&&(identical(other.empresa, empresa) || other.empresa == empresa)&&const DeepCollectionEquality().equals(other.clientes, clientes));
}


@override
int get hashCode => Object.hash(runtimeType,empresa,const DeepCollectionEquality().hash(clientes));

@override
String toString() {
  return 'AvaliacaoState(empresa: $empresa, clientes: $clientes)';
}


}

/// @nodoc
abstract mixin class $AvaliacaoStateCopyWith<$Res>  {
  factory $AvaliacaoStateCopyWith(AvaliacaoState value, $Res Function(AvaliacaoState) _then) = _$AvaliacaoStateCopyWithImpl;
@useResult
$Res call({
 Empresa empresa, List<Cliente> clientes
});


$EmpresaCopyWith<$Res> get empresa;

}
/// @nodoc
class _$AvaliacaoStateCopyWithImpl<$Res>
    implements $AvaliacaoStateCopyWith<$Res> {
  _$AvaliacaoStateCopyWithImpl(this._self, this._then);

  final AvaliacaoState _self;
  final $Res Function(AvaliacaoState) _then;

/// Create a copy of AvaliacaoState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? empresa = null,Object? clientes = null,}) {
  return _then(_self.copyWith(
empresa: null == empresa ? _self.empresa : empresa // ignore: cast_nullable_to_non_nullable
as Empresa,clientes: null == clientes ? _self.clientes : clientes // ignore: cast_nullable_to_non_nullable
as List<Cliente>,
  ));
}
/// Create a copy of AvaliacaoState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmpresaCopyWith<$Res> get empresa {
  
  return $EmpresaCopyWith<$Res>(_self.empresa, (value) {
    return _then(_self.copyWith(empresa: value));
  });
}
}


/// Adds pattern-matching-related methods to [AvaliacaoState].
extension AvaliacaoStatePatterns on AvaliacaoState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AvaliacaoState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AvaliacaoState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AvaliacaoState value)  $default,){
final _that = this;
switch (_that) {
case _AvaliacaoState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AvaliacaoState value)?  $default,){
final _that = this;
switch (_that) {
case _AvaliacaoState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Empresa empresa,  List<Cliente> clientes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AvaliacaoState() when $default != null:
return $default(_that.empresa,_that.clientes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Empresa empresa,  List<Cliente> clientes)  $default,) {final _that = this;
switch (_that) {
case _AvaliacaoState():
return $default(_that.empresa,_that.clientes);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Empresa empresa,  List<Cliente> clientes)?  $default,) {final _that = this;
switch (_that) {
case _AvaliacaoState() when $default != null:
return $default(_that.empresa,_that.clientes);case _:
  return null;

}
}

}

/// @nodoc


class _AvaliacaoState implements AvaliacaoState {
  const _AvaliacaoState({required this.empresa, required final  List<Cliente> clientes}): _clientes = clientes;
  

@override final  Empresa empresa;
 final  List<Cliente> _clientes;
@override List<Cliente> get clientes {
  if (_clientes is EqualUnmodifiableListView) return _clientes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_clientes);
}


/// Create a copy of AvaliacaoState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AvaliacaoStateCopyWith<_AvaliacaoState> get copyWith => __$AvaliacaoStateCopyWithImpl<_AvaliacaoState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AvaliacaoState&&(identical(other.empresa, empresa) || other.empresa == empresa)&&const DeepCollectionEquality().equals(other._clientes, _clientes));
}


@override
int get hashCode => Object.hash(runtimeType,empresa,const DeepCollectionEquality().hash(_clientes));

@override
String toString() {
  return 'AvaliacaoState(empresa: $empresa, clientes: $clientes)';
}


}

/// @nodoc
abstract mixin class _$AvaliacaoStateCopyWith<$Res> implements $AvaliacaoStateCopyWith<$Res> {
  factory _$AvaliacaoStateCopyWith(_AvaliacaoState value, $Res Function(_AvaliacaoState) _then) = __$AvaliacaoStateCopyWithImpl;
@override @useResult
$Res call({
 Empresa empresa, List<Cliente> clientes
});


@override $EmpresaCopyWith<$Res> get empresa;

}
/// @nodoc
class __$AvaliacaoStateCopyWithImpl<$Res>
    implements _$AvaliacaoStateCopyWith<$Res> {
  __$AvaliacaoStateCopyWithImpl(this._self, this._then);

  final _AvaliacaoState _self;
  final $Res Function(_AvaliacaoState) _then;

/// Create a copy of AvaliacaoState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? empresa = null,Object? clientes = null,}) {
  return _then(_AvaliacaoState(
empresa: null == empresa ? _self.empresa : empresa // ignore: cast_nullable_to_non_nullable
as Empresa,clientes: null == clientes ? _self._clientes : clientes // ignore: cast_nullable_to_non_nullable
as List<Cliente>,
  ));
}

/// Create a copy of AvaliacaoState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmpresaCopyWith<$Res> get empresa {
  
  return $EmpresaCopyWith<$Res>(_self.empresa, (value) {
    return _then(_self.copyWith(empresa: value));
  });
}
}

// dart format on
