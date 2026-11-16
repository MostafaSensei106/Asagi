// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'storage_settings_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$StorageSettingsState {

 List<String> get jobIds; bool get isLoading; bool get isCleaning; bool get error;
/// Create a copy of StorageSettingsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StorageSettingsStateCopyWith<StorageSettingsState> get copyWith => _$StorageSettingsStateCopyWithImpl<StorageSettingsState>(this as StorageSettingsState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as StorageSettingsState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StorageSettingsState&&const DeepCollectionEquality().equals(other.jobIds, _this.jobIds)&&(identical(other.isLoading, _this.isLoading) || other.isLoading == _this.isLoading)&&(identical(other.isCleaning, _this.isCleaning) || other.isCleaning == _this.isCleaning)&&(identical(other.error, _this.error) || other.error == _this.error));
}


@override
int get hashCode {
  final _this = this as StorageSettingsState;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.jobIds),_this.isLoading,_this.isCleaning,_this.error);
}

@override
String toString() {
  final _this = this as StorageSettingsState;
  return 'StorageSettingsState(jobIds: ${_this.jobIds}, isLoading: ${_this.isLoading}, isCleaning: ${_this.isCleaning}, error: ${_this.error})';
}


}

/// @nodoc
abstract mixin class $StorageSettingsStateCopyWith<$Res>  {
  factory $StorageSettingsStateCopyWith(StorageSettingsState value, $Res Function(StorageSettingsState) _then) = _$StorageSettingsStateCopyWithImpl;
@useResult
$Res call({
 List<String> jobIds, bool isLoading, bool isCleaning, bool error
});




}
/// @nodoc
class _$StorageSettingsStateCopyWithImpl<$Res>
    implements $StorageSettingsStateCopyWith<$Res> {
  _$StorageSettingsStateCopyWithImpl(this._self, this._then);

  final StorageSettingsState _self;
  final $Res Function(StorageSettingsState) _then;

/// Create a copy of StorageSettingsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? jobIds = null,Object? isLoading = null,Object? isCleaning = null,Object? error = null,}) {
  return _then(StorageSettingsState(
jobIds: null == jobIds ? _self.jobIds : jobIds // ignore: cast_nullable_to_non_nullable
as List<String>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isCleaning: null == isCleaning ? _self.isCleaning : isCleaning // ignore: cast_nullable_to_non_nullable
as bool,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [StorageSettingsState].
extension StorageSettingsStatePatterns on StorageSettingsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StorageSettingsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StorageSettingsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StorageSettingsState value)  $default,){
final _that = this;
switch (_that) {
case _StorageSettingsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StorageSettingsState value)?  $default,){
final _that = this;
switch (_that) {
case _StorageSettingsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<String> jobIds,  bool isLoading,  bool isCleaning,  bool error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StorageSettingsState() when $default != null:
return $default(_that.jobIds,_that.isLoading,_that.isCleaning,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<String> jobIds,  bool isLoading,  bool isCleaning,  bool error)  $default,) {final _that = this;
switch (_that) {
case _StorageSettingsState():
return $default(_that.jobIds,_that.isLoading,_that.isCleaning,_that.error);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<String> jobIds,  bool isLoading,  bool isCleaning,  bool error)?  $default,) {final _that = this;
switch (_that) {
case _StorageSettingsState() when $default != null:
return $default(_that.jobIds,_that.isLoading,_that.isCleaning,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _StorageSettingsState implements StorageSettingsState {
  const _StorageSettingsState({ List<String> jobIds = const <String>[], this.isLoading = false, this.isCleaning = false, this.error = false}): _jobIds = jobIds;
  

 final  List<String> _jobIds;
@override@JsonKey() List<String> get jobIds {
  if (_jobIds is EqualUnmodifiableListView) return _jobIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_jobIds);
}

@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isCleaning;
@override@JsonKey() final  bool error;

/// Create a copy of StorageSettingsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StorageSettingsStateCopyWith<_StorageSettingsState> get copyWith => __$StorageSettingsStateCopyWithImpl<_StorageSettingsState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _StorageSettingsState&&const DeepCollectionEquality().equals(other.jobIds, _jobIds)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isCleaning, isCleaning) || other.isCleaning == isCleaning)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_jobIds),isLoading,isCleaning,error);
}

@override
String toString() {
    return 'StorageSettingsState(jobIds: $jobIds, isLoading: $isLoading, isCleaning: $isCleaning, error: $error)';
}


}

/// @nodoc
abstract mixin class _$StorageSettingsStateCopyWith<$Res> implements $StorageSettingsStateCopyWith<$Res> {
  factory _$StorageSettingsStateCopyWith(_StorageSettingsState value, $Res Function(_StorageSettingsState) _then) = __$StorageSettingsStateCopyWithImpl;
@override @useResult
$Res call({
 List<String> jobIds, bool isLoading, bool isCleaning, bool error
});




}
/// @nodoc
class __$StorageSettingsStateCopyWithImpl<$Res>
    implements _$StorageSettingsStateCopyWith<$Res> {
  __$StorageSettingsStateCopyWithImpl(this._self, this._then);

  final _StorageSettingsState _self;
  final $Res Function(_StorageSettingsState) _then;

/// Create a copy of StorageSettingsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? jobIds = null,Object? isLoading = null,Object? isCleaning = null,Object? error = null,}) {
  return _then(_StorageSettingsState(
jobIds: null == jobIds ? _self._jobIds : jobIds // ignore: cast_nullable_to_non_nullable
as List<String>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isCleaning: null == isCleaning ? _self.isCleaning : isCleaning // ignore: cast_nullable_to_non_nullable
as bool,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
