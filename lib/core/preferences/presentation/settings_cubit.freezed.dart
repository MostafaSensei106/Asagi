// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SettingsState<T> {

 T get value; SettingsPhase get phase; bool get recovered;
/// Create a copy of SettingsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SettingsStateCopyWith<T, SettingsState<T>> get copyWith => _$SettingsStateCopyWithImpl<T, SettingsState<T>>(this as SettingsState<T>, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as SettingsState<T>;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SettingsState<T>&&const DeepCollectionEquality().equals(other.value, _this.value)&&(identical(other.phase, _this.phase) || other.phase == _this.phase)&&(identical(other.recovered, _this.recovered) || other.recovered == _this.recovered));
}


@override
int get hashCode {
  final _this = this as SettingsState<T>;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.value),_this.phase,_this.recovered);
}

@override
String toString() {
  final _this = this as SettingsState<T>;
  return 'SettingsState<$T>(value: ${_this.value}, phase: ${_this.phase}, recovered: ${_this.recovered})';
}


}

/// @nodoc
abstract mixin class $SettingsStateCopyWith<T,$Res>  {
  factory $SettingsStateCopyWith(SettingsState<T> value, $Res Function(SettingsState<T>) _then) = _$SettingsStateCopyWithImpl;
@useResult
$Res call({
 T value, SettingsPhase phase, bool recovered
});




}
/// @nodoc
class _$SettingsStateCopyWithImpl<T,$Res>
    implements $SettingsStateCopyWith<T, $Res> {
  _$SettingsStateCopyWithImpl(this._self, this._then);

  final SettingsState<T> _self;
  final $Res Function(SettingsState<T>) _then;

/// Create a copy of SettingsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? value = freezed,Object? phase = null,Object? recovered = null,}) {
  return _then(SettingsState(
value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as T,phase: null == phase ? _self.phase : phase // ignore: cast_nullable_to_non_nullable
as SettingsPhase,recovered: null == recovered ? _self.recovered : recovered // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [SettingsState].
extension SettingsStatePatterns<T> on SettingsState<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SettingsState<T> value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SettingsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SettingsState<T> value)  $default,){
final _that = this;
switch (_that) {
case _SettingsState():
return $default(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SettingsState<T> value)?  $default,){
final _that = this;
switch (_that) {
case _SettingsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( T value,  SettingsPhase phase,  bool recovered)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SettingsState() when $default != null:
return $default(_that.value,_that.phase,_that.recovered);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( T value,  SettingsPhase phase,  bool recovered)  $default,) {final _that = this;
switch (_that) {
case _SettingsState():
return $default(_that.value,_that.phase,_that.recovered);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( T value,  SettingsPhase phase,  bool recovered)?  $default,) {final _that = this;
switch (_that) {
case _SettingsState() when $default != null:
return $default(_that.value,_that.phase,_that.recovered);case _:
  return null;

}
}

}

/// @nodoc


class _SettingsState<T> implements SettingsState<T> {
  const _SettingsState({required this.value, this.phase = SettingsPhase.loading, this.recovered = false});
  

@override final  T value;
@override@JsonKey() final  SettingsPhase phase;
@override@JsonKey() final  bool recovered;

/// Create a copy of SettingsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SettingsStateCopyWith<T, _SettingsState<T>> get copyWith => __$SettingsStateCopyWithImpl<T, _SettingsState<T>>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SettingsState<T>&&const DeepCollectionEquality().equals(other.value, value)&&(identical(other.phase, phase) || other.phase == phase)&&(identical(other.recovered, recovered) || other.recovered == recovered));
}


@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(value),phase,recovered);
}

@override
String toString() {
    return 'SettingsState<$T>(value: $value, phase: $phase, recovered: $recovered)';
}


}

/// @nodoc
abstract mixin class _$SettingsStateCopyWith<T,$Res> implements $SettingsStateCopyWith<T, $Res> {
  factory _$SettingsStateCopyWith(_SettingsState<T> value, $Res Function(_SettingsState<T>) _then) = __$SettingsStateCopyWithImpl;
@override @useResult
$Res call({
 T value, SettingsPhase phase, bool recovered
});




}
/// @nodoc
class __$SettingsStateCopyWithImpl<T,$Res>
    implements _$SettingsStateCopyWith<T, $Res> {
  __$SettingsStateCopyWithImpl(this._self, this._then);

  final _SettingsState<T> _self;
  final $Res Function(_SettingsState<T>) _then;

/// Create a copy of SettingsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? value = freezed,Object? phase = null,Object? recovered = null,}) {
  return _then(_SettingsState<T>(
value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as T,phase: null == phase ? _self.phase : phase // ignore: cast_nullable_to_non_nullable
as SettingsPhase,recovered: null == recovered ? _self.recovered : recovered // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
