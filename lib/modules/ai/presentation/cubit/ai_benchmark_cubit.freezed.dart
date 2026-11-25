// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ai_benchmark_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AiBenchmarkState {

 bool get busy; bool get failed; int? get elapsedMs;
/// Create a copy of AiBenchmarkState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AiBenchmarkStateCopyWith<AiBenchmarkState> get copyWith => _$AiBenchmarkStateCopyWithImpl<AiBenchmarkState>(this as AiBenchmarkState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as AiBenchmarkState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AiBenchmarkState&&(identical(other.busy, _this.busy) || other.busy == _this.busy)&&(identical(other.failed, _this.failed) || other.failed == _this.failed)&&(identical(other.elapsedMs, _this.elapsedMs) || other.elapsedMs == _this.elapsedMs));
}


@override
int get hashCode {
  final _this = this as AiBenchmarkState;
  return Object.hash(runtimeType,_this.busy,_this.failed,_this.elapsedMs);
}

@override
String toString() {
  final _this = this as AiBenchmarkState;
  return 'AiBenchmarkState(busy: ${_this.busy}, failed: ${_this.failed}, elapsedMs: ${_this.elapsedMs})';
}


}

/// @nodoc
abstract mixin class $AiBenchmarkStateCopyWith<$Res>  {
  factory $AiBenchmarkStateCopyWith(AiBenchmarkState value, $Res Function(AiBenchmarkState) _then) = _$AiBenchmarkStateCopyWithImpl;
@useResult
$Res call({
 bool busy, bool failed, int? elapsedMs
});




}
/// @nodoc
class _$AiBenchmarkStateCopyWithImpl<$Res>
    implements $AiBenchmarkStateCopyWith<$Res> {
  _$AiBenchmarkStateCopyWithImpl(this._self, this._then);

  final AiBenchmarkState _self;
  final $Res Function(AiBenchmarkState) _then;

/// Create a copy of AiBenchmarkState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? busy = null,Object? failed = null,Object? elapsedMs = freezed,}) {
  return _then(AiBenchmarkState(
busy: null == busy ? _self.busy : busy // ignore: cast_nullable_to_non_nullable
as bool,failed: null == failed ? _self.failed : failed // ignore: cast_nullable_to_non_nullable
as bool,elapsedMs: freezed == elapsedMs ? _self.elapsedMs : elapsedMs // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [AiBenchmarkState].
extension AiBenchmarkStatePatterns on AiBenchmarkState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AiBenchmarkState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AiBenchmarkState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AiBenchmarkState value)  $default,){
final _that = this;
switch (_that) {
case _AiBenchmarkState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AiBenchmarkState value)?  $default,){
final _that = this;
switch (_that) {
case _AiBenchmarkState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool busy,  bool failed,  int? elapsedMs)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AiBenchmarkState() when $default != null:
return $default(_that.busy,_that.failed,_that.elapsedMs);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool busy,  bool failed,  int? elapsedMs)  $default,) {final _that = this;
switch (_that) {
case _AiBenchmarkState():
return $default(_that.busy,_that.failed,_that.elapsedMs);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool busy,  bool failed,  int? elapsedMs)?  $default,) {final _that = this;
switch (_that) {
case _AiBenchmarkState() when $default != null:
return $default(_that.busy,_that.failed,_that.elapsedMs);case _:
  return null;

}
}

}

/// @nodoc


class _AiBenchmarkState implements AiBenchmarkState {
  const _AiBenchmarkState({this.busy = false, this.failed = false, this.elapsedMs});
  

@override@JsonKey() final  bool busy;
@override@JsonKey() final  bool failed;
@override final  int? elapsedMs;

/// Create a copy of AiBenchmarkState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AiBenchmarkStateCopyWith<_AiBenchmarkState> get copyWith => __$AiBenchmarkStateCopyWithImpl<_AiBenchmarkState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AiBenchmarkState&&(identical(other.busy, busy) || other.busy == busy)&&(identical(other.failed, failed) || other.failed == failed)&&(identical(other.elapsedMs, elapsedMs) || other.elapsedMs == elapsedMs));
}


@override
int get hashCode {
    return Object.hash(runtimeType,busy,failed,elapsedMs);
}

@override
String toString() {
    return 'AiBenchmarkState(busy: $busy, failed: $failed, elapsedMs: $elapsedMs)';
}


}

/// @nodoc
abstract mixin class _$AiBenchmarkStateCopyWith<$Res> implements $AiBenchmarkStateCopyWith<$Res> {
  factory _$AiBenchmarkStateCopyWith(_AiBenchmarkState value, $Res Function(_AiBenchmarkState) _then) = __$AiBenchmarkStateCopyWithImpl;
@override @useResult
$Res call({
 bool busy, bool failed, int? elapsedMs
});




}
/// @nodoc
class __$AiBenchmarkStateCopyWithImpl<$Res>
    implements _$AiBenchmarkStateCopyWith<$Res> {
  __$AiBenchmarkStateCopyWithImpl(this._self, this._then);

  final _AiBenchmarkState _self;
  final $Res Function(_AiBenchmarkState) _then;

/// Create a copy of AiBenchmarkState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? busy = null,Object? failed = null,Object? elapsedMs = freezed,}) {
  return _then(_AiBenchmarkState(
busy: null == busy ? _self.busy : busy // ignore: cast_nullable_to_non_nullable
as bool,failed: null == failed ? _self.failed : failed // ignore: cast_nullable_to_non_nullable
as bool,elapsedMs: freezed == elapsedMs ? _self.elapsedMs : elapsedMs // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
