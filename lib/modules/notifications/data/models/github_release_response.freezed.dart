// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'github_release_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GitHubReleaseResponse {

 int get id;@JsonKey(name: 'tag_name') String get tagName;@JsonKey(name: 'html_url') String get htmlUrl; String? get name; String? get body;@JsonKey(name: 'published_at') DateTime? get publishedAt; bool get draft; bool get prerelease;
/// Create a copy of GitHubReleaseResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GitHubReleaseResponseCopyWith<GitHubReleaseResponse> get copyWith => _$GitHubReleaseResponseCopyWithImpl<GitHubReleaseResponse>(this as GitHubReleaseResponse, _$identity);

  /// Serializes this GitHubReleaseResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as GitHubReleaseResponse;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GitHubReleaseResponse&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.tagName, _this.tagName) || other.tagName == _this.tagName)&&(identical(other.htmlUrl, _this.htmlUrl) || other.htmlUrl == _this.htmlUrl)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.body, _this.body) || other.body == _this.body)&&(identical(other.publishedAt, _this.publishedAt) || other.publishedAt == _this.publishedAt)&&(identical(other.draft, _this.draft) || other.draft == _this.draft)&&(identical(other.prerelease, _this.prerelease) || other.prerelease == _this.prerelease));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as GitHubReleaseResponse;
  return Object.hash(runtimeType,_this.id,_this.tagName,_this.htmlUrl,_this.name,_this.body,_this.publishedAt,_this.draft,_this.prerelease);
}

@override
String toString() {
  final _this = this as GitHubReleaseResponse;
  return 'GitHubReleaseResponse(id: ${_this.id}, tagName: ${_this.tagName}, htmlUrl: ${_this.htmlUrl}, name: ${_this.name}, body: ${_this.body}, publishedAt: ${_this.publishedAt}, draft: ${_this.draft}, prerelease: ${_this.prerelease})';
}


}

