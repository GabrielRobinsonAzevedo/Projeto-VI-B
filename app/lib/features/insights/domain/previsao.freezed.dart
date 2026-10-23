// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'previsao.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Previsao {

 List<PontoDiario> get projecao;/// Índice sazonal de cada dia da semana (segunda = índice 0). 1,0 = média.
 List<double> get fatorSemana;/// Inclinação da tendência, em % da média por semana.
 double get tendenciaSemanal;/// Erro percentual ponderado (WAPE) do modelo nos últimos 7 dias conhecidos.
 double? get erroBacktest;
/// Create a copy of Previsao
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PrevisaoCopyWith<Previsao> get copyWith => _$PrevisaoCopyWithImpl<Previsao>(this as Previsao, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Previsao&&const DeepCollectionEquality().equals(other.projecao, projecao)&&const DeepCollectionEquality().equals(other.fatorSemana, fatorSemana)&&(identical(other.tendenciaSemanal, tendenciaSemanal) || other.tendenciaSemanal == tendenciaSemanal)&&(identical(other.erroBacktest, erroBacktest) || other.erroBacktest == erroBacktest));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(projecao),const DeepCollectionEquality().hash(fatorSemana),tendenciaSemanal,erroBacktest);

@override
String toString() {
  return 'Previsao(projecao: $projecao, fatorSemana: $fatorSemana, tendenciaSemanal: $tendenciaSemanal, erroBacktest: $erroBacktest)';
}


}

/// @nodoc
abstract mixin class $PrevisaoCopyWith<$Res>  {
  factory $PrevisaoCopyWith(Previsao value, $Res Function(Previsao) _then) = _$PrevisaoCopyWithImpl;
@useResult
$Res call({
 List<PontoDiario> projecao, List<double> fatorSemana, double tendenciaSemanal, double? erroBacktest
});




}
/// @nodoc
class _$PrevisaoCopyWithImpl<$Res>
    implements $PrevisaoCopyWith<$Res> {
  _$PrevisaoCopyWithImpl(this._self, this._then);

  final Previsao _self;
  final $Res Function(Previsao) _then;

/// Create a copy of Previsao
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? projecao = null,Object? fatorSemana = null,Object? tendenciaSemanal = null,Object? erroBacktest = freezed,}) {
  return _then(_self.copyWith(
projecao: null == projecao ? _self.projecao : projecao // ignore: cast_nullable_to_non_nullable
as List<PontoDiario>,fatorSemana: null == fatorSemana ? _self.fatorSemana : fatorSemana // ignore: cast_nullable_to_non_nullable
as List<double>,tendenciaSemanal: null == tendenciaSemanal ? _self.tendenciaSemanal : tendenciaSemanal // ignore: cast_nullable_to_non_nullable
as double,erroBacktest: freezed == erroBacktest ? _self.erroBacktest : erroBacktest // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [Previsao].
extension PrevisaoPatterns on Previsao {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Previsao value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Previsao() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Previsao value)  $default,){
final _that = this;
switch (_that) {
case _Previsao():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Previsao value)?  $default,){
final _that = this;
switch (_that) {
case _Previsao() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<PontoDiario> projecao,  List<double> fatorSemana,  double tendenciaSemanal,  double? erroBacktest)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Previsao() when $default != null:
return $default(_that.projecao,_that.fatorSemana,_that.tendenciaSemanal,_that.erroBacktest);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<PontoDiario> projecao,  List<double> fatorSemana,  double tendenciaSemanal,  double? erroBacktest)  $default,) {final _that = this;
switch (_that) {
case _Previsao():
return $default(_that.projecao,_that.fatorSemana,_that.tendenciaSemanal,_that.erroBacktest);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<PontoDiario> projecao,  List<double> fatorSemana,  double tendenciaSemanal,  double? erroBacktest)?  $default,) {final _that = this;
switch (_that) {
case _Previsao() when $default != null:
return $default(_that.projecao,_that.fatorSemana,_that.tendenciaSemanal,_that.erroBacktest);case _:
  return null;

}
}

}

/// @nodoc


class _Previsao extends Previsao {
  const _Previsao({required final  List<PontoDiario> projecao, required final  List<double> fatorSemana, required this.tendenciaSemanal, this.erroBacktest}): _projecao = projecao,_fatorSemana = fatorSemana,super._();
  

 final  List<PontoDiario> _projecao;
@override List<PontoDiario> get projecao {
  if (_projecao is EqualUnmodifiableListView) return _projecao;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_projecao);
}

/// Índice sazonal de cada dia da semana (segunda = índice 0). 1,0 = média.
 final  List<double> _fatorSemana;
/// Índice sazonal de cada dia da semana (segunda = índice 0). 1,0 = média.
@override List<double> get fatorSemana {
  if (_fatorSemana is EqualUnmodifiableListView) return _fatorSemana;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_fatorSemana);
}

/// Inclinação da tendência, em % da média por semana.
@override final  double tendenciaSemanal;
/// Erro percentual ponderado (WAPE) do modelo nos últimos 7 dias conhecidos.
@override final  double? erroBacktest;

/// Create a copy of Previsao
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PrevisaoCopyWith<_Previsao> get copyWith => __$PrevisaoCopyWithImpl<_Previsao>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Previsao&&const DeepCollectionEquality().equals(other._projecao, _projecao)&&const DeepCollectionEquality().equals(other._fatorSemana, _fatorSemana)&&(identical(other.tendenciaSemanal, tendenciaSemanal) || other.tendenciaSemanal == tendenciaSemanal)&&(identical(other.erroBacktest, erroBacktest) || other.erroBacktest == erroBacktest));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_projecao),const DeepCollectionEquality().hash(_fatorSemana),tendenciaSemanal,erroBacktest);

@override
String toString() {
  return 'Previsao(projecao: $projecao, fatorSemana: $fatorSemana, tendenciaSemanal: $tendenciaSemanal, erroBacktest: $erroBacktest)';
}


}

/// @nodoc
abstract mixin class _$PrevisaoCopyWith<$Res> implements $PrevisaoCopyWith<$Res> {
  factory _$PrevisaoCopyWith(_Previsao value, $Res Function(_Previsao) _then) = __$PrevisaoCopyWithImpl;
@override @useResult
$Res call({
 List<PontoDiario> projecao, List<double> fatorSemana, double tendenciaSemanal, double? erroBacktest
});




}
/// @nodoc
class __$PrevisaoCopyWithImpl<$Res>
    implements _$PrevisaoCopyWith<$Res> {
  __$PrevisaoCopyWithImpl(this._self, this._then);

  final _Previsao _self;
  final $Res Function(_Previsao) _then;

/// Create a copy of Previsao
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? projecao = null,Object? fatorSemana = null,Object? tendenciaSemanal = null,Object? erroBacktest = freezed,}) {
  return _then(_Previsao(
projecao: null == projecao ? _self._projecao : projecao // ignore: cast_nullable_to_non_nullable
as List<PontoDiario>,fatorSemana: null == fatorSemana ? _self._fatorSemana : fatorSemana // ignore: cast_nullable_to_non_nullable
as List<double>,tendenciaSemanal: null == tendenciaSemanal ? _self.tendenciaSemanal : tendenciaSemanal // ignore: cast_nullable_to_non_nullable
as double,erroBacktest: freezed == erroBacktest ? _self.erroBacktest : erroBacktest // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on
