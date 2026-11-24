// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NotificationData {

 NotificationSettings get settings; DateTime? get nextReleaseCheck; int? get lastNotifiedReleaseId; DateTime? get digestSince; String? get interruptedSignature;
/// Create a copy of NotificationData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationDataCopyWith<NotificationData> get copyWith => _$NotificationDataCopyWithImpl<NotificationData>(this as NotificationData, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as NotificationData;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationData&&(identical(other.settings, _this.settings) || other.settings == _this.settings)&&(identical(other.nextReleaseCheck, _this.nextReleaseCheck) || other.nextReleaseCheck == _this.nextReleaseCheck)&&(identical(other.lastNotifiedReleaseId, _this.lastNotifiedReleaseId) || other.lastNotifiedReleaseId == _this.lastNotifiedReleaseId)&&(identical(other.digestSince, _this.digestSince) || other.digestSince == _this.digestSince)&&(identical(other.interruptedSignature, _this.interruptedSignature) || other.interruptedSignature == _this.interruptedSignature));
}


@override
int get hashCode {
  final _this = this as NotificationData;
  return Object.hash(runtimeType,_this.settings,_this.nextReleaseCheck,_this.lastNotifiedReleaseId,_this.digestSince,_this.interruptedSignature);
}

@override
String toString() {
  final _this = this as NotificationData;
  return 'NotificationData(settings: ${_this.settings}, nextReleaseCheck: ${_this.nextReleaseCheck}, lastNotifiedReleaseId: ${_this.lastNotifiedReleaseId}, digestSince: ${_this.digestSince}, interruptedSignature: ${_this.interruptedSignature})';
}


}

/// @nodoc
abstract mixin class $NotificationDataCopyWith<$Res>  {
  factory $NotificationDataCopyWith(NotificationData value, $Res Function(NotificationData) _then) = _$NotificationDataCopyWithImpl;
@useResult
$Res call({
 NotificationSettings settings, DateTime? nextReleaseCheck, int? lastNotifiedReleaseId, DateTime? digestSince, String? interruptedSignature
});


$NotificationSettingsCopyWith<$Res> get settings;

}
/// @nodoc
class _$NotificationDataCopyWithImpl<$Res>
    implements $NotificationDataCopyWith<$Res> {
  _$NotificationDataCopyWithImpl(this._self, this._then);

  final NotificationData _self;
  final $Res Function(NotificationData) _then;

/// Create a copy of NotificationData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? settings = null,Object? nextReleaseCheck = freezed,Object? lastNotifiedReleaseId = freezed,Object? digestSince = freezed,Object? interruptedSignature = freezed,}) {
  return _then(NotificationData(
settings: null == settings ? _self.settings : settings // ignore: cast_nullable_to_non_nullable
as NotificationSettings,nextReleaseCheck: freezed == nextReleaseCheck ? _self.nextReleaseCheck : nextReleaseCheck // ignore: cast_nullable_to_non_nullable
as DateTime?,lastNotifiedReleaseId: freezed == lastNotifiedReleaseId ? _self.lastNotifiedReleaseId : lastNotifiedReleaseId // ignore: cast_nullable_to_non_nullable
as int?,digestSince: freezed == digestSince ? _self.digestSince : digestSince // ignore: cast_nullable_to_non_nullable
as DateTime?,interruptedSignature: freezed == interruptedSignature ? _self.interruptedSignature : interruptedSignature // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of NotificationData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NotificationSettingsCopyWith<$Res> get settings {
  
  return $NotificationSettingsCopyWith<$Res>(_self.settings, (value) {
    return _then(_self.copyWith(settings: value));
  });
}
}


/// Adds pattern-matching-related methods to [NotificationData].
extension NotificationDataPatterns on NotificationData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NotificationData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NotificationData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NotificationData value)  $default,){
final _that = this;
switch (_that) {
case _NotificationData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NotificationData value)?  $default,){
final _that = this;
switch (_that) {
case _NotificationData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( NotificationSettings settings,  DateTime? nextReleaseCheck,  int? lastNotifiedReleaseId,  DateTime? digestSince,  String? interruptedSignature)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NotificationData() when $default != null:
return $default(_that.settings,_that.nextReleaseCheck,_that.lastNotifiedReleaseId,_that.digestSince,_that.interruptedSignature);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( NotificationSettings settings,  DateTime? nextReleaseCheck,  int? lastNotifiedReleaseId,  DateTime? digestSince,  String? interruptedSignature)  $default,) {final _that = this;
switch (_that) {
case _NotificationData():
return $default(_that.settings,_that.nextReleaseCheck,_that.lastNotifiedReleaseId,_that.digestSince,_that.interruptedSignature);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( NotificationSettings settings,  DateTime? nextReleaseCheck,  int? lastNotifiedReleaseId,  DateTime? digestSince,  String? interruptedSignature)?  $default,) {final _that = this;
switch (_that) {
case _NotificationData() when $default != null:
return $default(_that.settings,_that.nextReleaseCheck,_that.lastNotifiedReleaseId,_that.digestSince,_that.interruptedSignature);case _:
  return null;

}
}

}

/// @nodoc


class _NotificationData implements NotificationData {
  const _NotificationData({this.settings = const NotificationSettings(), this.nextReleaseCheck, this.lastNotifiedReleaseId, this.digestSince, this.interruptedSignature});
  

@override@JsonKey() final  NotificationSettings settings;
@override final  DateTime? nextReleaseCheck;
@override final  int? lastNotifiedReleaseId;
@override final  DateTime? digestSince;
@override final  String? interruptedSignature;

/// Create a copy of NotificationData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificationDataCopyWith<_NotificationData> get copyWith => __$NotificationDataCopyWithImpl<_NotificationData>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotificationData&&(identical(other.settings, settings) || other.settings == settings)&&(identical(other.nextReleaseCheck, nextReleaseCheck) || other.nextReleaseCheck == nextReleaseCheck)&&(identical(other.lastNotifiedReleaseId, lastNotifiedReleaseId) || other.lastNotifiedReleaseId == lastNotifiedReleaseId)&&(identical(other.digestSince, digestSince) || other.digestSince == digestSince)&&(identical(other.interruptedSignature, interruptedSignature) || other.interruptedSignature == interruptedSignature));
}


@override
int get hashCode {
    return Object.hash(runtimeType,settings,nextReleaseCheck,lastNotifiedReleaseId,digestSince,interruptedSignature);
}

@override
String toString() {
    return 'NotificationData(settings: $settings, nextReleaseCheck: $nextReleaseCheck, lastNotifiedReleaseId: $lastNotifiedReleaseId, digestSince: $digestSince, interruptedSignature: $interruptedSignature)';
}


}

