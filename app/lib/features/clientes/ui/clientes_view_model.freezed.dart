// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'clientes_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ClientesState {

 Empresa get empresa; List<ClienteRfm> get clientes;
/// Create a copy of ClientesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClientesStateCopyWith<ClientesState> get copyWith => _$ClientesStateCopyWithImpl<ClientesState>(this as ClientesState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClientesState&&(identical(other.empresa, empresa) || other.empresa == empresa)&&const DeepCollectionEquality().equals(other.clientes, clientes));
}


@override
int get hashCode => Object.hash(runtimeType,empresa,const DeepCollectionEquality().hash(clientes));

@override
String toString() {
  return 'ClientesState(empresa: $empresa, clientes: $clientes)';
}


}

/// @nodoc
abstract mixin class $ClientesStateCopyWith<$Res>  {
  factory $ClientesStateCopyWith(ClientesState value, $Res Function(ClientesState) _then) = _$ClientesStateCopyWithImpl;
@useResult
$Res call({
 Empresa empresa, List<ClienteRfm> clientes
});


$EmpresaCopyWith<$Res> get empresa;

}
/// @nodoc
class _$ClientesStateCopyWithImpl<$Res>
    implements $ClientesStateCopyWith<$Res> {
  _$ClientesStateCopyWithImpl(this._self, this._then);

  final ClientesState _self;
  final $Res Function(ClientesState) _then;

/// Create a copy of ClientesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? empresa = null,Object? clientes = null,}) {
  return _then(_self.copyWith(
empresa: null == empresa ? _self.empresa : empresa // ignore: cast_nullable_to_non_nullable
as Empresa,clientes: null == clientes ? _self.clientes : clientes // ignore: cast_nullable_to_non_nullable
as List<ClienteRfm>,
  ));
}
/// Create a copy of ClientesState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmpresaCopyWith<$Res> get empresa {
  
  return $EmpresaCopyWith<$Res>(_self.empresa, (value) {
    return _then(_self.copyWith(empresa: value));
  });
}
}


/// Adds pattern-matching-related methods to [ClientesState].
extension ClientesStatePatterns on ClientesState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClientesState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClientesState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClientesState value)  $default,){
final _that = this;
switch (_that) {
case _ClientesState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClientesState value)?  $default,){
final _that = this;
switch (_that) {
case _ClientesState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Empresa empresa,  List<ClienteRfm> clientes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClientesState() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Empresa empresa,  List<ClienteRfm> clientes)  $default,) {final _that = this;
switch (_that) {
case _ClientesState():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Empresa empresa,  List<ClienteRfm> clientes)?  $default,) {final _that = this;
switch (_that) {
case _ClientesState() when $default != null:
return $default(_that.empresa,_that.clientes);case _:
  return null;

}
}

}

/// @nodoc


class _ClientesState extends ClientesState {
  const _ClientesState({required this.empresa, required final  List<ClienteRfm> clientes}): _clientes = clientes,super._();
  

@override final  Empresa empresa;
 final  List<ClienteRfm> _clientes;
@override List<ClienteRfm> get clientes {
  if (_clientes is EqualUnmodifiableListView) return _clientes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_clientes);
}


/// Create a copy of ClientesState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClientesStateCopyWith<_ClientesState> get copyWith => __$ClientesStateCopyWithImpl<_ClientesState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClientesState&&(identical(other.empresa, empresa) || other.empresa == empresa)&&const DeepCollectionEquality().equals(other._clientes, _clientes));
}


@override
int get hashCode => Object.hash(runtimeType,empresa,const DeepCollectionEquality().hash(_clientes));

@override
String toString() {
  return 'ClientesState(empresa: $empresa, clientes: $clientes)';
}


}

