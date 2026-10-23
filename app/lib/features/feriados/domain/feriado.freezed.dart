// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feriado.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Feriado {

 DateTime get data; String get nome; String get tipo;
/// Create a copy of Feriado
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FeriadoCopyWith<Feriado> get copyWith => _$FeriadoCopyWithImpl<Feriado>(this as Feriado, _$identity);

  /// Serializes this Feriado to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Feriado&&(identical(other.data, data) || other.data == data)&&(identical(other.nome, nome) || other.nome == nome)&&(identical(other.tipo, tipo) || other.tipo == tipo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data,nome,tipo);

@override
String toString() {
  return 'Feriado(data: $data, nome: $nome, tipo: $tipo)';
}


}

/// @nodoc
abstract mixin class $FeriadoCopyWith<$Res>  {
  factory $FeriadoCopyWith(Feriado value, $Res Function(Feriado) _then) = _$FeriadoCopyWithImpl;
@useResult
$Res call({
 DateTime data, String nome, String tipo
});




}
/// @nodoc
class _$FeriadoCopyWithImpl<$Res>
    implements $FeriadoCopyWith<$Res> {
  _$FeriadoCopyWithImpl(this._self, this._then);

  final Feriado _self;
  final $Res Function(Feriado) _then;

/// Create a copy of Feriado
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,Object? nome = null,Object? tipo = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as DateTime,nome: null == nome ? _self.nome : nome // ignore: cast_nullable_to_non_nullable
as String,tipo: null == tipo ? _self.tipo : tipo // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Feriado].
extension FeriadoPatterns on Feriado {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Feriado value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Feriado() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Feriado value)  $default,){
final _that = this;
switch (_that) {
case _Feriado():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Feriado value)?  $default,){
final _that = this;
switch (_that) {
case _Feriado() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime data,  String nome,  String tipo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Feriado() when $default != null:
return $default(_that.data,_that.nome,_that.tipo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime data,  String nome,  String tipo)  $default,) {final _that = this;
switch (_that) {
case _Feriado():
return $default(_that.data,_that.nome,_that.tipo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime data,  String nome,  String tipo)?  $default,) {final _that = this;
switch (_that) {
case _Feriado() when $default != null:
return $default(_that.data,_that.nome,_that.tipo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Feriado implements Feriado {
  const _Feriado({required this.data, required this.nome, this.tipo = 'national'});
  factory _Feriado.fromJson(Map<String, dynamic> json) => _$FeriadoFromJson(json);

@override final  DateTime data;
@override final  String nome;
@override@JsonKey() final  String tipo;

/// Create a copy of Feriado
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FeriadoCopyWith<_Feriado> get copyWith => __$FeriadoCopyWithImpl<_Feriado>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FeriadoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Feriado&&(identical(other.data, data) || other.data == data)&&(identical(other.nome, nome) || other.nome == nome)&&(identical(other.tipo, tipo) || other.tipo == tipo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data,nome,tipo);

@override
String toString() {
  return 'Feriado(data: $data, nome: $nome, tipo: $tipo)';
}


}

/// @nodoc
abstract mixin class _$FeriadoCopyWith<$Res> implements $FeriadoCopyWith<$Res> {
  factory _$FeriadoCopyWith(_Feriado value, $Res Function(_Feriado) _then) = __$FeriadoCopyWithImpl;
@override @useResult
$Res call({
 DateTime data, String nome, String tipo
});




}
/// @nodoc
class __$FeriadoCopyWithImpl<$Res>
    implements _$FeriadoCopyWith<$Res> {
  __$FeriadoCopyWithImpl(this._self, this._then);

  final _Feriado _self;
  final $Res Function(_Feriado) _then;

/// Create a copy of Feriado
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,Object? nome = null,Object? tipo = null,}) {
  return _then(_Feriado(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as DateTime,nome: null == nome ? _self.nome : nome // ignore: cast_nullable_to_non_nullable
as String,tipo: null == tipo ? _self.tipo : tipo // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$FeriadoDto {

 String get date; String get name; String get type;
/// Create a copy of FeriadoDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FeriadoDtoCopyWith<FeriadoDto> get copyWith => _$FeriadoDtoCopyWithImpl<FeriadoDto>(this as FeriadoDto, _$identity);

  /// Serializes this FeriadoDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeriadoDto&&(identical(other.date, date) || other.date == date)&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date,name,type);

@override
String toString() {
  return 'FeriadoDto(date: $date, name: $name, type: $type)';
}


}

/// @nodoc
abstract mixin class $FeriadoDtoCopyWith<$Res>  {
  factory $FeriadoDtoCopyWith(FeriadoDto value, $Res Function(FeriadoDto) _then) = _$FeriadoDtoCopyWithImpl;
@useResult
$Res call({
 String date, String name, String type
});




}
/// @nodoc
class _$FeriadoDtoCopyWithImpl<$Res>
    implements $FeriadoDtoCopyWith<$Res> {
  _$FeriadoDtoCopyWithImpl(this._self, this._then);

  final FeriadoDto _self;
  final $Res Function(FeriadoDto) _then;

/// Create a copy of FeriadoDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? date = null,Object? name = null,Object? type = null,}) {
  return _then(_self.copyWith(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [FeriadoDto].
extension FeriadoDtoPatterns on FeriadoDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FeriadoDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FeriadoDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FeriadoDto value)  $default,){
final _that = this;
switch (_that) {
case _FeriadoDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FeriadoDto value)?  $default,){
final _that = this;
switch (_that) {
case _FeriadoDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String date,  String name,  String type)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FeriadoDto() when $default != null:
return $default(_that.date,_that.name,_that.type);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String date,  String name,  String type)  $default,) {final _that = this;
switch (_that) {
case _FeriadoDto():
return $default(_that.date,_that.name,_that.type);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String date,  String name,  String type)?  $default,) {final _that = this;
switch (_that) {
case _FeriadoDto() when $default != null:
return $default(_that.date,_that.name,_that.type);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FeriadoDto extends FeriadoDto {
  const _FeriadoDto({required this.date, required this.name, this.type = 'national'}): super._();
  factory _FeriadoDto.fromJson(Map<String, dynamic> json) => _$FeriadoDtoFromJson(json);

@override final  String date;
@override final  String name;
@override@JsonKey() final  String type;

/// Create a copy of FeriadoDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FeriadoDtoCopyWith<_FeriadoDto> get copyWith => __$FeriadoDtoCopyWithImpl<_FeriadoDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FeriadoDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FeriadoDto&&(identical(other.date, date) || other.date == date)&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date,name,type);

@override
String toString() {
  return 'FeriadoDto(date: $date, name: $name, type: $type)';
}


}

/// @nodoc
abstract mixin class _$FeriadoDtoCopyWith<$Res> implements $FeriadoDtoCopyWith<$Res> {
  factory _$FeriadoDtoCopyWith(_FeriadoDto value, $Res Function(_FeriadoDto) _then) = __$FeriadoDtoCopyWithImpl;
@override @useResult
$Res call({
 String date, String name, String type
});




}
/// @nodoc
class __$FeriadoDtoCopyWithImpl<$Res>
    implements _$FeriadoDtoCopyWith<$Res> {
  __$FeriadoDtoCopyWithImpl(this._self, this._then);

  final _FeriadoDto _self;
  final $Res Function(_FeriadoDto) _then;

/// Create a copy of FeriadoDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? date = null,Object? name = null,Object? type = null,}) {
  return _then(_FeriadoDto(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
