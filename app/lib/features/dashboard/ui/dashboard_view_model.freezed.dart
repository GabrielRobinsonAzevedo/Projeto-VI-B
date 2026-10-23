// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DashboardState {

 Empresa get empresa; ResumoPeriodo get hoje;/// Mesmo dia da semana passada, até o mesmo horário (comparação justa).
 ResumoPeriodo get semanaPassada; InsightsState get analise;
/// Create a copy of DashboardState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DashboardStateCopyWith<DashboardState> get copyWith => _$DashboardStateCopyWithImpl<DashboardState>(this as DashboardState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DashboardState&&(identical(other.empresa, empresa) || other.empresa == empresa)&&(identical(other.hoje, hoje) || other.hoje == hoje)&&(identical(other.semanaPassada, semanaPassada) || other.semanaPassada == semanaPassada)&&(identical(other.analise, analise) || other.analise == analise));
}


@override
int get hashCode => Object.hash(runtimeType,empresa,hoje,semanaPassada,analise);

@override
String toString() {
  return 'DashboardState(empresa: $empresa, hoje: $hoje, semanaPassada: $semanaPassada, analise: $analise)';
}


}

/// @nodoc
abstract mixin class $DashboardStateCopyWith<$Res>  {
  factory $DashboardStateCopyWith(DashboardState value, $Res Function(DashboardState) _then) = _$DashboardStateCopyWithImpl;
@useResult
$Res call({
 Empresa empresa, ResumoPeriodo hoje, ResumoPeriodo semanaPassada, InsightsState analise
});


$EmpresaCopyWith<$Res> get empresa;$ResumoPeriodoCopyWith<$Res> get hoje;$ResumoPeriodoCopyWith<$Res> get semanaPassada;$InsightsStateCopyWith<$Res> get analise;

}
/// @nodoc
class _$DashboardStateCopyWithImpl<$Res>
    implements $DashboardStateCopyWith<$Res> {
  _$DashboardStateCopyWithImpl(this._self, this._then);

  final DashboardState _self;
  final $Res Function(DashboardState) _then;

/// Create a copy of DashboardState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? empresa = null,Object? hoje = null,Object? semanaPassada = null,Object? analise = null,}) {
  return _then(_self.copyWith(
empresa: null == empresa ? _self.empresa : empresa // ignore: cast_nullable_to_non_nullable
as Empresa,hoje: null == hoje ? _self.hoje : hoje // ignore: cast_nullable_to_non_nullable
as ResumoPeriodo,semanaPassada: null == semanaPassada ? _self.semanaPassada : semanaPassada // ignore: cast_nullable_to_non_nullable
as ResumoPeriodo,analise: null == analise ? _self.analise : analise // ignore: cast_nullable_to_non_nullable
as InsightsState,
  ));
}
/// Create a copy of DashboardState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmpresaCopyWith<$Res> get empresa {
  
  return $EmpresaCopyWith<$Res>(_self.empresa, (value) {
    return _then(_self.copyWith(empresa: value));
  });
}/// Create a copy of DashboardState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ResumoPeriodoCopyWith<$Res> get hoje {
  
  return $ResumoPeriodoCopyWith<$Res>(_self.hoje, (value) {
    return _then(_self.copyWith(hoje: value));
  });
}/// Create a copy of DashboardState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ResumoPeriodoCopyWith<$Res> get semanaPassada {
  
  return $ResumoPeriodoCopyWith<$Res>(_self.semanaPassada, (value) {
    return _then(_self.copyWith(semanaPassada: value));
  });
}/// Create a copy of DashboardState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$InsightsStateCopyWith<$Res> get analise {
  
  return $InsightsStateCopyWith<$Res>(_self.analise, (value) {
    return _then(_self.copyWith(analise: value));
  });
}
}


/// Adds pattern-matching-related methods to [DashboardState].
extension DashboardStatePatterns on DashboardState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DashboardState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DashboardState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DashboardState value)  $default,){
final _that = this;
switch (_that) {
case _DashboardState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DashboardState value)?  $default,){
final _that = this;
switch (_that) {
case _DashboardState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Empresa empresa,  ResumoPeriodo hoje,  ResumoPeriodo semanaPassada,  InsightsState analise)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DashboardState() when $default != null:
return $default(_that.empresa,_that.hoje,_that.semanaPassada,_that.analise);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Empresa empresa,  ResumoPeriodo hoje,  ResumoPeriodo semanaPassada,  InsightsState analise)  $default,) {final _that = this;
switch (_that) {
case _DashboardState():
return $default(_that.empresa,_that.hoje,_that.semanaPassada,_that.analise);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Empresa empresa,  ResumoPeriodo hoje,  ResumoPeriodo semanaPassada,  InsightsState analise)?  $default,) {final _that = this;
switch (_that) {
case _DashboardState() when $default != null:
return $default(_that.empresa,_that.hoje,_that.semanaPassada,_that.analise);case _:
  return null;

}
}

}

