// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scratchpad_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ScratchpadState {

 bool get cleaning; bool get failed;
/// Create a copy of ScratchpadState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ScratchpadStateCopyWith<ScratchpadState> get copyWith => _$ScratchpadStateCopyWithImpl<ScratchpadState>(this as ScratchpadState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as ScratchpadState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ScratchpadState&&(identical(other.cleaning, _this.cleaning) || other.cleaning == _this.cleaning)&&(identical(other.failed, _this.failed) || other.failed == _this.failed));
}


@override
int get hashCode {
  final _this = this as ScratchpadState;
  return Object.hash(runtimeType,_this.cleaning,_this.failed);
}

@override
String toString() {
  final _this = this as ScratchpadState;
  return 'ScratchpadState(cleaning: ${_this.cleaning}, failed: ${_this.failed})';
}


}

/// @nodoc
abstract mixin class $ScratchpadStateCopyWith<$Res>  {
  factory $ScratchpadStateCopyWith(ScratchpadState value, $Res Function(ScratchpadState) _then) = _$ScratchpadStateCopyWithImpl;
@useResult
$Res call({
 bool cleaning, bool failed
});




}
/// @nodoc
class _$ScratchpadStateCopyWithImpl<$Res>
    implements $ScratchpadStateCopyWith<$Res> {
  _$ScratchpadStateCopyWithImpl(this._self, this._then);

  final ScratchpadState _self;
  final $Res Function(ScratchpadState) _then;

/// Create a copy of ScratchpadState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? cleaning = null,Object? failed = null,}) {
  return _then(ScratchpadState(
cleaning: null == cleaning ? _self.cleaning : cleaning // ignore: cast_nullable_to_non_nullable
as bool,failed: null == failed ? _self.failed : failed // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ScratchpadState].
extension ScratchpadStatePatterns on ScratchpadState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ScratchpadState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ScratchpadState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ScratchpadState value)  $default,){
final _that = this;
switch (_that) {
case _ScratchpadState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ScratchpadState value)?  $default,){
final _that = this;
switch (_that) {
case _ScratchpadState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool cleaning,  bool failed)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ScratchpadState() when $default != null:
return $default(_that.cleaning,_that.failed);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool cleaning,  bool failed)  $default,) {final _that = this;
switch (_that) {
case _ScratchpadState():
return $default(_that.cleaning,_that.failed);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool cleaning,  bool failed)?  $default,) {final _that = this;
switch (_that) {
case _ScratchpadState() when $default != null:
return $default(_that.cleaning,_that.failed);case _:
  return null;

}
}

}

/// @nodoc


class _ScratchpadState implements ScratchpadState {
  const _ScratchpadState({this.cleaning = false, this.failed = false});
  

@override@JsonKey() final  bool cleaning;
@override@JsonKey() final  bool failed;

/// Create a copy of ScratchpadState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ScratchpadStateCopyWith<_ScratchpadState> get copyWith => __$ScratchpadStateCopyWithImpl<_ScratchpadState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ScratchpadState&&(identical(other.cleaning, cleaning) || other.cleaning == cleaning)&&(identical(other.failed, failed) || other.failed == failed));
}


@override
int get hashCode {
    return Object.hash(runtimeType,cleaning,failed);
}

@override
String toString() {
    return 'ScratchpadState(cleaning: $cleaning, failed: $failed)';
}


}

/// @nodoc
abstract mixin class _$ScratchpadStateCopyWith<$Res> implements $ScratchpadStateCopyWith<$Res> {
  factory _$ScratchpadStateCopyWith(_ScratchpadState value, $Res Function(_ScratchpadState) _then) = __$ScratchpadStateCopyWithImpl;
@override @useResult
$Res call({
 bool cleaning, bool failed
});




}
/// @nodoc
class __$ScratchpadStateCopyWithImpl<$Res>
    implements _$ScratchpadStateCopyWith<$Res> {
  __$ScratchpadStateCopyWithImpl(this._self, this._then);

  final _ScratchpadState _self;
  final $Res Function(_ScratchpadState) _then;

/// Create a copy of ScratchpadState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cleaning = null,Object? failed = null,}) {
  return _then(_ScratchpadState(
cleaning: null == cleaning ? _self.cleaning : cleaning // ignore: cast_nullable_to_non_nullable
as bool,failed: null == failed ? _self.failed : failed // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
