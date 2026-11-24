// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NotificationSettings {

 bool get jobCompletion; bool get backgroundStatus; bool get errorAlerts; bool get completionSound; bool get productUpdates; bool get savingsDigest; bool get buttonHaptics; bool get selectionHaptics; bool get gestureHaptics; bool get successHaptics; bool get errorHaptics;
/// Create a copy of NotificationSettings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationSettingsCopyWith<NotificationSettings> get copyWith => _$NotificationSettingsCopyWithImpl<NotificationSettings>(this as NotificationSettings, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as NotificationSettings;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationSettings&&(identical(other.jobCompletion, _this.jobCompletion) || other.jobCompletion == _this.jobCompletion)&&(identical(other.backgroundStatus, _this.backgroundStatus) || other.backgroundStatus == _this.backgroundStatus)&&(identical(other.errorAlerts, _this.errorAlerts) || other.errorAlerts == _this.errorAlerts)&&(identical(other.completionSound, _this.completionSound) || other.completionSound == _this.completionSound)&&(identical(other.productUpdates, _this.productUpdates) || other.productUpdates == _this.productUpdates)&&(identical(other.savingsDigest, _this.savingsDigest) || other.savingsDigest == _this.savingsDigest)&&(identical(other.buttonHaptics, _this.buttonHaptics) || other.buttonHaptics == _this.buttonHaptics)&&(identical(other.selectionHaptics, _this.selectionHaptics) || other.selectionHaptics == _this.selectionHaptics)&&(identical(other.gestureHaptics, _this.gestureHaptics) || other.gestureHaptics == _this.gestureHaptics)&&(identical(other.successHaptics, _this.successHaptics) || other.successHaptics == _this.successHaptics)&&(identical(other.errorHaptics, _this.errorHaptics) || other.errorHaptics == _this.errorHaptics));
}


@override
int get hashCode {
  final _this = this as NotificationSettings;
  return Object.hash(runtimeType,_this.jobCompletion,_this.backgroundStatus,_this.errorAlerts,_this.completionSound,_this.productUpdates,_this.savingsDigest,_this.buttonHaptics,_this.selectionHaptics,_this.gestureHaptics,_this.successHaptics,_this.errorHaptics);
}

@override
String toString() {
  final _this = this as NotificationSettings;
  return 'NotificationSettings(jobCompletion: ${_this.jobCompletion}, backgroundStatus: ${_this.backgroundStatus}, errorAlerts: ${_this.errorAlerts}, completionSound: ${_this.completionSound}, productUpdates: ${_this.productUpdates}, savingsDigest: ${_this.savingsDigest}, buttonHaptics: ${_this.buttonHaptics}, selectionHaptics: ${_this.selectionHaptics}, gestureHaptics: ${_this.gestureHaptics}, successHaptics: ${_this.successHaptics}, errorHaptics: ${_this.errorHaptics})';
}


}

