// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'compression_alert_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CompressionAlertStatus {

 DateTime? get digestSince; String? get interruptedSignature;
/// Create a copy of CompressionAlertStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CompressionAlertStatusCopyWith<CompressionAlertStatus> get copyWith => _$CompressionAlertStatusCopyWithImpl<CompressionAlertStatus>(this as CompressionAlertStatus, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as CompressionAlertStatus;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CompressionAlertStatus&&(identical(other.digestSince, _this.digestSince) || other.digestSince == _this.digestSince)&&(identical(other.interruptedSignature, _this.interruptedSignature) || other.interruptedSignature == _this.interruptedSignature));
}


@override
int get hashCode {
  final _this = this as CompressionAlertStatus;
  return Object.hash(runtimeType,_this.digestSince,_this.interruptedSignature);
}

@override
String toString() {
  final _this = this as CompressionAlertStatus;
  return 'CompressionAlertStatus(digestSince: ${_this.digestSince}, interruptedSignature: ${_this.interruptedSignature})';
}


}

/// @nodoc
abstract mixin class $CompressionAlertStatusCopyWith<$Res>  {
  factory $CompressionAlertStatusCopyWith(CompressionAlertStatus value, $Res Function(CompressionAlertStatus) _then) = _$CompressionAlertStatusCopyWithImpl;
@useResult
$Res call({
 DateTime? digestSince, String? interruptedSignature
});




}
/// @nodoc
class _$CompressionAlertStatusCopyWithImpl<$Res>
    implements $CompressionAlertStatusCopyWith<$Res> {
  _$CompressionAlertStatusCopyWithImpl(this._self, this._then);

  final CompressionAlertStatus _self;
  final $Res Function(CompressionAlertStatus) _then;

/// Create a copy of CompressionAlertStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? digestSince = freezed,Object? interruptedSignature = freezed,}) {
  return _then(CompressionAlertStatus(
digestSince: freezed == digestSince ? _self.digestSince : digestSince // ignore: cast_nullable_to_non_nullable
as DateTime?,interruptedSignature: freezed == interruptedSignature ? _self.interruptedSignature : interruptedSignature // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CompressionAlertStatus].
extension CompressionAlertStatusPatterns on CompressionAlertStatus {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CompressionAlertStatus value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CompressionAlertStatus() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CompressionAlertStatus value)  $default,){
final _that = this;
switch (_that) {
case _CompressionAlertStatus():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CompressionAlertStatus value)?  $default,){
final _that = this;
switch (_that) {
case _CompressionAlertStatus() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime? digestSince,  String? interruptedSignature)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CompressionAlertStatus() when $default != null:
return $default(_that.digestSince,_that.interruptedSignature);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime? digestSince,  String? interruptedSignature)  $default,) {final _that = this;
switch (_that) {
case _CompressionAlertStatus():
return $default(_that.digestSince,_that.interruptedSignature);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime? digestSince,  String? interruptedSignature)?  $default,) {final _that = this;
switch (_that) {
case _CompressionAlertStatus() when $default != null:
return $default(_that.digestSince,_that.interruptedSignature);case _:
  return null;

}
}

}

/// @nodoc


class _CompressionAlertStatus implements CompressionAlertStatus {
  const _CompressionAlertStatus({this.digestSince, this.interruptedSignature});
  

@override final  DateTime? digestSince;
@override final  String? interruptedSignature;

/// Create a copy of CompressionAlertStatus
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CompressionAlertStatusCopyWith<_CompressionAlertStatus> get copyWith => __$CompressionAlertStatusCopyWithImpl<_CompressionAlertStatus>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CompressionAlertStatus&&(identical(other.digestSince, digestSince) || other.digestSince == digestSince)&&(identical(other.interruptedSignature, interruptedSignature) || other.interruptedSignature == interruptedSignature));
}


@override
int get hashCode {
    return Object.hash(runtimeType,digestSince,interruptedSignature);
}

@override
String toString() {
    return 'CompressionAlertStatus(digestSince: $digestSince, interruptedSignature: $interruptedSignature)';
}


}

/// @nodoc
abstract mixin class _$CompressionAlertStatusCopyWith<$Res> implements $CompressionAlertStatusCopyWith<$Res> {
  factory _$CompressionAlertStatusCopyWith(_CompressionAlertStatus value, $Res Function(_CompressionAlertStatus) _then) = __$CompressionAlertStatusCopyWithImpl;
@override @useResult
$Res call({
 DateTime? digestSince, String? interruptedSignature
});




}
/// @nodoc
class __$CompressionAlertStatusCopyWithImpl<$Res>
    implements _$CompressionAlertStatusCopyWith<$Res> {
  __$CompressionAlertStatusCopyWithImpl(this._self, this._then);

  final _CompressionAlertStatus _self;
  final $Res Function(_CompressionAlertStatus) _then;

/// Create a copy of CompressionAlertStatus
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? digestSince = freezed,Object? interruptedSignature = freezed,}) {
  return _then(_CompressionAlertStatus(
digestSince: freezed == digestSince ? _self.digestSince : digestSince // ignore: cast_nullable_to_non_nullable
as DateTime?,interruptedSignature: freezed == interruptedSignature ? _self.interruptedSignature : interruptedSignature // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