/// @nodoc
abstract mixin class _$NotificationDataCopyWith<$Res> implements $NotificationDataCopyWith<$Res> {
  factory _$NotificationDataCopyWith(_NotificationData value, $Res Function(_NotificationData) _then) = __$NotificationDataCopyWithImpl;
@override @useResult
$Res call({
 NotificationSettings settings, DateTime? nextReleaseCheck, int? lastNotifiedReleaseId, DateTime? digestSince, String? interruptedSignature
});


@override $NotificationSettingsCopyWith<$Res> get settings;

}
/// @nodoc
class __$NotificationDataCopyWithImpl<$Res>
    implements _$NotificationDataCopyWith<$Res> {
  __$NotificationDataCopyWithImpl(this._self, this._then);

  final _NotificationData _self;
  final $Res Function(_NotificationData) _then;

/// Create a copy of NotificationData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? settings = null,Object? nextReleaseCheck = freezed,Object? lastNotifiedReleaseId = freezed,Object? digestSince = freezed,Object? interruptedSignature = freezed,}) {
  return _then(_NotificationData(
settings: null == settings ? _self.settings : settings // ignore: cast_nullable_to_non_nullable
as NotificationSettings,nextReleaseCheck: freezed == nextReleaseCheck ? _self.nextReleaseCheck : nextReleaseCheck // ignore: cast_nullable_to_non_nullable
as DateTime?,lastNotifiedReleaseId: freezed == lastNotifiedReleaseId ? _self.lastNotifiedReleaseId : lastNotifiedReleaseId // ignore: cast_nullable_to_non_nullable
as int?,digestSince: freezed == digestSince ? _self.digestSince : digestSince // ignore: cast_nullable_to_non_nullable
as DateTime?,interruptedSignature: freezed == interruptedSignature ? _self.interruptedSignature : interruptedSignature // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of NotificationData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NotificationSettingsCopyWith<$Res> get settings {
  
  return $NotificationSettingsCopyWith<$Res>(_self.settings, (value) {
    return _then(_self.copyWith(settings: value));
  });
}
}

// dart format on