/// @nodoc
abstract mixin class $NotificationSettingsCopyWith<$Res>  {
  factory $NotificationSettingsCopyWith(NotificationSettings value, $Res Function(NotificationSettings) _then) = _$NotificationSettingsCopyWithImpl;
@useResult
$Res call({
 bool jobCompletion, bool backgroundStatus, bool errorAlerts, bool completionSound, bool productUpdates, bool savingsDigest, bool buttonHaptics, bool selectionHaptics, bool gestureHaptics, bool successHaptics, bool errorHaptics
});




}
/// @nodoc
class _$NotificationSettingsCopyWithImpl<$Res>
    implements $NotificationSettingsCopyWith<$Res> {
  _$NotificationSettingsCopyWithImpl(this._self, this._then);

  final NotificationSettings _self;
  final $Res Function(NotificationSettings) _then;

/// Create a copy of NotificationSettings
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? jobCompletion = null,Object? backgroundStatus = null,Object? errorAlerts = null,Object? completionSound = null,Object? productUpdates = null,Object? savingsDigest = null,Object? buttonHaptics = null,Object? selectionHaptics = null,Object? gestureHaptics = null,Object? successHaptics = null,Object? errorHaptics = null,}) {
  return _then(NotificationSettings(
jobCompletion: null == jobCompletion ? _self.jobCompletion : jobCompletion // ignore: cast_nullable_to_non_nullable
as bool,backgroundStatus: null == backgroundStatus ? _self.backgroundStatus : backgroundStatus // ignore: cast_nullable_to_non_nullable
as bool,errorAlerts: null == errorAlerts ? _self.errorAlerts : errorAlerts // ignore: cast_nullable_to_non_nullable
as bool,completionSound: null == completionSound ? _self.completionSound : completionSound // ignore: cast_nullable_to_non_nullable
as bool,productUpdates: null == productUpdates ? _self.productUpdates : productUpdates // ignore: cast_nullable_to_non_nullable
as bool,savingsDigest: null == savingsDigest ? _self.savingsDigest : savingsDigest // ignore: cast_nullable_to_non_nullable
as bool,buttonHaptics: null == buttonHaptics ? _self.buttonHaptics : buttonHaptics // ignore: cast_nullable_to_non_nullable
as bool,selectionHaptics: null == selectionHaptics ? _self.selectionHaptics : selectionHaptics // ignore: cast_nullable_to_non_nullable
as bool,gestureHaptics: null == gestureHaptics ? _self.gestureHaptics : gestureHaptics // ignore: cast_nullable_to_non_nullable
as bool,successHaptics: null == successHaptics ? _self.successHaptics : successHaptics // ignore: cast_nullable_to_non_nullable
as bool,errorHaptics: null == errorHaptics ? _self.errorHaptics : errorHaptics // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [NotificationSettings].
extension NotificationSettingsPatterns on NotificationSettings {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NotificationSettings value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NotificationSettings() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NotificationSettings value)  $default,){
final _that = this;
switch (_that) {
case _NotificationSettings():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NotificationSettings value)?  $default,){
final _that = this;
switch (_that) {
case _NotificationSettings() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool jobCompletion,  bool backgroundStatus,  bool errorAlerts,  bool completionSound,  bool productUpdates,  bool savingsDigest,  bool buttonHaptics,  bool selectionHaptics,  bool gestureHaptics,  bool successHaptics,  bool errorHaptics)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NotificationSettings() when $default != null:
return $default(_that.jobCompletion,_that.backgroundStatus,_that.errorAlerts,_that.completionSound,_that.productUpdates,_that.savingsDigest,_that.buttonHaptics,_that.selectionHaptics,_that.gestureHaptics,_that.successHaptics,_that.errorHaptics);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool jobCompletion,  bool backgroundStatus,  bool errorAlerts,  bool completionSound,  bool productUpdates,  bool savingsDigest,  bool buttonHaptics,  bool selectionHaptics,  bool gestureHaptics,  bool successHaptics,  bool errorHaptics)  $default,) {final _that = this;
switch (_that) {
case _NotificationSettings():
return $default(_that.jobCompletion,_that.backgroundStatus,_that.errorAlerts,_that.completionSound,_that.productUpdates,_that.savingsDigest,_that.buttonHaptics,_that.selectionHaptics,_that.gestureHaptics,_that.successHaptics,_that.errorHaptics);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool jobCompletion,  bool backgroundStatus,  bool errorAlerts,  bool completionSound,  bool productUpdates,  bool savingsDigest,  bool buttonHaptics,  bool selectionHaptics,  bool gestureHaptics,  bool successHaptics,  bool errorHaptics)?  $default,) {final _that = this;
switch (_that) {
case _NotificationSettings() when $default != null:
return $default(_that.jobCompletion,_that.backgroundStatus,_that.errorAlerts,_that.completionSound,_that.productUpdates,_that.savingsDigest,_that.buttonHaptics,_that.selectionHaptics,_that.gestureHaptics,_that.successHaptics,_that.errorHaptics);case _:
  return null;

}
}

}

/// @nodoc


class _NotificationSettings implements NotificationSettings {
  const _NotificationSettings({this.jobCompletion = true, this.backgroundStatus = true, this.errorAlerts = true, this.completionSound = false, this.productUpdates = true, this.savingsDigest = true, this.buttonHaptics = true, this.selectionHaptics = true, this.gestureHaptics = true, this.successHaptics = true, this.errorHaptics = true});
  

@override@JsonKey() final  bool jobCompletion;
@override@JsonKey() final  bool backgroundStatus;
@override@JsonKey() final  bool errorAlerts;
@override@JsonKey() final  bool completionSound;
@override@JsonKey() final  bool productUpdates;
@override@JsonKey() final  bool savingsDigest;
@override@JsonKey() final  bool buttonHaptics;
@override@JsonKey() final  bool selectionHaptics;
@override@JsonKey() final  bool gestureHaptics;
@override@JsonKey() final  bool successHaptics;
@override@JsonKey() final  bool errorHaptics;

/// Create a copy of NotificationSettings
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificationSettingsCopyWith<_NotificationSettings> get copyWith => __$NotificationSettingsCopyWithImpl<_NotificationSettings>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotificationSettings&&(identical(other.jobCompletion, jobCompletion) || other.jobCompletion == jobCompletion)&&(identical(other.backgroundStatus, backgroundStatus) || other.backgroundStatus == backgroundStatus)&&(identical(other.errorAlerts, errorAlerts) || other.errorAlerts == errorAlerts)&&(identical(other.completionSound, completionSound) || other.completionSound == completionSound)&&(identical(other.productUpdates, productUpdates) || other.productUpdates == productUpdates)&&(identical(other.savingsDigest, savingsDigest) || other.savingsDigest == savingsDigest)&&(identical(other.buttonHaptics, buttonHaptics) || other.buttonHaptics == buttonHaptics)&&(identical(other.selectionHaptics, selectionHaptics) || other.selectionHaptics == selectionHaptics)&&(identical(other.gestureHaptics, gestureHaptics) || other.gestureHaptics == gestureHaptics)&&(identical(other.successHaptics, successHaptics) || other.successHaptics == successHaptics)&&(identical(other.errorHaptics, errorHaptics) || other.errorHaptics == errorHaptics));
}


