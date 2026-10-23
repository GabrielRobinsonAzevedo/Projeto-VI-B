// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'insights_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$InsightsState {

 List<PontoDiario> get historico; Previsao get previsao; Map<int, int> get vendasPorHora; List<ItemAbc> get curvaAbc; List<ProdutoVendido> get produtos30; ResumoPeriodo get ultimos30; ResumoPeriodo get anteriores30; Nps get nps; List<Avaliacao> get comentarios; List<ClienteRfm> get clientes; List<Feriado> get proximasDatas; List<Insight> get insights;
/// Create a copy of InsightsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InsightsStateCopyWith<InsightsState> get copyWith => _$InsightsStateCopyWithImpl<InsightsState>(this as InsightsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InsightsState&&const DeepCollectionEquality().equals(other.historico, historico)&&(identical(other.previsao, previsao) || other.previsao == previsao)&&const DeepCollectionEquality().equals(other.vendasPorHora, vendasPorHora)&&const DeepCollectionEquality().equals(other.curvaAbc, curvaAbc)&&const DeepCollectionEquality().equals(other.produtos30, produtos30)&&(identical(other.ultimos30, ultimos30) || other.ultimos30 == ultimos30)&&(identical(other.anteriores30, anteriores30) || other.anteriores30 == anteriores30)&&(identical(other.nps, nps) || other.nps == nps)&&const DeepCollectionEquality().equals(other.comentarios, comentarios)&&const DeepCollectionEquality().equals(other.clientes, clientes)&&const DeepCollectionEquality().equals(other.proximasDatas, proximasDatas)&&const DeepCollectionEquality().equals(other.insights, insights));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(historico),previsao,const DeepCollectionEquality().hash(vendasPorHora),const DeepCollectionEquality().hash(curvaAbc),const DeepCollectionEquality().hash(produtos30),ultimos30,anteriores30,nps,const DeepCollectionEquality().hash(comentarios),const DeepCollectionEquality().hash(clientes),const DeepCollectionEquality().hash(proximasDatas),const DeepCollectionEquality().hash(insights));

@override
String toString() {
  return 'InsightsState(historico: $historico, previsao: $previsao, vendasPorHora: $vendasPorHora, curvaAbc: $curvaAbc, produtos30: $produtos30, ultimos30: $ultimos30, anteriores30: $anteriores30, nps: $nps, comentarios: $comentarios, clientes: $clientes, proximasDatas: $proximasDatas, insights: $insights)';
}


}