/// @nodoc


class _DashboardState extends DashboardState {
  const _DashboardState({required this.empresa, required this.hoje, required this.semanaPassada, required this.analise}): super._();
  

@override final  Empresa empresa;
@override final  ResumoPeriodo hoje;
/// Mesmo dia da semana passada, até o mesmo horário (comparação justa).
@override final  ResumoPeriodo semanaPassada;
@override final  InsightsState analise;

/// Create a copy of DashboardState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DashboardStateCopyWith<_DashboardState> get copyWith => __$DashboardStateCopyWithImpl<_DashboardState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DashboardState&&(identical(other.empresa, empresa) || other.empresa == empresa)&&(identical(other.hoje, hoje) || other.hoje == hoje)&&(identical(other.semanaPassada, semanaPassada) || other.semanaPassada == semanaPassada)&&(identical(other.analise, analise) || other.analise == analise));
}


@override
int get hashCode => Object.hash(runtimeType,empresa,hoje,semanaPassada,analise);

@override
String toString() {
  return 'DashboardState(empresa: $empresa, hoje: $hoje, semanaPassada: $semanaPassada, analise: $analise)';
}


}

/// @nodoc
abstract mixin class _$DashboardStateCopyWith<$Res> implements $DashboardStateCopyWith<$Res> {
  factory _$DashboardStateCopyWith(_DashboardState value, $Res Function(_DashboardState) _then) = __$DashboardStateCopyWithImpl;
@override @useResult
$Res call({
 Empresa empresa, ResumoPeriodo hoje, ResumoPeriodo semanaPassada, InsightsState analise
});


@override $EmpresaCopyWith<$Res> get empresa;@override $ResumoPeriodoCopyWith<$Res> get hoje;@override $ResumoPeriodoCopyWith<$Res> get semanaPassada;@override $InsightsStateCopyWith<$Res> get analise;

}
/// @nodoc
class __$DashboardStateCopyWithImpl<$Res>
    implements _$DashboardStateCopyWith<$Res> {
  __$DashboardStateCopyWithImpl(this._self, this._then);

  final _DashboardState _self;
  final $Res Function(_DashboardState) _then;

/// Create a copy of DashboardState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? empresa = null,Object? hoje = null,Object? semanaPassada = null,Object? analise = null,}) {
  return _then(_DashboardState(
empresa: null == empresa ? _self.empresa : empresa // ignore: cast_nullable_to_non_nullable
as Empresa,hoje: null == hoje ? _self.hoje : hoje // ignore: cast_nullable_to_non_nullable
as ResumoPeriodo,semanaPassada: null == semanaPassada ? _self.semanaPassada : semanaPassada // ignore: cast_nullable_to_non_nullable
as ResumoPeriodo,analise: null == analise ? _self.analise : analise // ignore: cast_nullable_to_non_nullable
as InsightsState,
  ));
}

/// Create a copy of DashboardState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmpresaCopyWith<$Res> get empresa {
  
  return $EmpresaCopyWith<$Res>(_self.empresa, (value) {
    return _then(_self.copyWith(empresa: value));
  });
}/// Create a copy of DashboardState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ResumoPeriodoCopyWith<$Res> get hoje {
  
  return $ResumoPeriodoCopyWith<$Res>(_self.hoje, (value) {
    return _then(_self.copyWith(hoje: value));
  });
}/// Create a copy of DashboardState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ResumoPeriodoCopyWith<$Res> get semanaPassada {
  
  return $ResumoPeriodoCopyWith<$Res>(_self.semanaPassada, (value) {
    return _then(_self.copyWith(semanaPassada: value));
  });
}/// Create a copy of DashboardState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$InsightsStateCopyWith<$Res> get analise {
  
  return $InsightsStateCopyWith<$Res>(_self.analise, (value) {
    return _then(_self.copyWith(analise: value));
  });
}
}

// dart format on