/// @nodoc
abstract mixin class _$ClientesStateCopyWith<$Res> implements $ClientesStateCopyWith<$Res> {
  factory _$ClientesStateCopyWith(_ClientesState value, $Res Function(_ClientesState) _then) = __$ClientesStateCopyWithImpl;
@override @useResult
$Res call({
 Empresa empresa, List<ClienteRfm> clientes
});


@override $EmpresaCopyWith<$Res> get empresa;

}
/// @nodoc
class __$ClientesStateCopyWithImpl<$Res>
    implements _$ClientesStateCopyWith<$Res> {
  __$ClientesStateCopyWithImpl(this._self, this._then);

  final _ClientesState _self;
  final $Res Function(_ClientesState) _then;

/// Create a copy of ClientesState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? empresa = null,Object? clientes = null,}) {
  return _then(_ClientesState(
empresa: null == empresa ? _self.empresa : empresa // ignore: cast_nullable_to_non_nullable
as Empresa,clientes: null == clientes ? _self._clientes : clientes // ignore: cast_nullable_to_non_nullable
as List<ClienteRfm>,
  ));
}

/// Create a copy of ClientesState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmpresaCopyWith<$Res> get empresa {
  
  return $EmpresaCopyWith<$Res>(_self.empresa, (value) {
    return _then(_self.copyWith(empresa: value));
  });
}
}

/// @nodoc
mixin _$ClienteDetalheState {

 ClienteRfm get rfm; List<Venda> get historico; Empresa get empresa;
/// Create a copy of ClienteDetalheState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClienteDetalheStateCopyWith<ClienteDetalheState> get copyWith => _$ClienteDetalheStateCopyWithImpl<ClienteDetalheState>(this as ClienteDetalheState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClienteDetalheState&&(identical(other.rfm, rfm) || other.rfm == rfm)&&const DeepCollectionEquality().equals(other.historico, historico)&&(identical(other.empresa, empresa) || other.empresa == empresa));
}


@override
int get hashCode => Object.hash(runtimeType,rfm,const DeepCollectionEquality().hash(historico),empresa);

@override
String toString() {
  return 'ClienteDetalheState(rfm: $rfm, historico: $historico, empresa: $empresa)';
}


}

/// @nodoc
abstract mixin class $ClienteDetalheStateCopyWith<$Res>  {
  factory $ClienteDetalheStateCopyWith(ClienteDetalheState value, $Res Function(ClienteDetalheState) _then) = _$ClienteDetalheStateCopyWithImpl;
@useResult
$Res call({
 ClienteRfm rfm, List<Venda> historico, Empresa empresa
});


$ClienteRfmCopyWith<$Res> get rfm;$EmpresaCopyWith<$Res> get empresa;

}
/// @nodoc
class _$ClienteDetalheStateCopyWithImpl<$Res>
    implements $ClienteDetalheStateCopyWith<$Res> {
  _$ClienteDetalheStateCopyWithImpl(this._self, this._then);

  final ClienteDetalheState _self;
  final $Res Function(ClienteDetalheState) _then;

/// Create a copy of ClienteDetalheState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? rfm = null,Object? historico = null,Object? empresa = null,}) {
  return _then(_self.copyWith(
rfm: null == rfm ? _self.rfm : rfm // ignore: cast_nullable_to_non_nullable
as ClienteRfm,historico: null == historico ? _self.historico : historico // ignore: cast_nullable_to_non_nullable
as List<Venda>,empresa: null == empresa ? _self.empresa : empresa // ignore: cast_nullable_to_non_nullable
as Empresa,
  ));
}
/// Create a copy of ClienteDetalheState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ClienteRfmCopyWith<$Res> get rfm {
  
  return $ClienteRfmCopyWith<$Res>(_self.rfm, (value) {
    return _then(_self.copyWith(rfm: value));
  });
}/// Create a copy of ClienteDetalheState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmpresaCopyWith<$Res> get empresa {
  
  return $EmpresaCopyWith<$Res>(_self.empresa, (value) {
    return _then(_self.copyWith(empresa: value));
  });
}
}