/// @nodoc
abstract mixin class $InsightsStateCopyWith<$Res>  {
  factory $InsightsStateCopyWith(InsightsState value, $Res Function(InsightsState) _then) = _$InsightsStateCopyWithImpl;
@useResult
$Res call({
 List<PontoDiario> historico, Previsao previsao, Map<int, int> vendasPorHora, List<ItemAbc> curvaAbc, List<ProdutoVendido> produtos30, ResumoPeriodo ultimos30, ResumoPeriodo anteriores30, Nps nps, List<Avaliacao> comentarios, List<ClienteRfm> clientes, List<Feriado> proximasDatas, List<Insight> insights
});


$PrevisaoCopyWith<$Res> get previsao;$ResumoPeriodoCopyWith<$Res> get ultimos30;$ResumoPeriodoCopyWith<$Res> get anteriores30;$NpsCopyWith<$Res> get nps;

}
/// @nodoc
class _$InsightsStateCopyWithImpl<$Res>
    implements $InsightsStateCopyWith<$Res> {
  _$InsightsStateCopyWithImpl(this._self, this._then);

  final InsightsState _self;
  final $Res Function(InsightsState) _then;

/// Create a copy of InsightsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? historico = null,Object? previsao = null,Object? vendasPorHora = null,Object? curvaAbc = null,Object? produtos30 = null,Object? ultimos30 = null,Object? anteriores30 = null,Object? nps = null,Object? comentarios = null,Object? clientes = null,Object? proximasDatas = null,Object? insights = null,}) {
  return _then(_self.copyWith(
historico: null == historico ? _self.historico : historico // ignore: cast_nullable_to_non_nullable
as List<PontoDiario>,previsao: null == previsao ? _self.previsao : previsao // ignore: cast_nullable_to_non_nullable
as Previsao,vendasPorHora: null == vendasPorHora ? _self.vendasPorHora : vendasPorHora // ignore: cast_nullable_to_non_nullable
as Map<int, int>,curvaAbc: null == curvaAbc ? _self.curvaAbc : curvaAbc // ignore: cast_nullable_to_non_nullable
as List<ItemAbc>,produtos30: null == produtos30 ? _self.produtos30 : produtos30 // ignore: cast_nullable_to_non_nullable
as List<ProdutoVendido>,ultimos30: null == ultimos30 ? _self.ultimos30 : ultimos30 // ignore: cast_nullable_to_non_nullable
as ResumoPeriodo,anteriores30: null == anteriores30 ? _self.anteriores30 : anteriores30 // ignore: cast_nullable_to_non_nullable
as ResumoPeriodo,nps: null == nps ? _self.nps : nps // ignore: cast_nullable_to_non_nullable
as Nps,comentarios: null == comentarios ? _self.comentarios : comentarios // ignore: cast_nullable_to_non_nullable
as List<Avaliacao>,clientes: null == clientes ? _self.clientes : clientes // ignore: cast_nullable_to_non_nullable
as List<ClienteRfm>,proximasDatas: null == proximasDatas ? _self.proximasDatas : proximasDatas // ignore: cast_nullable_to_non_nullable
as List<Feriado>,insights: null == insights ? _self.insights : insights // ignore: cast_nullable_to_non_nullable
as List<Insight>,
  ));
}
/// Create a copy of InsightsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PrevisaoCopyWith<$Res> get previsao {
  
  return $PrevisaoCopyWith<$Res>(_self.previsao, (value) {
    return _then(_self.copyWith(previsao: value));
  });
}/// Create a copy of InsightsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ResumoPeriodoCopyWith<$Res> get ultimos30 {
  
  return $ResumoPeriodoCopyWith<$Res>(_self.ultimos30, (value) {
    return _then(_self.copyWith(ultimos30: value));
  });
}/// Create a copy of InsightsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ResumoPeriodoCopyWith<$Res> get anteriores30 {
  
  return $ResumoPeriodoCopyWith<$Res>(_self.anteriores30, (value) {
    return _then(_self.copyWith(anteriores30: value));
  });
}/// Create a copy of InsightsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NpsCopyWith<$Res> get nps {
  
  return $NpsCopyWith<$Res>(_self.nps, (value) {
    return _then(_self.copyWith(nps: value));
  });
}
}


/// Adds pattern-matching-related methods to [InsightsState].
extension InsightsStatePatterns on InsightsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InsightsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InsightsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InsightsState value)  $default,){
final _that = this;
switch (_that) {
case _InsightsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InsightsState value)?  $default,){
final _that = this;
switch (_that) {
case _InsightsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<PontoDiario> historico,  Previsao previsao,  Map<int, int> vendasPorHora,  List<ItemAbc> curvaAbc,  List<ProdutoVendido> produtos30,  ResumoPeriodo ultimos30,  ResumoPeriodo anteriores30,  Nps nps,  List<Avaliacao> comentarios,  List<ClienteRfm> clientes,  List<Feriado> proximasDatas,  List<Insight> insights)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InsightsState() when $default != null:
return $default(_that.historico,_that.previsao,_that.vendasPorHora,_that.curvaAbc,_that.produtos30,_that.ultimos30,_that.anteriores30,_that.nps,_that.comentarios,_that.clientes,_that.proximasDatas,_that.insights);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<PontoDiario> historico,  Previsao previsao,  Map<int, int> vendasPorHora,  List<ItemAbc> curvaAbc,  List<ProdutoVendido> produtos30,  ResumoPeriodo ultimos30,  ResumoPeriodo anteriores30,  Nps nps,  List<Avaliacao> comentarios,  List<ClienteRfm> clientes,  List<Feriado> proximasDatas,  List<Insight> insights)  $default,) {final _that = this;
switch (_that) {
case _InsightsState():
return $default(_that.historico,_that.previsao,_that.vendasPorHora,_that.curvaAbc,_that.produtos30,_that.ultimos30,_that.anteriores30,_that.nps,_that.comentarios,_that.clientes,_that.proximasDatas,_that.insights);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<PontoDiario> historico,  Previsao previsao,  Map<int, int> vendasPorHora,  List<ItemAbc> curvaAbc,  List<ProdutoVendido> produtos30,  ResumoPeriodo ultimos30,  ResumoPeriodo anteriores30,  Nps nps,  List<Avaliacao> comentarios,  List<ClienteRfm> clientes,  List<Feriado> proximasDatas,  List<Insight> insights)?  $default,) {final _that = this;
switch (_that) {
case _InsightsState() when $default != null:
return $default(_that.historico,_that.previsao,_that.vendasPorHora,_that.curvaAbc,_that.produtos30,_that.ultimos30,_that.anteriores30,_that.nps,_that.comentarios,_that.clientes,_that.proximasDatas,_that.insights);case _:
  return null;

}
}

}

