// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'open_source_license_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OpenSourceLicenseInfo {

 String? get license; String? get version; String? get linkage; String? get sourceUrl; List<String> get builtAbis; String get licenseText;
/// Create a copy of OpenSourceLicenseInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OpenSourceLicenseInfoCopyWith<OpenSourceLicenseInfo> get copyWith => _$OpenSourceLicenseInfoCopyWithImpl<OpenSourceLicenseInfo>(this as OpenSourceLicenseInfo, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as OpenSourceLicenseInfo;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OpenSourceLicenseInfo&&(identical(other.license, _this.license) || other.license == _this.license)&&(identical(other.version, _this.version) || other.version == _this.version)&&(identical(other.linkage, _this.linkage) || other.linkage == _this.linkage)&&(identical(other.sourceUrl, _this.sourceUrl) || other.sourceUrl == _this.sourceUrl)&&const DeepCollectionEquality().equals(other.builtAbis, _this.builtAbis)&&(identical(other.licenseText, _this.licenseText) || other.licenseText == _this.licenseText));
}


@override
int get hashCode {
  final _this = this as OpenSourceLicenseInfo;
  return Object.hash(runtimeType,_this.license,_this.version,_this.linkage,_this.sourceUrl,const DeepCollectionEquality().hash(_this.builtAbis),_this.licenseText);
}

@override
String toString() {
  final _this = this as OpenSourceLicenseInfo;
  return 'OpenSourceLicenseInfo(license: ${_this.license}, version: ${_this.version}, linkage: ${_this.linkage}, sourceUrl: ${_this.sourceUrl}, builtAbis: ${_this.builtAbis}, licenseText: ${_this.licenseText})';
}


}

/// @nodoc
abstract mixin class $OpenSourceLicenseInfoCopyWith<$Res>  {
  factory $OpenSourceLicenseInfoCopyWith(OpenSourceLicenseInfo value, $Res Function(OpenSourceLicenseInfo) _then) = _$OpenSourceLicenseInfoCopyWithImpl;
@useResult
$Res call({
 String? license, String? version, String? linkage, String? sourceUrl, List<String> builtAbis, String licenseText
});




}
/// @nodoc
class _$OpenSourceLicenseInfoCopyWithImpl<$Res>
    implements $OpenSourceLicenseInfoCopyWith<$Res> {
  _$OpenSourceLicenseInfoCopyWithImpl(this._self, this._then);

  final OpenSourceLicenseInfo _self;
  final $Res Function(OpenSourceLicenseInfo) _then;

/// Create a copy of OpenSourceLicenseInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? license = freezed,Object? version = freezed,Object? linkage = freezed,Object? sourceUrl = freezed,Object? builtAbis = null,Object? licenseText = null,}) {
  return _then(OpenSourceLicenseInfo(
license: freezed == license ? _self.license : license // ignore: cast_nullable_to_non_nullable
as String?,version: freezed == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String?,linkage: freezed == linkage ? _self.linkage : linkage // ignore: cast_nullable_to_non_nullable
as String?,sourceUrl: freezed == sourceUrl ? _self.sourceUrl : sourceUrl // ignore: cast_nullable_to_non_nullable
as String?,builtAbis: null == builtAbis ? _self.builtAbis : builtAbis // ignore: cast_nullable_to_non_nullable
as List<String>,licenseText: null == licenseText ? _self.licenseText : licenseText // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [OpenSourceLicenseInfo].
extension OpenSourceLicenseInfoPatterns on OpenSourceLicenseInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OpenSourceLicenseInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OpenSourceLicenseInfo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OpenSourceLicenseInfo value)  $default,){
final _that = this;
switch (_that) {
case _OpenSourceLicenseInfo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OpenSourceLicenseInfo value)?  $default,){
final _that = this;
switch (_that) {
case _OpenSourceLicenseInfo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? license,  String? version,  String? linkage,  String? sourceUrl,  List<String> builtAbis,  String licenseText)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OpenSourceLicenseInfo() when $default != null:
return $default(_that.license,_that.version,_that.linkage,_that.sourceUrl,_that.builtAbis,_that.licenseText);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? license,  String? version,  String? linkage,  String? sourceUrl,  List<String> builtAbis,  String licenseText)  $default,) {final _that = this;
switch (_that) {
case _OpenSourceLicenseInfo():
return $default(_that.license,_that.version,_that.linkage,_that.sourceUrl,_that.builtAbis,_that.licenseText);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? license,  String? version,  String? linkage,  String? sourceUrl,  List<String> builtAbis,  String licenseText)?  $default,) {final _that = this;
switch (_that) {
case _OpenSourceLicenseInfo() when $default != null:
return $default(_that.license,_that.version,_that.linkage,_that.sourceUrl,_that.builtAbis,_that.licenseText);case _:
  return null;

}
}

}