/// Adds pattern-matching-related methods to [ClienteDetalheState].
extension ClienteDetalheStatePatterns on ClienteDetalheState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClienteDetalheState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClienteDetalheState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClienteDetalheState value)  $default,){
final _that = this;
switch (_that) {
case _ClienteDetalheState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClienteDetalheState value)?  $default,){
final _that = this;
switch (_that) {
case _ClienteDetalheState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ClienteRfm rfm,  List<Venda> historico,  Empresa empresa)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClienteDetalheState() when $default != null:
return $default(_that.rfm,_that.historico,_that.empresa);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ClienteRfm rfm,  List<Venda> historico,  Empresa empresa)  $default,) {final _that = this;
switch (_that) {
case _ClienteDetalheState():
return $default(_that.rfm,_that.historico,_that.empresa);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ClienteRfm rfm,  List<Venda> historico,  Empresa empresa)?  $default,) {final _that = this;
switch (_that) {
case _ClienteDetalheState() when $default != null:
return $default(_that.rfm,_that.historico,_that.empresa);case _:
  return null;

}
}

}

/// @nodoc


class _ClienteDetalheState implements ClienteDetalheState {
  const _ClienteDetalheState({required this.rfm, required final  List<Venda> historico, required this.empresa}): _historico = historico;
  

@override final  ClienteRfm rfm;
 final  List<Venda> _historico;
@override List<Venda> get historico {
  if (_historico is EqualUnmodifiableListView) return _historico;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_historico);
}

@override final  Empresa empresa;

/// Create a copy of ClienteDetalheState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClienteDetalheStateCopyWith<_ClienteDetalheState> get copyWith => __$ClienteDetalheStateCopyWithImpl<_ClienteDetalheState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClienteDetalheState&&(identical(other.rfm, rfm) || other.rfm == rfm)&&const DeepCollectionEquality().equals(other._historico, _historico)&&(identical(other.empresa, empresa) || other.empresa == empresa));
}


@override
int get hashCode => Object.hash(runtimeType,rfm,const DeepCollectionEquality().hash(_historico),empresa);

@override
String toString() {
  return 'ClienteDetalheState(rfm: $rfm, historico: $historico, empresa: $empresa)';
}


}

/// @nodoc
abstract mixin class _$ClienteDetalheStateCopyWith<$Res> implements $ClienteDetalheStateCopyWith<$Res> {
  factory _$ClienteDetalheStateCopyWith(_ClienteDetalheState value, $Res Function(_ClienteDetalheState) _then) = __$ClienteDetalheStateCopyWithImpl;
@override @useResult
$Res call({
 ClienteRfm rfm, List<Venda> historico, Empresa empresa
});


@override $ClienteRfmCopyWith<$Res> get rfm;@override $EmpresaCopyWith<$Res> get empresa;

}
/// @nodoc
class __$ClienteDetalheStateCopyWithImpl<$Res>
    implements _$ClienteDetalheStateCopyWith<$Res> {
  __$ClienteDetalheStateCopyWithImpl(this._self, this._then);

  final _ClienteDetalheState _self;
  final $Res Function(_ClienteDetalheState) _then;

/// Create a copy of ClienteDetalheState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? rfm = null,Object? historico = null,Object? empresa = null,}) {
  return _then(_ClienteDetalheState(
rfm: null == rfm ? _self.rfm : rfm // ignore: cast_nullable_to_non_nullable
as ClienteRfm,historico: null == historico ? _self._historico : historico // ignore: cast_nullable_to_non_nullable
as List<Venda>,empresa: null == empresa ? _self.empresa : empresa // ignore: cast_nullable_to_non_nullable
as Empresa,
  ));
}

/// Create a copy of ClienteDetalheState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ClienteRfmCopyWith<$Res> get rfm {
  
  return $ClienteRfmCopyWith<$Res>(_self.rfm, (value) {
    return _then(_self.copyWith(rfm: value));
  });
}/// Create a copy of ClienteDetalheState
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