/// @nodoc


class _InsightsState implements InsightsState {
  const _InsightsState({required final  List<PontoDiario> historico, required this.previsao, required final  Map<int, int> vendasPorHora, required final  List<ItemAbc> curvaAbc, required final  List<ProdutoVendido> produtos30, required this.ultimos30, required this.anteriores30, required this.nps, required final  List<Avaliacao> comentarios, required final  List<ClienteRfm> clientes, required final  List<Feriado> proximasDatas, required final  List<Insight> insights}): _historico = historico,_vendasPorHora = vendasPorHora,_curvaAbc = curvaAbc,_produtos30 = produtos30,_comentarios = comentarios,_clientes = clientes,_proximasDatas = proximasDatas,_insights = insights;
  

 final  List<PontoDiario> _historico;
@override List<PontoDiario> get historico {
  if (_historico is EqualUnmodifiableListView) return _historico;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_historico);
}

@override final  Previsao previsao;
 final  Map<int, int> _vendasPorHora;
@override Map<int, int> get vendasPorHora {
  if (_vendasPorHora is EqualUnmodifiableMapView) return _vendasPorHora;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_vendasPorHora);
}

 final  List<ItemAbc> _curvaAbc;
@override List<ItemAbc> get curvaAbc {
  if (_curvaAbc is EqualUnmodifiableListView) return _curvaAbc;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_curvaAbc);
}

 final  List<ProdutoVendido> _produtos30;
@override List<ProdutoVendido> get produtos30 {
  if (_produtos30 is EqualUnmodifiableListView) return _produtos30;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_produtos30);
}

@override final  ResumoPeriodo ultimos30;
@override final  ResumoPeriodo anteriores30;
@override final  Nps nps;
 final  List<Avaliacao> _comentarios;
@override List<Avaliacao> get comentarios {
  if (_comentarios is EqualUnmodifiableListView) return _comentarios;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_comentarios);
}

 final  List<ClienteRfm> _clientes;
@override List<ClienteRfm> get clientes {
  if (_clientes is EqualUnmodifiableListView) return _clientes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_clientes);
}

 final  List<Feriado> _proximasDatas;
@override List<Feriado> get proximasDatas {
  if (_proximasDatas is EqualUnmodifiableListView) return _proximasDatas;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_proximasDatas);
}

 final  List<Insight> _insights;
@override List<Insight> get insights {
  if (_insights is EqualUnmodifiableListView) return _insights;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_insights);
}


/// Create a copy of InsightsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InsightsStateCopyWith<_InsightsState> get copyWith => __$InsightsStateCopyWithImpl<_InsightsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InsightsState&&const DeepCollectionEquality().equals(other._historico, _historico)&&(identical(other.previsao, previsao) || other.previsao == previsao)&&const DeepCollectionEquality().equals(other._vendasPorHora, _vendasPorHora)&&const DeepCollectionEquality().equals(other._curvaAbc, _curvaAbc)&&const DeepCollectionEquality().equals(other._produtos30, _produtos30)&&(identical(other.ultimos30, ultimos30) || other.ultimos30 == ultimos30)&&(identical(other.anteriores30, anteriores30) || other.anteriores30 == anteriores30)&&(identical(other.nps, nps) || other.nps == nps)&&const DeepCollectionEquality().equals(other._comentarios, _comentarios)&&const DeepCollectionEquality().equals(other._clientes, _clientes)&&const DeepCollectionEquality().equals(other._proximasDatas, _proximasDatas)&&const DeepCollectionEquality().equals(other._insights, _insights));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_historico),previsao,const DeepCollectionEquality().hash(_vendasPorHora),const DeepCollectionEquality().hash(_curvaAbc),const DeepCollectionEquality().hash(_produtos30),ultimos30,anteriores30,nps,const DeepCollectionEquality().hash(_comentarios),const DeepCollectionEquality().hash(_clientes),const DeepCollectionEquality().hash(_proximasDatas),const DeepCollectionEquality().hash(_insights));

@override
String toString() {
  return 'InsightsState(historico: $historico, previsao: $previsao, vendasPorHora: $vendasPorHora, curvaAbc: $curvaAbc, produtos30: $produtos30, ultimos30: $ultimos30, anteriores30: $anteriores30, nps: $nps, comentarios: $comentarios, clientes: $clientes, proximasDatas: $proximasDatas, insights: $insights)';
}


}

