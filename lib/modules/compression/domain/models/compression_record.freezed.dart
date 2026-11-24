// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'compression_record.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CompressionRecord {

 String get path; String get sourceName; int get bytes; DateTime get createdAt; String get id; String? get warning; int get originalBytes; double get targetMb; int get width; int get height; int get attempts;
/// Create a copy of CompressionRecord
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CompressionRecordCopyWith<CompressionRecord> get copyWith => _$CompressionRecordCopyWithImpl<CompressionRecord>(this as CompressionRecord, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as CompressionRecord;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CompressionRecord&&(identical(other.path, _this.path) || other.path == _this.path)&&(identical(other.sourceName, _this.sourceName) || other.sourceName == _this.sourceName)&&(identical(other.bytes, _this.bytes) || other.bytes == _this.bytes)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt)&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.warning, _this.warning) || other.warning == _this.warning)&&(identical(other.originalBytes, _this.originalBytes) || other.originalBytes == _this.originalBytes)&&(identical(other.targetMb, _this.targetMb) || other.targetMb == _this.targetMb)&&(identical(other.width, _this.width) || other.width == _this.width)&&(identical(other.height, _this.height) || other.height == _this.height)&&(identical(other.attempts, _this.attempts) || other.attempts == _this.attempts));
}


@override
int get hashCode {
  final _this = this as CompressionRecord;
  return Object.hash(runtimeType,_this.path,_this.sourceName,_this.bytes,_this.createdAt,_this.id,_this.warning,_this.originalBytes,_this.targetMb,_this.width,_this.height,_this.attempts);
}

@override
String toString() {
  final _this = this as CompressionRecord;
  return 'CompressionRecord(path: ${_this.path}, sourceName: ${_this.sourceName}, bytes: ${_this.bytes}, createdAt: ${_this.createdAt}, id: ${_this.id}, warning: ${_this.warning}, originalBytes: ${_this.originalBytes}, targetMb: ${_this.targetMb}, width: ${_this.width}, height: ${_this.height}, attempts: ${_this.attempts})';
}


}

/// @nodoc
abstract mixin class $CompressionRecordCopyWith<$Res>  {
  factory $CompressionRecordCopyWith(CompressionRecord value, $Res Function(CompressionRecord) _then) = _$CompressionRecordCopyWithImpl;
@useResult
$Res call({
 String path, String sourceName, int bytes, DateTime createdAt, String id, String? warning, int originalBytes, double targetMb, int width, int height, int attempts
});




}
/// @nodoc
class _$CompressionRecordCopyWithImpl<$Res>
    implements $CompressionRecordCopyWith<$Res> {
  _$CompressionRecordCopyWithImpl(this._self, this._then);

  final CompressionRecord _self;
  final $Res Function(CompressionRecord) _then;

/// Create a copy of CompressionRecord
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? path = null,Object? sourceName = null,Object? bytes = null,Object? createdAt = null,Object? id = null,Object? warning = freezed,Object? originalBytes = null,Object? targetMb = null,Object? width = null,Object? height = null,Object? attempts = null,}) {
  return _then(CompressionRecord(
path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,sourceName: null == sourceName ? _self.sourceName : sourceName // ignore: cast_nullable_to_non_nullable
as String,bytes: null == bytes ? _self.bytes : bytes // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,warning: freezed == warning ? _self.warning : warning // ignore: cast_nullable_to_non_nullable
as String?,originalBytes: null == originalBytes ? _self.originalBytes : originalBytes // ignore: cast_nullable_to_non_nullable
as int,targetMb: null == targetMb ? _self.targetMb : targetMb // ignore: cast_nullable_to_non_nullable
as double,width: null == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as int,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int,attempts: null == attempts ? _self.attempts : attempts // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [CompressionRecord].
extension CompressionRecordPatterns on CompressionRecord {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CompressionRecord value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CompressionRecord() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CompressionRecord value)  $default,){
final _that = this;
switch (_that) {
case _CompressionRecord():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CompressionRecord value)?  $default,){
final _that = this;
switch (_that) {
case _CompressionRecord() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String path,  String sourceName,  int bytes,  DateTime createdAt,  String id,  String? warning,  int originalBytes,  double targetMb,  int width,  int height,  int attempts)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CompressionRecord() when $default != null:
return $default(_that.path,_that.sourceName,_that.bytes,_that.createdAt,_that.id,_that.warning,_that.originalBytes,_that.targetMb,_that.width,_that.height,_that.attempts);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String path,  String sourceName,  int bytes,  DateTime createdAt,  String id,  String? warning,  int originalBytes,  double targetMb,  int width,  int height,  int attempts)  $default,) {final _that = this;
switch (_that) {
case _CompressionRecord():
return $default(_that.path,_that.sourceName,_that.bytes,_that.createdAt,_that.id,_that.warning,_that.originalBytes,_that.targetMb,_that.width,_that.height,_that.attempts);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String path,  String sourceName,  int bytes,  DateTime createdAt,  String id,  String? warning,  int originalBytes,  double targetMb,  int width,  int height,  int attempts)?  $default,) {final _that = this;
switch (_that) {
case _CompressionRecord() when $default != null:
return $default(_that.path,_that.sourceName,_that.bytes,_that.createdAt,_that.id,_that.warning,_that.originalBytes,_that.targetMb,_that.width,_that.height,_that.attempts);case _:
  return null;

}
}

}

