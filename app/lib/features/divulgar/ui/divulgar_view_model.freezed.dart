// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'divulgar_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DivulgarState {

 Empresa get empresa; List<Produto> get produtos; List<ProdutoVendido> get maisVendidos;/// Horários sugeridos para postar (1h antes dos dois maiores picos).
 List<int> get horariosPost; Map<Segmento, List<ClienteRfm>> get segmentos; List<Feriado> get proximasDatas;
/// Create a copy of DivulgarState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DivulgarStateCopyWith<DivulgarState> get copyWith => _$DivulgarStateCopyWithImpl<DivulgarState>(this as DivulgarState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DivulgarState&&(identical(other.empresa, empresa) || other.empresa == empresa)&&const DeepCollectionEquality().equals(other.produtos, produtos)&&const DeepCollectionEquality().equals(other.maisVendidos, maisVendidos)&&const DeepCollectionEquality().equals(other.horariosPost, horariosPost)&&const DeepCollectionEquality().equals(other.segmentos, segmentos)&&const DeepCollectionEquality().equals(other.proximasDatas, proximasDatas));
}


@override
int get hashCode => Object.hash(runtimeType,empresa,const DeepCollectionEquality().hash(produtos),const DeepCollectionEquality().hash(maisVendidos),const DeepCollectionEquality().hash(horariosPost),const DeepCollectionEquality().hash(segmentos),const DeepCollectionEquality().hash(proximasDatas));

@override
String toString() {
  return 'DivulgarState(empresa: $empresa, produtos: $produtos, maisVendidos: $maisVendidos, horariosPost: $horariosPost, segmentos: $segmentos, proximasDatas: $proximasDatas)';
}


}

/// @nodoc
abstract mixin class $DivulgarStateCopyWith<$Res>  {
  factory $DivulgarStateCopyWith(DivulgarState value, $Res Function(DivulgarState) _then) = _$DivulgarStateCopyWithImpl;
@useResult
$Res call({
 Empresa empresa, List<Produto> produtos, List<ProdutoVendido> maisVendidos, List<int> horariosPost, Map<Segmento, List<ClienteRfm>> segmentos, List<Feriado> proximasDatas
});


$EmpresaCopyWith<$Res> get empresa;

}
/// @nodoc
class _$DivulgarStateCopyWithImpl<$Res>
    implements $DivulgarStateCopyWith<$Res> {
  _$DivulgarStateCopyWithImpl(this._self, this._then);

  final DivulgarState _self;
  final $Res Function(DivulgarState) _then;

/// Create a copy of DivulgarState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? empresa = null,Object? produtos = null,Object? maisVendidos = null,Object? horariosPost = null,Object? segmentos = null,Object? proximasDatas = null,}) {
  return _then(_self.copyWith(
empresa: null == empresa ? _self.empresa : empresa // ignore: cast_nullable_to_non_nullable
as Empresa,produtos: null == produtos ? _self.produtos : produtos // ignore: cast_nullable_to_non_nullable
as List<Produto>,maisVendidos: null == maisVendidos ? _self.maisVendidos : maisVendidos // ignore: cast_nullable_to_non_nullable
as List<ProdutoVendido>,horariosPost: null == horariosPost ? _self.horariosPost : horariosPost // ignore: cast_nullable_to_non_nullable
as List<int>,segmentos: null == segmentos ? _self.segmentos : segmentos // ignore: cast_nullable_to_non_nullable
as Map<Segmento, List<ClienteRfm>>,proximasDatas: null == proximasDatas ? _self.proximasDatas : proximasDatas // ignore: cast_nullable_to_non_nullable
as List<Feriado>,
  ));
}
/// Create a copy of DivulgarState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmpresaCopyWith<$Res> get empresa {
  
  return $EmpresaCopyWith<$Res>(_self.empresa, (value) {
    return _then(_self.copyWith(empresa: value));
  });
}
}


/// Adds pattern-matching-related methods to [DivulgarState].
extension DivulgarStatePatterns on DivulgarState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DivulgarState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DivulgarState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DivulgarState value)  $default,){
final _that = this;
switch (_that) {
case _DivulgarState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DivulgarState value)?  $default,){
final _that = this;
switch (_that) {
case _DivulgarState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Empresa empresa,  List<Produto> produtos,  List<ProdutoVendido> maisVendidos,  List<int> horariosPost,  Map<Segmento, List<ClienteRfm>> segmentos,  List<Feriado> proximasDatas)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DivulgarState() when $default != null:
return $default(_that.empresa,_that.produtos,_that.maisVendidos,_that.horariosPost,_that.segmentos,_that.proximasDatas);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Empresa empresa,  List<Produto> produtos,  List<ProdutoVendido> maisVendidos,  List<int> horariosPost,  Map<Segmento, List<ClienteRfm>> segmentos,  List<Feriado> proximasDatas)  $default,) {final _that = this;
switch (_that) {
case _DivulgarState():
return $default(_that.empresa,_that.produtos,_that.maisVendidos,_that.horariosPost,_that.segmentos,_that.proximasDatas);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Empresa empresa,  List<Produto> produtos,  List<ProdutoVendido> maisVendidos,  List<int> horariosPost,  Map<Segmento, List<ClienteRfm>> segmentos,  List<Feriado> proximasDatas)?  $default,) {final _that = this;
switch (_that) {
case _DivulgarState() when $default != null:
return $default(_that.empresa,_that.produtos,_that.maisVendidos,_that.horariosPost,_that.segmentos,_that.proximasDatas);case _:
  return null;

}
}

}

