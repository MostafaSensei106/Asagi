// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'privacy_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PrivacySettings {

 bool get crashReports; bool get performanceTelemetry; bool get preserveMetadata; bool get autoWipeTempCache; bool get saveChatHistory;
/// Create a copy of PrivacySettings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PrivacySettingsCopyWith<PrivacySettings> get copyWith => _$PrivacySettingsCopyWithImpl<PrivacySettings>(this as PrivacySettings, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as PrivacySettings;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PrivacySettings&&(identical(other.crashReports, _this.crashReports) || other.crashReports == _this.crashReports)&&(identical(other.performanceTelemetry, _this.performanceTelemetry) || other.performanceTelemetry == _this.performanceTelemetry)&&(identical(other.preserveMetadata, _this.preserveMetadata) || other.preserveMetadata == _this.preserveMetadata)&&(identical(other.autoWipeTempCache, _this.autoWipeTempCache) || other.autoWipeTempCache == _this.autoWipeTempCache)&&(identical(other.saveChatHistory, _this.saveChatHistory) || other.saveChatHistory == _this.saveChatHistory));
}


@override
int get hashCode {
  final _this = this as PrivacySettings;
  return Object.hash(runtimeType,_this.crashReports,_this.performanceTelemetry,_this.preserveMetadata,_this.autoWipeTempCache,_this.saveChatHistory);
}

@override
String toString() {
  final _this = this as PrivacySettings;
  return 'PrivacySettings(crashReports: ${_this.crashReports}, performanceTelemetry: ${_this.performanceTelemetry}, preserveMetadata: ${_this.preserveMetadata}, autoWipeTempCache: ${_this.autoWipeTempCache}, saveChatHistory: ${_this.saveChatHistory})';
}


}

/// @nodoc
abstract mixin class $PrivacySettingsCopyWith<$Res>  {
  factory $PrivacySettingsCopyWith(PrivacySettings value, $Res Function(PrivacySettings) _then) = _$PrivacySettingsCopyWithImpl;
@useResult
$Res call({
 bool crashReports, bool performanceTelemetry, bool preserveMetadata, bool autoWipeTempCache, bool saveChatHistory
});




}
/// @nodoc
class _$PrivacySettingsCopyWithImpl<$Res>
    implements $PrivacySettingsCopyWith<$Res> {
  _$PrivacySettingsCopyWithImpl(this._self, this._then);

  final PrivacySettings _self;
  final $Res Function(PrivacySettings) _then;

/// Create a copy of PrivacySettings
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? crashReports = null,Object? performanceTelemetry = null,Object? preserveMetadata = null,Object? autoWipeTempCache = null,Object? saveChatHistory = null,}) {
  return _then(PrivacySettings(
crashReports: null == crashReports ? _self.crashReports : crashReports // ignore: cast_nullable_to_non_nullable
as bool,performanceTelemetry: null == performanceTelemetry ? _self.performanceTelemetry : performanceTelemetry // ignore: cast_nullable_to_non_nullable
as bool,preserveMetadata: null == preserveMetadata ? _self.preserveMetadata : preserveMetadata // ignore: cast_nullable_to_non_nullable
as bool,autoWipeTempCache: null == autoWipeTempCache ? _self.autoWipeTempCache : autoWipeTempCache // ignore: cast_nullable_to_non_nullable
as bool,saveChatHistory: null == saveChatHistory ? _self.saveChatHistory : saveChatHistory // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [PrivacySettings].
extension PrivacySettingsPatterns on PrivacySettings {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PrivacySettings value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PrivacySettings() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PrivacySettings value)  $default,){
final _that = this;
switch (_that) {
case _PrivacySettings():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PrivacySettings value)?  $default,){
final _that = this;
switch (_that) {
case _PrivacySettings() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool crashReports,  bool performanceTelemetry,  bool preserveMetadata,  bool autoWipeTempCache,  bool saveChatHistory)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PrivacySettings() when $default != null:
return $default(_that.crashReports,_that.performanceTelemetry,_that.preserveMetadata,_that.autoWipeTempCache,_that.saveChatHistory);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool crashReports,  bool performanceTelemetry,  bool preserveMetadata,  bool autoWipeTempCache,  bool saveChatHistory)  $default,) {final _that = this;
switch (_that) {
case _PrivacySettings():
return $default(_that.crashReports,_that.performanceTelemetry,_that.preserveMetadata,_that.autoWipeTempCache,_that.saveChatHistory);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool crashReports,  bool performanceTelemetry,  bool preserveMetadata,  bool autoWipeTempCache,  bool saveChatHistory)?  $default,) {final _that = this;
switch (_that) {
case _PrivacySettings() when $default != null:
return $default(_that.crashReports,_that.performanceTelemetry,_that.preserveMetadata,_that.autoWipeTempCache,_that.saveChatHistory);case _:
  return null;

}
}

}