/// @nodoc


class _CompressionRecord extends CompressionRecord {
  const _CompressionRecord({required this.path, required this.sourceName, required this.bytes, required this.createdAt, this.id = '', this.warning, this.originalBytes = 0, this.targetMb = 0, this.width = 0, this.height = 0, this.attempts = 0}): super._();
  

@override final  String path;
@override final  String sourceName;
@override final  int bytes;
@override final  DateTime createdAt;
@override@JsonKey() final  String id;
@override final  String? warning;
@override@JsonKey() final  int originalBytes;
@override@JsonKey() final  double targetMb;
@override@JsonKey() final  int width;
@override@JsonKey() final  int height;
@override@JsonKey() final  int attempts;

/// Create a copy of CompressionRecord
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CompressionRecordCopyWith<_CompressionRecord> get copyWith => __$CompressionRecordCopyWithImpl<_CompressionRecord>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CompressionRecord&&(identical(other.path, path) || other.path == path)&&(identical(other.sourceName, sourceName) || other.sourceName == sourceName)&&(identical(other.bytes, bytes) || other.bytes == bytes)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.id, id) || other.id == id)&&(identical(other.warning, warning) || other.warning == warning)&&(identical(other.originalBytes, originalBytes) || other.originalBytes == originalBytes)&&(identical(other.targetMb, targetMb) || other.targetMb == targetMb)&&(identical(other.width, width) || other.width == width)&&(identical(other.height, height) || other.height == height)&&(identical(other.attempts, attempts) || other.attempts == attempts));
}


@override
int get hashCode {
    return Object.hash(runtimeType,path,sourceName,bytes,createdAt,id,warning,originalBytes,targetMb,width,height,attempts);
}

@override
String toString() {
    return 'CompressionRecord(path: $path, sourceName: $sourceName, bytes: $bytes, createdAt: $createdAt, id: $id, warning: $warning, originalBytes: $originalBytes, targetMb: $targetMb, width: $width, height: $height, attempts: $attempts)';
}


}

/// @nodoc
abstract mixin class _$CompressionRecordCopyWith<$Res> implements $CompressionRecordCopyWith<$Res> {
  factory _$CompressionRecordCopyWith(_CompressionRecord value, $Res Function(_CompressionRecord) _then) = __$CompressionRecordCopyWithImpl;
@override @useResult
$Res call({
 String path, String sourceName, int bytes, DateTime createdAt, String id, String? warning, int originalBytes, double targetMb, int width, int height, int attempts
});




}
/// @nodoc
class __$CompressionRecordCopyWithImpl<$Res>
    implements _$CompressionRecordCopyWith<$Res> {
  __$CompressionRecordCopyWithImpl(this._self, this._then);

  final _CompressionRecord _self;
  final $Res Function(_CompressionRecord) _then;

/// Create a copy of CompressionRecord
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? path = null,Object? sourceName = null,Object? bytes = null,Object? createdAt = null,Object? id = null,Object? warning = freezed,Object? originalBytes = null,Object? targetMb = null,Object? width = null,Object? height = null,Object? attempts = null,}) {
  return _then(_CompressionRecord(
path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,sourceName: null == sourceName ? _self.sourceName : sourceName // ignore: cast_nullable_to_non_nullable
as String,bytes: null == bytes ? _self.bytes : bytes // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,warning: freezed == warning ? _self.warning : warning // ignore: cast_nullable_to_non_nullable
as String?,originalBytes: null == originalBytes ? _self.originalBytes : originalBytes // ignore: cast_nullable_to_non_nullable
as int,targetMb: null == targetMb ? _self.targetMb : targetMb // ignore: cast_nullable_to_non_nullable
as double,width: null == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as int,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int,attempts: null == attempts ? _self.attempts : attempts // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