/// @nodoc


class _DivulgarState implements DivulgarState {
  const _DivulgarState({required this.empresa, required final  List<Produto> produtos, required final  List<ProdutoVendido> maisVendidos, required final  List<int> horariosPost, required final  Map<Segmento, List<ClienteRfm>> segmentos, required final  List<Feriado> proximasDatas}): _produtos = produtos,_maisVendidos = maisVendidos,_horariosPost = horariosPost,_segmentos = segmentos,_proximasDatas = proximasDatas;
  

@override final  Empresa empresa;
 final  List<Produto> _produtos;
@override List<Produto> get produtos {
  if (_produtos is EqualUnmodifiableListView) return _produtos;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_produtos);
}

 final  List<ProdutoVendido> _maisVendidos;
@override List<ProdutoVendido> get maisVendidos {
  if (_maisVendidos is EqualUnmodifiableListView) return _maisVendidos;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_maisVendidos);
}

/// Horários sugeridos para postar (1h antes dos dois maiores picos).
 final  List<int> _horariosPost;
/// Horários sugeridos para postar (1h antes dos dois maiores picos).
@override List<int> get horariosPost {
  if (_horariosPost is EqualUnmodifiableListView) return _horariosPost;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_horariosPost);
}

 final  Map<Segmento, List<ClienteRfm>> _segmentos;
@override Map<Segmento, List<ClienteRfm>> get segmentos {
  if (_segmentos is EqualUnmodifiableMapView) return _segmentos;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_segmentos);
}

 final  List<Feriado> _proximasDatas;
@override List<Feriado> get proximasDatas {
  if (_proximasDatas is EqualUnmodifiableListView) return _proximasDatas;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_proximasDatas);
}


/// Create a copy of DivulgarState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DivulgarStateCopyWith<_DivulgarState> get copyWith => __$DivulgarStateCopyWithImpl<_DivulgarState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DivulgarState&&(identical(other.empresa, empresa) || other.empresa == empresa)&&const DeepCollectionEquality().equals(other._produtos, _produtos)&&const DeepCollectionEquality().equals(other._maisVendidos, _maisVendidos)&&const DeepCollectionEquality().equals(other._horariosPost, _horariosPost)&&const DeepCollectionEquality().equals(other._segmentos, _segmentos)&&const DeepCollectionEquality().equals(other._proximasDatas, _proximasDatas));
}


@override
int get hashCode => Object.hash(runtimeType,empresa,const DeepCollectionEquality().hash(_produtos),const DeepCollectionEquality().hash(_maisVendidos),const DeepCollectionEquality().hash(_horariosPost),const DeepCollectionEquality().hash(_segmentos),const DeepCollectionEquality().hash(_proximasDatas));

@override
String toString() {
  return 'DivulgarState(empresa: $empresa, produtos: $produtos, maisVendidos: $maisVendidos, horariosPost: $horariosPost, segmentos: $segmentos, proximasDatas: $proximasDatas)';
}


}

/// @nodoc
abstract mixin class _$DivulgarStateCopyWith<$Res> implements $DivulgarStateCopyWith<$Res> {
  factory _$DivulgarStateCopyWith(_DivulgarState value, $Res Function(_DivulgarState) _then) = __$DivulgarStateCopyWithImpl;
@override @useResult
$Res call({
 Empresa empresa, List<Produto> produtos, List<ProdutoVendido> maisVendidos, List<int> horariosPost, Map<Segmento, List<ClienteRfm>> segmentos, List<Feriado> proximasDatas
});


@override $EmpresaCopyWith<$Res> get empresa;

}
/// @nodoc
class __$DivulgarStateCopyWithImpl<$Res>
    implements _$DivulgarStateCopyWith<$Res> {
  __$DivulgarStateCopyWithImpl(this._self, this._then);

  final _DivulgarState _self;
  final $Res Function(_DivulgarState) _then;

/// Create a copy of DivulgarState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? empresa = null,Object? produtos = null,Object? maisVendidos = null,Object? horariosPost = null,Object? segmentos = null,Object? proximasDatas = null,}) {
  return _then(_DivulgarState(
empresa: null == empresa ? _self.empresa : empresa // ignore: cast_nullable_to_non_nullable
as Empresa,produtos: null == produtos ? _self._produtos : produtos // ignore: cast_nullable_to_non_nullable
as List<Produto>,maisVendidos: null == maisVendidos ? _self._maisVendidos : maisVendidos // ignore: cast_nullable_to_non_nullable
as List<ProdutoVendido>,horariosPost: null == horariosPost ? _self._horariosPost : horariosPost // ignore: cast_nullable_to_non_nullable
as List<int>,segmentos: null == segmentos ? _self._segmentos : segmentos // ignore: cast_nullable_to_non_nullable
as Map<Segmento, List<ClienteRfm>>,proximasDatas: null == proximasDatas ? _self._proximasDatas : proximasDatas // ignore: cast_nullable_to_non_nullable
as List<Feriado>,
  ));
}

/// Create a copy of DivulgarState
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