/// @nodoc
abstract mixin class $GitHubReleaseResponseCopyWith<$Res>  {
  factory $GitHubReleaseResponseCopyWith(GitHubReleaseResponse value, $Res Function(GitHubReleaseResponse) _then) = _$GitHubReleaseResponseCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'tag_name') String tagName,@JsonKey(name: 'html_url') String htmlUrl, String? name, String? body,@JsonKey(name: 'published_at') DateTime? publishedAt, bool draft, bool prerelease
});




}
/// @nodoc
class _$GitHubReleaseResponseCopyWithImpl<$Res>
    implements $GitHubReleaseResponseCopyWith<$Res> {
  _$GitHubReleaseResponseCopyWithImpl(this._self, this._then);

  final GitHubReleaseResponse _self;
  final $Res Function(GitHubReleaseResponse) _then;

/// Create a copy of GitHubReleaseResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? tagName = null,Object? htmlUrl = null,Object? name = freezed,Object? body = freezed,Object? publishedAt = freezed,Object? draft = null,Object? prerelease = null,}) {
  return _then(GitHubReleaseResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,tagName: null == tagName ? _self.tagName : tagName // ignore: cast_nullable_to_non_nullable
as String,htmlUrl: null == htmlUrl ? _self.htmlUrl : htmlUrl // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,body: freezed == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String?,publishedAt: freezed == publishedAt ? _self.publishedAt : publishedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,draft: null == draft ? _self.draft : draft // ignore: cast_nullable_to_non_nullable
as bool,prerelease: null == prerelease ? _self.prerelease : prerelease // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [GitHubReleaseResponse].
extension GitHubReleaseResponsePatterns on GitHubReleaseResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GitHubReleaseResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GitHubReleaseResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GitHubReleaseResponse value)  $default,){
final _that = this;
switch (_that) {
case _GitHubReleaseResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GitHubReleaseResponse value)?  $default,){
final _that = this;
switch (_that) {
case _GitHubReleaseResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'tag_name')  String tagName, @JsonKey(name: 'html_url')  String htmlUrl,  String? name,  String? body, @JsonKey(name: 'published_at')  DateTime? publishedAt,  bool draft,  bool prerelease)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GitHubReleaseResponse() when $default != null:
return $default(_that.id,_that.tagName,_that.htmlUrl,_that.name,_that.body,_that.publishedAt,_that.draft,_that.prerelease);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'tag_name')  String tagName, @JsonKey(name: 'html_url')  String htmlUrl,  String? name,  String? body, @JsonKey(name: 'published_at')  DateTime? publishedAt,  bool draft,  bool prerelease)  $default,) {final _that = this;
switch (_that) {
case _GitHubReleaseResponse():
return $default(_that.id,_that.tagName,_that.htmlUrl,_that.name,_that.body,_that.publishedAt,_that.draft,_that.prerelease);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id, @JsonKey(name: 'tag_name')  String tagName, @JsonKey(name: 'html_url')  String htmlUrl,  String? name,  String? body, @JsonKey(name: 'published_at')  DateTime? publishedAt,  bool draft,  bool prerelease)?  $default,) {final _that = this;
switch (_that) {
case _GitHubReleaseResponse() when $default != null:
return $default(_that.id,_that.tagName,_that.htmlUrl,_that.name,_that.body,_that.publishedAt,_that.draft,_that.prerelease);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GitHubReleaseResponse implements GitHubReleaseResponse {
  const _GitHubReleaseResponse({required this.id, @JsonKey(name: 'tag_name') required this.tagName, @JsonKey(name: 'html_url') required this.htmlUrl, this.name, this.body, @JsonKey(name: 'published_at') this.publishedAt, this.draft = false, this.prerelease = false});
  factory _GitHubReleaseResponse.fromJson(Map<String, dynamic> json) => _$GitHubReleaseResponseFromJson(json);

@override final  int id;
@override@JsonKey(name: 'tag_name') final  String tagName;
@override@JsonKey(name: 'html_url') final  String htmlUrl;
@override final  String? name;
@override final  String? body;
@override@JsonKey(name: 'published_at') final  DateTime? publishedAt;
@override@JsonKey() final  bool draft;
@override@JsonKey() final  bool prerelease;

/// Create a copy of GitHubReleaseResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GitHubReleaseResponseCopyWith<_GitHubReleaseResponse> get copyWith => __$GitHubReleaseResponseCopyWithImpl<_GitHubReleaseResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GitHubReleaseResponseToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _GitHubReleaseResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.tagName, tagName) || other.tagName == tagName)&&(identical(other.htmlUrl, htmlUrl) || other.htmlUrl == htmlUrl)&&(identical(other.name, name) || other.name == name)&&(identical(other.body, body) || other.body == body)&&(identical(other.publishedAt, publishedAt) || other.publishedAt == publishedAt)&&(identical(other.draft, draft) || other.draft == draft)&&(identical(other.prerelease, prerelease) || other.prerelease == prerelease));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,tagName,htmlUrl,name,body,publishedAt,draft,prerelease);
}

@override
String toString() {
    return 'GitHubReleaseResponse(id: $id, tagName: $tagName, htmlUrl: $htmlUrl, name: $name, body: $body, publishedAt: $publishedAt, draft: $draft, prerelease: $prerelease)';
}


}

/// @nodoc
abstract mixin class _$GitHubReleaseResponseCopyWith<$Res> implements $GitHubReleaseResponseCopyWith<$Res> {
  factory _$GitHubReleaseResponseCopyWith(_GitHubReleaseResponse value, $Res Function(_GitHubReleaseResponse) _then) = __$GitHubReleaseResponseCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'tag_name') String tagName,@JsonKey(name: 'html_url') String htmlUrl, String? name, String? body,@JsonKey(name: 'published_at') DateTime? publishedAt, bool draft, bool prerelease
});




}
/// @nodoc
class __$GitHubReleaseResponseCopyWithImpl<$Res>
    implements _$GitHubReleaseResponseCopyWith<$Res> {
  __$GitHubReleaseResponseCopyWithImpl(this._self, this._then);

  final _GitHubReleaseResponse _self;
  final $Res Function(_GitHubReleaseResponse) _then;

/// Create a copy of GitHubReleaseResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? tagName = null,Object? htmlUrl = null,Object? name = freezed,Object? body = freezed,Object? publishedAt = freezed,Object? draft = null,Object? prerelease = null,}) {
  return _then(_GitHubReleaseResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,tagName: null == tagName ? _self.tagName : tagName // ignore: cast_nullable_to_non_nullable
as String,htmlUrl: null == htmlUrl ? _self.htmlUrl : htmlUrl // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,body: freezed == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String?,publishedAt: freezed == publishedAt ? _self.publishedAt : publishedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,draft: null == draft ? _self.draft : draft // ignore: cast_nullable_to_non_nullable
as bool,prerelease: null == prerelease ? _self.prerelease : prerelease // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