@override
int get hashCode {
    return Object.hash(runtimeType,jobCompletion,backgroundStatus,errorAlerts,completionSound,productUpdates,savingsDigest,buttonHaptics,selectionHaptics,gestureHaptics,successHaptics,errorHaptics);
}

@override
String toString() {
    return 'NotificationSettings(jobCompletion: $jobCompletion, backgroundStatus: $backgroundStatus, errorAlerts: $errorAlerts, completionSound: $completionSound, productUpdates: $productUpdates, savingsDigest: $savingsDigest, buttonHaptics: $buttonHaptics, selectionHaptics: $selectionHaptics, gestureHaptics: $gestureHaptics, successHaptics: $successHaptics, errorHaptics: $errorHaptics)';
}


}

/// @nodoc
abstract mixin class _$NotificationSettingsCopyWith<$Res> implements $NotificationSettingsCopyWith<$Res> {
  factory _$NotificationSettingsCopyWith(_NotificationSettings value, $Res Function(_NotificationSettings) _then) = __$NotificationSettingsCopyWithImpl;
@override @useResult
$Res call({
 bool jobCompletion, bool backgroundStatus, bool errorAlerts, bool completionSound, bool productUpdates, bool savingsDigest, bool buttonHaptics, bool selectionHaptics, bool gestureHaptics, bool successHaptics, bool errorHaptics
});




}
/// @nodoc
class __$NotificationSettingsCopyWithImpl<$Res>
    implements _$NotificationSettingsCopyWith<$Res> {
  __$NotificationSettingsCopyWithImpl(this._self, this._then);

  final _NotificationSettings _self;
  final $Res Function(_NotificationSettings) _then;

/// Create a copy of NotificationSettings
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? jobCompletion = null,Object? backgroundStatus = null,Object? errorAlerts = null,Object? completionSound = null,Object? productUpdates = null,Object? savingsDigest = null,Object? buttonHaptics = null,Object? selectionHaptics = null,Object? gestureHaptics = null,Object? successHaptics = null,Object? errorHaptics = null,}) {
  return _then(_NotificationSettings(
jobCompletion: null == jobCompletion ? _self.jobCompletion : jobCompletion // ignore: cast_nullable_to_non_nullable
as bool,backgroundStatus: null == backgroundStatus ? _self.backgroundStatus : backgroundStatus // ignore: cast_nullable_to_non_nullable
as bool,errorAlerts: null == errorAlerts ? _self.errorAlerts : errorAlerts // ignore: cast_nullable_to_non_nullable
as bool,completionSound: null == completionSound ? _self.completionSound : completionSound // ignore: cast_nullable_to_non_nullable
as bool,productUpdates: null == productUpdates ? _self.productUpdates : productUpdates // ignore: cast_nullable_to_non_nullable
as bool,savingsDigest: null == savingsDigest ? _self.savingsDigest : savingsDigest // ignore: cast_nullable_to_non_nullable
as bool,buttonHaptics: null == buttonHaptics ? _self.buttonHaptics : buttonHaptics // ignore: cast_nullable_to_non_nullable
as bool,selectionHaptics: null == selectionHaptics ? _self.selectionHaptics : selectionHaptics // ignore: cast_nullable_to_non_nullable
as bool,gestureHaptics: null == gestureHaptics ? _self.gestureHaptics : gestureHaptics // ignore: cast_nullable_to_non_nullable
as bool,successHaptics: null == successHaptics ? _self.successHaptics : successHaptics // ignore: cast_nullable_to_non_nullable
as bool,errorHaptics: null == errorHaptics ? _self.errorHaptics : errorHaptics // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
