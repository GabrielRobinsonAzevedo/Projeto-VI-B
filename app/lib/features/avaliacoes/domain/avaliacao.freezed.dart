// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'avaliacao.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Avaliacao {

 int? get id; int? get clienteId; int get nota; String get comentario; DateTime get dataHora;
/// Create a copy of Avaliacao
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AvaliacaoCopyWith<Avaliacao> get copyWith => _$AvaliacaoCopyWithImpl<Avaliacao>(this as Avaliacao, _$identity);

  /// Serializes this Avaliacao to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Avaliacao&&(identical(other.id, id) || other.id == id)&&(identical(other.clienteId, clienteId) || other.clienteId == clienteId)&&(identical(other.nota, nota) || other.nota == nota)&&(identical(other.comentario, comentario) || other.comentario == comentario)&&(identical(other.dataHora, dataHora) || other.dataHora == dataHora));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,clienteId,nota,comentario,dataHora);

@override
String toString() {
  return 'Avaliacao(id: $id, clienteId: $clienteId, nota: $nota, comentario: $comentario, dataHora: $dataHora)';
}


}

/// @nodoc
abstract mixin class $AvaliacaoCopyWith<$Res>  {
  factory $AvaliacaoCopyWith(Avaliacao value, $Res Function(Avaliacao) _then) = _$AvaliacaoCopyWithImpl;
@useResult
$Res call({
 int? id, int? clienteId, int nota, String comentario, DateTime dataHora
});




}
/// @nodoc
class _$AvaliacaoCopyWithImpl<$Res>
    implements $AvaliacaoCopyWith<$Res> {
  _$AvaliacaoCopyWithImpl(this._self, this._then);

  final Avaliacao _self;
  final $Res Function(Avaliacao) _then;

/// Create a copy of Avaliacao
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? clienteId = freezed,Object? nota = null,Object? comentario = null,Object? dataHora = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,clienteId: freezed == clienteId ? _self.clienteId : clienteId // ignore: cast_nullable_to_non_nullable
as int?,nota: null == nota ? _self.nota : nota // ignore: cast_nullable_to_non_nullable
as int,comentario: null == comentario ? _self.comentario : comentario // ignore: cast_nullable_to_non_nullable
as String,dataHora: null == dataHora ? _self.dataHora : dataHora // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [Avaliacao].
extension AvaliacaoPatterns on Avaliacao {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Avaliacao value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Avaliacao() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Avaliacao value)  $default,){
final _that = this;
switch (_that) {
case _Avaliacao():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Avaliacao value)?  $default,){
final _that = this;
switch (_that) {
case _Avaliacao() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  int? clienteId,  int nota,  String comentario,  DateTime dataHora)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Avaliacao() when $default != null:
return $default(_that.id,_that.clienteId,_that.nota,_that.comentario,_that.dataHora);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  int? clienteId,  int nota,  String comentario,  DateTime dataHora)  $default,) {final _that = this;
switch (_that) {
case _Avaliacao():
return $default(_that.id,_that.clienteId,_that.nota,_that.comentario,_that.dataHora);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  int? clienteId,  int nota,  String comentario,  DateTime dataHora)?  $default,) {final _that = this;
switch (_that) {
case _Avaliacao() when $default != null:
return $default(_that.id,_that.clienteId,_that.nota,_that.comentario,_that.dataHora);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Avaliacao implements Avaliacao {
  const _Avaliacao({this.id, this.clienteId, required this.nota, this.comentario = '', required this.dataHora});
  factory _Avaliacao.fromJson(Map<String, dynamic> json) => _$AvaliacaoFromJson(json);

@override final  int? id;
@override final  int? clienteId;
@override final  int nota;
@override@JsonKey() final  String comentario;
@override final  DateTime dataHora;

/// Create a copy of Avaliacao
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AvaliacaoCopyWith<_Avaliacao> get copyWith => __$AvaliacaoCopyWithImpl<_Avaliacao>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AvaliacaoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Avaliacao&&(identical(other.id, id) || other.id == id)&&(identical(other.clienteId, clienteId) || other.clienteId == clienteId)&&(identical(other.nota, nota) || other.nota == nota)&&(identical(other.comentario, comentario) || other.comentario == comentario)&&(identical(other.dataHora, dataHora) || other.dataHora == dataHora));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,clienteId,nota,comentario,dataHora);

@override
String toString() {
  return 'Avaliacao(id: $id, clienteId: $clienteId, nota: $nota, comentario: $comentario, dataHora: $dataHora)';
}


}

/// @nodoc
abstract mixin class _$AvaliacaoCopyWith<$Res> implements $AvaliacaoCopyWith<$Res> {
  factory _$AvaliacaoCopyWith(_Avaliacao value, $Res Function(_Avaliacao) _then) = __$AvaliacaoCopyWithImpl;
@override @useResult
$Res call({
 int? id, int? clienteId, int nota, String comentario, DateTime dataHora
});




}
/// @nodoc
class __$AvaliacaoCopyWithImpl<$Res>
    implements _$AvaliacaoCopyWith<$Res> {
  __$AvaliacaoCopyWithImpl(this._self, this._then);

  final _Avaliacao _self;
  final $Res Function(_Avaliacao) _then;

/// Create a copy of Avaliacao
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? clienteId = freezed,Object? nota = null,Object? comentario = null,Object? dataHora = null,}) {
  return _then(_Avaliacao(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,clienteId: freezed == clienteId ? _self.clienteId : clienteId // ignore: cast_nullable_to_non_nullable
as int?,nota: null == nota ? _self.nota : nota // ignore: cast_nullable_to_non_nullable
as int,comentario: null == comentario ? _self.comentario : comentario // ignore: cast_nullable_to_non_nullable
as String,dataHora: null == dataHora ? _self.dataHora : dataHora // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
