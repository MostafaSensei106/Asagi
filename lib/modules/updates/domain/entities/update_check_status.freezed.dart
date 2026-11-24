// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_check_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UpdateCheckStatus {

 DateTime? get nextReleaseCheck; int? get lastNotifiedReleaseId;
/// Create a copy of UpdateCheckStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateCheckStatusCopyWith<UpdateCheckStatus> get copyWith => _$UpdateCheckStatusCopyWithImpl<UpdateCheckStatus>(this as UpdateCheckStatus, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as UpdateCheckStatus;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateCheckStatus&&(identical(other.nextReleaseCheck, _this.nextReleaseCheck) || other.nextReleaseCheck == _this.nextReleaseCheck)&&(identical(other.lastNotifiedReleaseId, _this.lastNotifiedReleaseId) || other.lastNotifiedReleaseId == _this.lastNotifiedReleaseId));
}


@override
int get hashCode {
  final _this = this as UpdateCheckStatus;
  return Object.hash(runtimeType,_this.nextReleaseCheck,_this.lastNotifiedReleaseId);
}

@override
String toString() {
  final _this = this as UpdateCheckStatus;
  return 'UpdateCheckStatus(nextReleaseCheck: ${_this.nextReleaseCheck}, lastNotifiedReleaseId: ${_this.lastNotifiedReleaseId})';
}


}

/// @nodoc
abstract mixin class $UpdateCheckStatusCopyWith<$Res>  {
  factory $UpdateCheckStatusCopyWith(UpdateCheckStatus value, $Res Function(UpdateCheckStatus) _then) = _$UpdateCheckStatusCopyWithImpl;
@useResult
$Res call({
 DateTime? nextReleaseCheck, int? lastNotifiedReleaseId
});




}
/// @nodoc
class _$UpdateCheckStatusCopyWithImpl<$Res>
    implements $UpdateCheckStatusCopyWith<$Res> {
  _$UpdateCheckStatusCopyWithImpl(this._self, this._then);

  final UpdateCheckStatus _self;
  final $Res Function(UpdateCheckStatus) _then;

/// Create a copy of UpdateCheckStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? nextReleaseCheck = freezed,Object? lastNotifiedReleaseId = freezed,}) {
  return _then(UpdateCheckStatus(
nextReleaseCheck: freezed == nextReleaseCheck ? _self.nextReleaseCheck : nextReleaseCheck // ignore: cast_nullable_to_non_nullable
as DateTime?,lastNotifiedReleaseId: freezed == lastNotifiedReleaseId ? _self.lastNotifiedReleaseId : lastNotifiedReleaseId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateCheckStatus].
extension UpdateCheckStatusPatterns on UpdateCheckStatus {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateCheckStatus value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateCheckStatus() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateCheckStatus value)  $default,){
final _that = this;
switch (_that) {
case _UpdateCheckStatus():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateCheckStatus value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateCheckStatus() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime? nextReleaseCheck,  int? lastNotifiedReleaseId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateCheckStatus() when $default != null:
return $default(_that.nextReleaseCheck,_that.lastNotifiedReleaseId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime? nextReleaseCheck,  int? lastNotifiedReleaseId)  $default,) {final _that = this;
switch (_that) {
case _UpdateCheckStatus():
return $default(_that.nextReleaseCheck,_that.lastNotifiedReleaseId);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime? nextReleaseCheck,  int? lastNotifiedReleaseId)?  $default,) {final _that = this;
switch (_that) {
case _UpdateCheckStatus() when $default != null:
return $default(_that.nextReleaseCheck,_that.lastNotifiedReleaseId);case _:
  return null;

}
}

}

/// @nodoc


class _UpdateCheckStatus implements UpdateCheckStatus {
  const _UpdateCheckStatus({this.nextReleaseCheck, this.lastNotifiedReleaseId});
  

@override final  DateTime? nextReleaseCheck;
@override final  int? lastNotifiedReleaseId;

/// Create a copy of UpdateCheckStatus
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateCheckStatusCopyWith<_UpdateCheckStatus> get copyWith => __$UpdateCheckStatusCopyWithImpl<_UpdateCheckStatus>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateCheckStatus&&(identical(other.nextReleaseCheck, nextReleaseCheck) || other.nextReleaseCheck == nextReleaseCheck)&&(identical(other.lastNotifiedReleaseId, lastNotifiedReleaseId) || other.lastNotifiedReleaseId == lastNotifiedReleaseId));
}


@override
int get hashCode {
    return Object.hash(runtimeType,nextReleaseCheck,lastNotifiedReleaseId);
}

@override
String toString() {
    return 'UpdateCheckStatus(nextReleaseCheck: $nextReleaseCheck, lastNotifiedReleaseId: $lastNotifiedReleaseId)';
}


}

/// @nodoc
abstract mixin class _$UpdateCheckStatusCopyWith<$Res> implements $UpdateCheckStatusCopyWith<$Res> {
  factory _$UpdateCheckStatusCopyWith(_UpdateCheckStatus value, $Res Function(_UpdateCheckStatus) _then) = __$UpdateCheckStatusCopyWithImpl;
@override @useResult
$Res call({
 DateTime? nextReleaseCheck, int? lastNotifiedReleaseId
});




}
/// @nodoc
class __$UpdateCheckStatusCopyWithImpl<$Res>
    implements _$UpdateCheckStatusCopyWith<$Res> {
  __$UpdateCheckStatusCopyWithImpl(this._self, this._then);

  final _UpdateCheckStatus _self;
  final $Res Function(_UpdateCheckStatus) _then;

/// Create a copy of UpdateCheckStatus
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? nextReleaseCheck = freezed,Object? lastNotifiedReleaseId = freezed,}) {
  return _then(_UpdateCheckStatus(
nextReleaseCheck: freezed == nextReleaseCheck ? _self.nextReleaseCheck : nextReleaseCheck // ignore: cast_nullable_to_non_nullable
as DateTime?,lastNotifiedReleaseId: freezed == lastNotifiedReleaseId ? _self.lastNotifiedReleaseId : lastNotifiedReleaseId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
