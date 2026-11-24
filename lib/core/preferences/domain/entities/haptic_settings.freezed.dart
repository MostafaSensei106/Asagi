// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'haptic_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HapticSettings {

 bool get buttons; bool get selections; bool get gestures; bool get success; bool get errors;
/// Create a copy of HapticSettings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HapticSettingsCopyWith<HapticSettings> get copyWith => _$HapticSettingsCopyWithImpl<HapticSettings>(this as HapticSettings, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as HapticSettings;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HapticSettings&&(identical(other.buttons, _this.buttons) || other.buttons == _this.buttons)&&(identical(other.selections, _this.selections) || other.selections == _this.selections)&&(identical(other.gestures, _this.gestures) || other.gestures == _this.gestures)&&(identical(other.success, _this.success) || other.success == _this.success)&&(identical(other.errors, _this.errors) || other.errors == _this.errors));
}


@override
int get hashCode {
  final _this = this as HapticSettings;
  return Object.hash(runtimeType,_this.buttons,_this.selections,_this.gestures,_this.success,_this.errors);
}

@override
String toString() {
  final _this = this as HapticSettings;
  return 'HapticSettings(buttons: ${_this.buttons}, selections: ${_this.selections}, gestures: ${_this.gestures}, success: ${_this.success}, errors: ${_this.errors})';
}


}

/// @nodoc
abstract mixin class $HapticSettingsCopyWith<$Res>  {
  factory $HapticSettingsCopyWith(HapticSettings value, $Res Function(HapticSettings) _then) = _$HapticSettingsCopyWithImpl;
@useResult
$Res call({
 bool buttons, bool selections, bool gestures, bool success, bool errors
});




}
/// @nodoc
class _$HapticSettingsCopyWithImpl<$Res>
    implements $HapticSettingsCopyWith<$Res> {
  _$HapticSettingsCopyWithImpl(this._self, this._then);

  final HapticSettings _self;
  final $Res Function(HapticSettings) _then;

/// Create a copy of HapticSettings
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? buttons = null,Object? selections = null,Object? gestures = null,Object? success = null,Object? errors = null,}) {
  return _then(HapticSettings(
buttons: null == buttons ? _self.buttons : buttons // ignore: cast_nullable_to_non_nullable
as bool,selections: null == selections ? _self.selections : selections // ignore: cast_nullable_to_non_nullable
as bool,gestures: null == gestures ? _self.gestures : gestures // ignore: cast_nullable_to_non_nullable
as bool,success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,errors: null == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [HapticSettings].
extension HapticSettingsPatterns on HapticSettings {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HapticSettings value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HapticSettings() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HapticSettings value)  $default,){
final _that = this;
switch (_that) {
case _HapticSettings():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HapticSettings value)?  $default,){
final _that = this;
switch (_that) {
case _HapticSettings() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool buttons,  bool selections,  bool gestures,  bool success,  bool errors)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HapticSettings() when $default != null:
return $default(_that.buttons,_that.selections,_that.gestures,_that.success,_that.errors);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool buttons,  bool selections,  bool gestures,  bool success,  bool errors)  $default,) {final _that = this;
switch (_that) {
case _HapticSettings():
return $default(_that.buttons,_that.selections,_that.gestures,_that.success,_that.errors);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool buttons,  bool selections,  bool gestures,  bool success,  bool errors)?  $default,) {final _that = this;
switch (_that) {
case _HapticSettings() when $default != null:
return $default(_that.buttons,_that.selections,_that.gestures,_that.success,_that.errors);case _:
  return null;

}
}

}

/// @nodoc


class _HapticSettings implements HapticSettings {
  const _HapticSettings({this.buttons = true, this.selections = true, this.gestures = true, this.success = true, this.errors = true});
  

@override@JsonKey() final  bool buttons;
@override@JsonKey() final  bool selections;
@override@JsonKey() final  bool gestures;
@override@JsonKey() final  bool success;
@override@JsonKey() final  bool errors;

/// Create a copy of HapticSettings
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HapticSettingsCopyWith<_HapticSettings> get copyWith => __$HapticSettingsCopyWithImpl<_HapticSettings>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _HapticSettings&&(identical(other.buttons, buttons) || other.buttons == buttons)&&(identical(other.selections, selections) || other.selections == selections)&&(identical(other.gestures, gestures) || other.gestures == gestures)&&(identical(other.success, success) || other.success == success)&&(identical(other.errors, errors) || other.errors == errors));
}


@override
int get hashCode {
    return Object.hash(runtimeType,buttons,selections,gestures,success,errors);
}

@override
String toString() {
    return 'HapticSettings(buttons: $buttons, selections: $selections, gestures: $gestures, success: $success, errors: $errors)';
}


}

/// @nodoc
abstract mixin class _$HapticSettingsCopyWith<$Res> implements $HapticSettingsCopyWith<$Res> {
  factory _$HapticSettingsCopyWith(_HapticSettings value, $Res Function(_HapticSettings) _then) = __$HapticSettingsCopyWithImpl;
@override @useResult
$Res call({
 bool buttons, bool selections, bool gestures, bool success, bool errors
});




}
/// @nodoc
class __$HapticSettingsCopyWithImpl<$Res>
    implements _$HapticSettingsCopyWith<$Res> {
  __$HapticSettingsCopyWithImpl(this._self, this._then);

  final _HapticSettings _self;
  final $Res Function(_HapticSettings) _then;

/// Create a copy of HapticSettings
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? buttons = null,Object? selections = null,Object? gestures = null,Object? success = null,Object? errors = null,}) {
  return _then(_HapticSettings(
buttons: null == buttons ? _self.buttons : buttons // ignore: cast_nullable_to_non_nullable
as bool,selections: null == selections ? _self.selections : selections // ignore: cast_nullable_to_non_nullable
as bool,gestures: null == gestures ? _self.gestures : gestures // ignore: cast_nullable_to_non_nullable
as bool,success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,errors: null == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