/// @nodoc


class _OpenSourceLicenseInfo implements OpenSourceLicenseInfo {
  const _OpenSourceLicenseInfo({required this.license, required this.version, required this.linkage, required this.sourceUrl, required  List<String> builtAbis, required this.licenseText}): _builtAbis = builtAbis;
  

@override final  String? license;
@override final  String? version;
@override final  String? linkage;
@override final  String? sourceUrl;
 final  List<String> _builtAbis;
@override List<String> get builtAbis {
  if (_builtAbis is EqualUnmodifiableListView) return _builtAbis;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_builtAbis);
}

@override final  String licenseText;

/// Create a copy of OpenSourceLicenseInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OpenSourceLicenseInfoCopyWith<_OpenSourceLicenseInfo> get copyWith => __$OpenSourceLicenseInfoCopyWithImpl<_OpenSourceLicenseInfo>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _OpenSourceLicenseInfo&&(identical(other.license, license) || other.license == license)&&(identical(other.version, version) || other.version == version)&&(identical(other.linkage, linkage) || other.linkage == linkage)&&(identical(other.sourceUrl, sourceUrl) || other.sourceUrl == sourceUrl)&&const DeepCollectionEquality().equals(other.builtAbis, _builtAbis)&&(identical(other.licenseText, licenseText) || other.licenseText == licenseText));
}


@override
int get hashCode {
    return Object.hash(runtimeType,license,version,linkage,sourceUrl,const DeepCollectionEquality().hash(_builtAbis),licenseText);
}

@override
String toString() {
    return 'OpenSourceLicenseInfo(license: $license, version: $version, linkage: $linkage, sourceUrl: $sourceUrl, builtAbis: $builtAbis, licenseText: $licenseText)';
}


}

/// @nodoc
abstract mixin class _$OpenSourceLicenseInfoCopyWith<$Res> implements $OpenSourceLicenseInfoCopyWith<$Res> {
  factory _$OpenSourceLicenseInfoCopyWith(_OpenSourceLicenseInfo value, $Res Function(_OpenSourceLicenseInfo) _then) = __$OpenSourceLicenseInfoCopyWithImpl;
@override @useResult
$Res call({
 String? license, String? version, String? linkage, String? sourceUrl, List<String> builtAbis, String licenseText
});




}
/// @nodoc
class __$OpenSourceLicenseInfoCopyWithImpl<$Res>
    implements _$OpenSourceLicenseInfoCopyWith<$Res> {
  __$OpenSourceLicenseInfoCopyWithImpl(this._self, this._then);

  final _OpenSourceLicenseInfo _self;
  final $Res Function(_OpenSourceLicenseInfo) _then;

/// Create a copy of OpenSourceLicenseInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? license = freezed,Object? version = freezed,Object? linkage = freezed,Object? sourceUrl = freezed,Object? builtAbis = null,Object? licenseText = null,}) {
  return _then(_OpenSourceLicenseInfo(
license: freezed == license ? _self.license : license // ignore: cast_nullable_to_non_nullable
as String?,version: freezed == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String?,linkage: freezed == linkage ? _self.linkage : linkage // ignore: cast_nullable_to_non_nullable
as String?,sourceUrl: freezed == sourceUrl ? _self.sourceUrl : sourceUrl // ignore: cast_nullable_to_non_nullable
as String?,builtAbis: null == builtAbis ? _self._builtAbis : builtAbis // ignore: cast_nullable_to_non_nullable
as List<String>,licenseText: null == licenseText ? _self.licenseText : licenseText // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
