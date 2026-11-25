// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'language_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LanguageSettings {

 String? get localeCode;
/// Create a copy of LanguageSettings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LanguageSettingsCopyWith<LanguageSettings> get copyWith => _$LanguageSettingsCopyWithImpl<LanguageSettings>(this as LanguageSettings, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as LanguageSettings;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LanguageSettings&&(identical(other.localeCode, _this.localeCode) || other.localeCode == _this.localeCode));
}


@override
int get hashCode {
  final _this = this as LanguageSettings;
  return Object.hash(runtimeType,_this.localeCode);
}

@override
String toString() {
  final _this = this as LanguageSettings;
  return 'LanguageSettings(localeCode: ${_this.localeCode})';
}


}

/// @nodoc
abstract mixin class $LanguageSettingsCopyWith<$Res>  {
  factory $LanguageSettingsCopyWith(LanguageSettings value, $Res Function(LanguageSettings) _then) = _$LanguageSettingsCopyWithImpl;
@useResult
$Res call({
 String? localeCode
});




}
/// @nodoc
class _$LanguageSettingsCopyWithImpl<$Res>
    implements $LanguageSettingsCopyWith<$Res> {
  _$LanguageSettingsCopyWithImpl(this._self, this._then);

  final LanguageSettings _self;
  final $Res Function(LanguageSettings) _then;

/// Create a copy of LanguageSettings
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? localeCode = freezed,}) {
  return _then(LanguageSettings(
localeCode: freezed == localeCode ? _self.localeCode : localeCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [LanguageSettings].
extension LanguageSettingsPatterns on LanguageSettings {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LanguageSettings value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LanguageSettings() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LanguageSettings value)  $default,){
final _that = this;
switch (_that) {
case _LanguageSettings():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LanguageSettings value)?  $default,){
final _that = this;
switch (_that) {
case _LanguageSettings() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? localeCode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LanguageSettings() when $default != null:
return $default(_that.localeCode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? localeCode)  $default,) {final _that = this;
switch (_that) {
case _LanguageSettings():
return $default(_that.localeCode);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? localeCode)?  $default,) {final _that = this;
switch (_that) {
case _LanguageSettings() when $default != null:
return $default(_that.localeCode);case _:
  return null;

}
}

}

/// @nodoc


class _LanguageSettings implements LanguageSettings {
  const _LanguageSettings({this.localeCode});
  

@override final  String? localeCode;

/// Create a copy of LanguageSettings
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LanguageSettingsCopyWith<_LanguageSettings> get copyWith => __$LanguageSettingsCopyWithImpl<_LanguageSettings>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _LanguageSettings&&(identical(other.localeCode, localeCode) || other.localeCode == localeCode));
}


@override
int get hashCode {
    return Object.hash(runtimeType,localeCode);
}

@override
String toString() {
    return 'LanguageSettings(localeCode: $localeCode)';
}


}

/// @nodoc
abstract mixin class _$LanguageSettingsCopyWith<$Res> implements $LanguageSettingsCopyWith<$Res> {
  factory _$LanguageSettingsCopyWith(_LanguageSettings value, $Res Function(_LanguageSettings) _then) = __$LanguageSettingsCopyWithImpl;
@override @useResult
$Res call({
 String? localeCode
});




}
/// @nodoc
class __$LanguageSettingsCopyWithImpl<$Res>
    implements _$LanguageSettingsCopyWith<$Res> {
  __$LanguageSettingsCopyWithImpl(this._self, this._then);

  final _LanguageSettings _self;
  final $Res Function(_LanguageSettings) _then;

/// Create a copy of LanguageSettings
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? localeCode = freezed,}) {
  return _then(_LanguageSettings(
localeCode: freezed == localeCode ? _self.localeCode : localeCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
