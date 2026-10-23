// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'empresa.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Empresa {

 String get nome; String get segmento; String get cidade; String get instagram; String get whatsapp;
/// Create a copy of Empresa
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmpresaCopyWith<Empresa> get copyWith => _$EmpresaCopyWithImpl<Empresa>(this as Empresa, _$identity);

  /// Serializes this Empresa to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Empresa&&(identical(other.nome, nome) || other.nome == nome)&&(identical(other.segmento, segmento) || other.segmento == segmento)&&(identical(other.cidade, cidade) || other.cidade == cidade)&&(identical(other.instagram, instagram) || other.instagram == instagram)&&(identical(other.whatsapp, whatsapp) || other.whatsapp == whatsapp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,nome,segmento,cidade,instagram,whatsapp);

@override
String toString() {
  return 'Empresa(nome: $nome, segmento: $segmento, cidade: $cidade, instagram: $instagram, whatsapp: $whatsapp)';
}


}

/// @nodoc
abstract mixin class $EmpresaCopyWith<$Res>  {
  factory $EmpresaCopyWith(Empresa value, $Res Function(Empresa) _then) = _$EmpresaCopyWithImpl;
@useResult
$Res call({
 String nome, String segmento, String cidade, String instagram, String whatsapp
});




}
/// @nodoc
class _$EmpresaCopyWithImpl<$Res>
    implements $EmpresaCopyWith<$Res> {
  _$EmpresaCopyWithImpl(this._self, this._then);

  final Empresa _self;
  final $Res Function(Empresa) _then;

/// Create a copy of Empresa
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? nome = null,Object? segmento = null,Object? cidade = null,Object? instagram = null,Object? whatsapp = null,}) {
  return _then(_self.copyWith(
nome: null == nome ? _self.nome : nome // ignore: cast_nullable_to_non_nullable
as String,segmento: null == segmento ? _self.segmento : segmento // ignore: cast_nullable_to_non_nullable
as String,cidade: null == cidade ? _self.cidade : cidade // ignore: cast_nullable_to_non_nullable
as String,instagram: null == instagram ? _self.instagram : instagram // ignore: cast_nullable_to_non_nullable
as String,whatsapp: null == whatsapp ? _self.whatsapp : whatsapp // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Empresa].
extension EmpresaPatterns on Empresa {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Empresa value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Empresa() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Empresa value)  $default,){
final _that = this;
switch (_that) {
case _Empresa():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Empresa value)?  $default,){
final _that = this;
switch (_that) {
case _Empresa() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String nome,  String segmento,  String cidade,  String instagram,  String whatsapp)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Empresa() when $default != null:
return $default(_that.nome,_that.segmento,_that.cidade,_that.instagram,_that.whatsapp);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String nome,  String segmento,  String cidade,  String instagram,  String whatsapp)  $default,) {final _that = this;
switch (_that) {
case _Empresa():
return $default(_that.nome,_that.segmento,_that.cidade,_that.instagram,_that.whatsapp);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String nome,  String segmento,  String cidade,  String instagram,  String whatsapp)?  $default,) {final _that = this;
switch (_that) {
case _Empresa() when $default != null:
return $default(_that.nome,_that.segmento,_that.cidade,_that.instagram,_that.whatsapp);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Empresa extends Empresa {
  const _Empresa({required this.nome, required this.segmento, this.cidade = '', this.instagram = '', this.whatsapp = ''}): super._();
  factory _Empresa.fromJson(Map<String, dynamic> json) => _$EmpresaFromJson(json);

@override final  String nome;
@override final  String segmento;
@override@JsonKey() final  String cidade;
@override@JsonKey() final  String instagram;
@override@JsonKey() final  String whatsapp;

/// Create a copy of Empresa
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmpresaCopyWith<_Empresa> get copyWith => __$EmpresaCopyWithImpl<_Empresa>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EmpresaToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Empresa&&(identical(other.nome, nome) || other.nome == nome)&&(identical(other.segmento, segmento) || other.segmento == segmento)&&(identical(other.cidade, cidade) || other.cidade == cidade)&&(identical(other.instagram, instagram) || other.instagram == instagram)&&(identical(other.whatsapp, whatsapp) || other.whatsapp == whatsapp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,nome,segmento,cidade,instagram,whatsapp);

@override
String toString() {
  return 'Empresa(nome: $nome, segmento: $segmento, cidade: $cidade, instagram: $instagram, whatsapp: $whatsapp)';
}


}

/// @nodoc
abstract mixin class _$EmpresaCopyWith<$Res> implements $EmpresaCopyWith<$Res> {
  factory _$EmpresaCopyWith(_Empresa value, $Res Function(_Empresa) _then) = __$EmpresaCopyWithImpl;
@override @useResult
$Res call({
 String nome, String segmento, String cidade, String instagram, String whatsapp
});




}
/// @nodoc
class __$EmpresaCopyWithImpl<$Res>
    implements _$EmpresaCopyWith<$Res> {
  __$EmpresaCopyWithImpl(this._self, this._then);

  final _Empresa _self;
  final $Res Function(_Empresa) _then;

/// Create a copy of Empresa
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? nome = null,Object? segmento = null,Object? cidade = null,Object? instagram = null,Object? whatsapp = null,}) {
  return _then(_Empresa(
nome: null == nome ? _self.nome : nome // ignore: cast_nullable_to_non_nullable
as String,segmento: null == segmento ? _self.segmento : segmento // ignore: cast_nullable_to_non_nullable
as String,cidade: null == cidade ? _self.cidade : cidade // ignore: cast_nullable_to_non_nullable
as String,instagram: null == instagram ? _self.instagram : instagram // ignore: cast_nullable_to_non_nullable
as String,whatsapp: null == whatsapp ? _self.whatsapp : whatsapp // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
