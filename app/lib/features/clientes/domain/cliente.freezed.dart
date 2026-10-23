// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cliente.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Cliente {

 int? get id; String get nome; String get telefone; String get instagram; DateTime get criadoEm;
/// Create a copy of Cliente
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClienteCopyWith<Cliente> get copyWith => _$ClienteCopyWithImpl<Cliente>(this as Cliente, _$identity);

  /// Serializes this Cliente to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Cliente&&(identical(other.id, id) || other.id == id)&&(identical(other.nome, nome) || other.nome == nome)&&(identical(other.telefone, telefone) || other.telefone == telefone)&&(identical(other.instagram, instagram) || other.instagram == instagram)&&(identical(other.criadoEm, criadoEm) || other.criadoEm == criadoEm));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,nome,telefone,instagram,criadoEm);

@override
String toString() {
  return 'Cliente(id: $id, nome: $nome, telefone: $telefone, instagram: $instagram, criadoEm: $criadoEm)';
}


}

/// @nodoc
abstract mixin class $ClienteCopyWith<$Res>  {
  factory $ClienteCopyWith(Cliente value, $Res Function(Cliente) _then) = _$ClienteCopyWithImpl;
@useResult
$Res call({
 int? id, String nome, String telefone, String instagram, DateTime criadoEm
});




}
/// @nodoc
class _$ClienteCopyWithImpl<$Res>
    implements $ClienteCopyWith<$Res> {
  _$ClienteCopyWithImpl(this._self, this._then);

  final Cliente _self;
  final $Res Function(Cliente) _then;

/// Create a copy of Cliente
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? nome = null,Object? telefone = null,Object? instagram = null,Object? criadoEm = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,nome: null == nome ? _self.nome : nome // ignore: cast_nullable_to_non_nullable
as String,telefone: null == telefone ? _self.telefone : telefone // ignore: cast_nullable_to_non_nullable
as String,instagram: null == instagram ? _self.instagram : instagram // ignore: cast_nullable_to_non_nullable
as String,criadoEm: null == criadoEm ? _self.criadoEm : criadoEm // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [Cliente].
extension ClientePatterns on Cliente {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Cliente value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Cliente() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Cliente value)  $default,){
final _that = this;
switch (_that) {
case _Cliente():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Cliente value)?  $default,){
final _that = this;
switch (_that) {
case _Cliente() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String nome,  String telefone,  String instagram,  DateTime criadoEm)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Cliente() when $default != null:
return $default(_that.id,_that.nome,_that.telefone,_that.instagram,_that.criadoEm);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String nome,  String telefone,  String instagram,  DateTime criadoEm)  $default,) {final _that = this;
switch (_that) {
case _Cliente():
return $default(_that.id,_that.nome,_that.telefone,_that.instagram,_that.criadoEm);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String nome,  String telefone,  String instagram,  DateTime criadoEm)?  $default,) {final _that = this;
switch (_that) {
case _Cliente() when $default != null:
return $default(_that.id,_that.nome,_that.telefone,_that.instagram,_that.criadoEm);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Cliente implements Cliente {
  const _Cliente({this.id, required this.nome, this.telefone = '', this.instagram = '', required this.criadoEm});
  factory _Cliente.fromJson(Map<String, dynamic> json) => _$ClienteFromJson(json);

@override final  int? id;
@override final  String nome;
@override@JsonKey() final  String telefone;
@override@JsonKey() final  String instagram;
@override final  DateTime criadoEm;

/// Create a copy of Cliente
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClienteCopyWith<_Cliente> get copyWith => __$ClienteCopyWithImpl<_Cliente>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ClienteToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Cliente&&(identical(other.id, id) || other.id == id)&&(identical(other.nome, nome) || other.nome == nome)&&(identical(other.telefone, telefone) || other.telefone == telefone)&&(identical(other.instagram, instagram) || other.instagram == instagram)&&(identical(other.criadoEm, criadoEm) || other.criadoEm == criadoEm));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,nome,telefone,instagram,criadoEm);

@override
String toString() {
  return 'Cliente(id: $id, nome: $nome, telefone: $telefone, instagram: $instagram, criadoEm: $criadoEm)';
}


}

/// @nodoc
abstract mixin class _$ClienteCopyWith<$Res> implements $ClienteCopyWith<$Res> {
  factory _$ClienteCopyWith(_Cliente value, $Res Function(_Cliente) _then) = __$ClienteCopyWithImpl;
@override @useResult
$Res call({
 int? id, String nome, String telefone, String instagram, DateTime criadoEm
});




}
/// @nodoc
class __$ClienteCopyWithImpl<$Res>
    implements _$ClienteCopyWith<$Res> {
  __$ClienteCopyWithImpl(this._self, this._then);

  final _Cliente _self;
  final $Res Function(_Cliente) _then;

/// Create a copy of Cliente
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? nome = null,Object? telefone = null,Object? instagram = null,Object? criadoEm = null,}) {
  return _then(_Cliente(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,nome: null == nome ? _self.nome : nome // ignore: cast_nullable_to_non_nullable
as String,telefone: null == telefone ? _self.telefone : telefone // ignore: cast_nullable_to_non_nullable
as String,instagram: null == instagram ? _self.instagram : instagram // ignore: cast_nullable_to_non_nullable
as String,criadoEm: null == criadoEm ? _self.criadoEm : criadoEm // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