/// @nodoc
abstract mixin class _$InsightsStateCopyWith<$Res> implements $InsightsStateCopyWith<$Res> {
  factory _$InsightsStateCopyWith(_InsightsState value, $Res Function(_InsightsState) _then) = __$InsightsStateCopyWithImpl;
@override @useResult
$Res call({
 List<PontoDiario> historico, Previsao previsao, Map<int, int> vendasPorHora, List<ItemAbc> curvaAbc, List<ProdutoVendido> produtos30, ResumoPeriodo ultimos30, ResumoPeriodo anteriores30, Nps nps, List<Avaliacao> comentarios, List<ClienteRfm> clientes, List<Feriado> proximasDatas, List<Insight> insights
});


@override $PrevisaoCopyWith<$Res> get previsao;@override $ResumoPeriodoCopyWith<$Res> get ultimos30;@override $ResumoPeriodoCopyWith<$Res> get anteriores30;@override $NpsCopyWith<$Res> get nps;

}
/// @nodoc
class __$InsightsStateCopyWithImpl<$Res>
    implements _$InsightsStateCopyWith<$Res> {
  __$InsightsStateCopyWithImpl(this._self, this._then);

  final _InsightsState _self;
  final $Res Function(_InsightsState) _then;

/// Create a copy of InsightsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? historico = null,Object? previsao = null,Object? vendasPorHora = null,Object? curvaAbc = null,Object? produtos30 = null,Object? ultimos30 = null,Object? anteriores30 = null,Object? nps = null,Object? comentarios = null,Object? clientes = null,Object? proximasDatas = null,Object? insights = null,}) {
  return _then(_InsightsState(
historico: null == historico ? _self._historico : historico // ignore: cast_nullable_to_non_nullable
as List<PontoDiario>,previsao: null == previsao ? _self.previsao : previsao // ignore: cast_nullable_to_non_nullable
as Previsao,vendasPorHora: null == vendasPorHora ? _self._vendasPorHora : vendasPorHora // ignore: cast_nullable_to_non_nullable
as Map<int, int>,curvaAbc: null == curvaAbc ? _self._curvaAbc : curvaAbc // ignore: cast_nullable_to_non_nullable
as List<ItemAbc>,produtos30: null == produtos30 ? _self._produtos30 : produtos30 // ignore: cast_nullable_to_non_nullable
as List<ProdutoVendido>,ultimos30: null == ultimos30 ? _self.ultimos30 : ultimos30 // ignore: cast_nullable_to_non_nullable
as ResumoPeriodo,anteriores30: null == anteriores30 ? _self.anteriores30 : anteriores30 // ignore: cast_nullable_to_non_nullable
as ResumoPeriodo,nps: null == nps ? _self.nps : nps // ignore: cast_nullable_to_non_nullable
as Nps,comentarios: null == comentarios ? _self._comentarios : comentarios // ignore: cast_nullable_to_non_nullable
as List<Avaliacao>,clientes: null == clientes ? _self._clientes : clientes // ignore: cast_nullable_to_non_nullable
as List<ClienteRfm>,proximasDatas: null == proximasDatas ? _self._proximasDatas : proximasDatas // ignore: cast_nullable_to_non_nullable
as List<Feriado>,insights: null == insights ? _self._insights : insights // ignore: cast_nullable_to_non_nullable
as List<Insight>,
  ));
}

/// Create a copy of InsightsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PrevisaoCopyWith<$Res> get previsao {
  
  return $PrevisaoCopyWith<$Res>(_self.previsao, (value) {
    return _then(_self.copyWith(previsao: value));
  });
}/// Create a copy of InsightsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ResumoPeriodoCopyWith<$Res> get ultimos30 {
  
  return $ResumoPeriodoCopyWith<$Res>(_self.ultimos30, (value) {
    return _then(_self.copyWith(ultimos30: value));
  });
}/// Create a copy of InsightsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ResumoPeriodoCopyWith<$Res> get anteriores30 {
  
  return $ResumoPeriodoCopyWith<$Res>(_self.anteriores30, (value) {
    return _then(_self.copyWith(anteriores30: value));
  });
}/// Create a copy of InsightsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NpsCopyWith<$Res> get nps {
  
  return $NpsCopyWith<$Res>(_self.nps, (value) {
    return _then(_self.copyWith(nps: value));
  });
}
}

// dart format on