/// @nodoc


class _PrivacySettings implements PrivacySettings {
  const _PrivacySettings({this.crashReports = false, this.performanceTelemetry = false, this.preserveMetadata = true, this.autoWipeTempCache = true, this.saveChatHistory = false});
  

@override@JsonKey() final  bool crashReports;
@override@JsonKey() final  bool performanceTelemetry;
@override@JsonKey() final  bool preserveMetadata;
@override@JsonKey() final  bool autoWipeTempCache;
@override@JsonKey() final  bool saveChatHistory;

/// Create a copy of PrivacySettings
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PrivacySettingsCopyWith<_PrivacySettings> get copyWith => __$PrivacySettingsCopyWithImpl<_PrivacySettings>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PrivacySettings&&(identical(other.crashReports, crashReports) || other.crashReports == crashReports)&&(identical(other.performanceTelemetry, performanceTelemetry) || other.performanceTelemetry == performanceTelemetry)&&(identical(other.preserveMetadata, preserveMetadata) || other.preserveMetadata == preserveMetadata)&&(identical(other.autoWipeTempCache, autoWipeTempCache) || other.autoWipeTempCache == autoWipeTempCache)&&(identical(other.saveChatHistory, saveChatHistory) || other.saveChatHistory == saveChatHistory));
}


@override
int get hashCode {
    return Object.hash(runtimeType,crashReports,performanceTelemetry,preserveMetadata,autoWipeTempCache,saveChatHistory);
}

@override
String toString() {
    return 'PrivacySettings(crashReports: $crashReports, performanceTelemetry: $performanceTelemetry, preserveMetadata: $preserveMetadata, autoWipeTempCache: $autoWipeTempCache, saveChatHistory: $saveChatHistory)';
}


}

/// @nodoc
abstract mixin class _$PrivacySettingsCopyWith<$Res> implements $PrivacySettingsCopyWith<$Res> {
  factory _$PrivacySettingsCopyWith(_PrivacySettings value, $Res Function(_PrivacySettings) _then) = __$PrivacySettingsCopyWithImpl;
@override @useResult
$Res call({
 bool crashReports, bool performanceTelemetry, bool preserveMetadata, bool autoWipeTempCache, bool saveChatHistory
});




}
/// @nodoc
class __$PrivacySettingsCopyWithImpl<$Res>
    implements _$PrivacySettingsCopyWith<$Res> {
  __$PrivacySettingsCopyWithImpl(this._self, this._then);

  final _PrivacySettings _self;
  final $Res Function(_PrivacySettings) _then;

/// Create a copy of PrivacySettings
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? crashReports = null,Object? performanceTelemetry = null,Object? preserveMetadata = null,Object? autoWipeTempCache = null,Object? saveChatHistory = null,}) {
  return _then(_PrivacySettings(
crashReports: null == crashReports ? _self.crashReports : crashReports // ignore: cast_nullable_to_non_nullable
as bool,performanceTelemetry: null == performanceTelemetry ? _self.performanceTelemetry : performanceTelemetry // ignore: cast_nullable_to_non_nullable
as bool,preserveMetadata: null == preserveMetadata ? _self.preserveMetadata : preserveMetadata // ignore: cast_nullable_to_non_nullable
as bool,autoWipeTempCache: null == autoWipeTempCache ? _self.autoWipeTempCache : autoWipeTempCache // ignore: cast_nullable_to_non_nullable
as bool,saveChatHistory: null == saveChatHistory ? _self.saveChatHistory : saveChatHistory // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
