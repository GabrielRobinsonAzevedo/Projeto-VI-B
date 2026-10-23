// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nps.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Nps {

 int get promotores; int get neutros; int get detratores;
/// Create a copy of Nps
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NpsCopyWith<Nps> get copyWith => _$NpsCopyWithImpl<Nps>(this as Nps, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Nps&&(identical(other.promotores, promotores) || other.promotores == promotores)&&(identical(other.neutros, neutros) || other.neutros == neutros)&&(identical(other.detratores, detratores) || other.detratores == detratores));
}


@override
int get hashCode => Object.hash(runtimeType,promotores,neutros,detratores);

@override
String toString() {
  return 'Nps(promotores: $promotores, neutros: $neutros, detratores: $detratores)';
}


}

/// @nodoc
abstract mixin class $NpsCopyWith<$Res>  {
  factory $NpsCopyWith(Nps value, $Res Function(Nps) _then) = _$NpsCopyWithImpl;
@useResult
$Res call({
 int promotores, int neutros, int detratores
});




}
/// @nodoc
class _$NpsCopyWithImpl<$Res>
    implements $NpsCopyWith<$Res> {
  _$NpsCopyWithImpl(this._self, this._then);

  final Nps _self;
  final $Res Function(Nps) _then;

/// Create a copy of Nps
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? promotores = null,Object? neutros = null,Object? detratores = null,}) {
  return _then(_self.copyWith(
promotores: null == promotores ? _self.promotores : promotores // ignore: cast_nullable_to_non_nullable
as int,neutros: null == neutros ? _self.neutros : neutros // ignore: cast_nullable_to_non_nullable
as int,detratores: null == detratores ? _self.detratores : detratores // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [Nps].
extension NpsPatterns on Nps {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Nps value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Nps() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Nps value)  $default,){
final _that = this;
switch (_that) {
case _Nps():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Nps value)?  $default,){
final _that = this;
switch (_that) {
case _Nps() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int promotores,  int neutros,  int detratores)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Nps() when $default != null:
return $default(_that.promotores,_that.neutros,_that.detratores);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int promotores,  int neutros,  int detratores)  $default,) {final _that = this;
switch (_that) {
case _Nps():
return $default(_that.promotores,_that.neutros,_that.detratores);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int promotores,  int neutros,  int detratores)?  $default,) {final _that = this;
switch (_that) {
case _Nps() when $default != null:
return $default(_that.promotores,_that.neutros,_that.detratores);case _:
  return null;

}
}

}

/// @nodoc


class _Nps extends Nps {
  const _Nps({this.promotores = 0, this.neutros = 0, this.detratores = 0}): super._();
  

@override@JsonKey() final  int promotores;
@override@JsonKey() final  int neutros;
@override@JsonKey() final  int detratores;

/// Create a copy of Nps
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NpsCopyWith<_Nps> get copyWith => __$NpsCopyWithImpl<_Nps>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Nps&&(identical(other.promotores, promotores) || other.promotores == promotores)&&(identical(other.neutros, neutros) || other.neutros == neutros)&&(identical(other.detratores, detratores) || other.detratores == detratores));
}


@override
int get hashCode => Object.hash(runtimeType,promotores,neutros,detratores);

@override
String toString() {
  return 'Nps(promotores: $promotores, neutros: $neutros, detratores: $detratores)';
}


}

/// @nodoc
abstract mixin class _$NpsCopyWith<$Res> implements $NpsCopyWith<$Res> {
  factory _$NpsCopyWith(_Nps value, $Res Function(_Nps) _then) = __$NpsCopyWithImpl;
@override @useResult
$Res call({
 int promotores, int neutros, int detratores
});




}
/// @nodoc
class __$NpsCopyWithImpl<$Res>
    implements _$NpsCopyWith<$Res> {
  __$NpsCopyWithImpl(this._self, this._then);

  final _Nps _self;
  final $Res Function(_Nps) _then;

/// Create a copy of Nps
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? promotores = null,Object? neutros = null,Object? detratores = null,}) {
  return _then(_Nps(
promotores: null == promotores ? _self.promotores : promotores // ignore: cast_nullable_to_non_nullable
as int,neutros: null == neutros ? _self.neutros : neutros // ignore: cast_nullable_to_non_nullable
as int,detratores: null == detratores ? _self.detratores : detratores // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
