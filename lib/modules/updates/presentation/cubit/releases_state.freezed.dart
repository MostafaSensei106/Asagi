// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'releases_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ReleasesState {

 AppRelease? get release;
/// Create a copy of ReleasesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReleasesStateCopyWith<ReleasesState> get copyWith => _$ReleasesStateCopyWithImpl<ReleasesState>(this as ReleasesState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as ReleasesState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReleasesState&&(identical(other.release, _this.release) || other.release == _this.release));
}


@override
int get hashCode {
  final _this = this as ReleasesState;
  return Object.hash(runtimeType,_this.release);
}

@override
String toString() {
  final _this = this as ReleasesState;
  return 'ReleasesState(release: ${_this.release})';
}


}

/// @nodoc
abstract mixin class $ReleasesStateCopyWith<$Res>  {
  factory $ReleasesStateCopyWith(ReleasesState value, $Res Function(ReleasesState) _then) = _$ReleasesStateCopyWithImpl;
@useResult
$Res call({
 AppRelease? release
});


$AppReleaseCopyWith<$Res>? get release;

}
/// @nodoc
class _$ReleasesStateCopyWithImpl<$Res>
    implements $ReleasesStateCopyWith<$Res> {
  _$ReleasesStateCopyWithImpl(this._self, this._then);

  final ReleasesState _self;
  final $Res Function(ReleasesState) _then;

/// Create a copy of ReleasesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? release = freezed,}) {
  return _then(_self.copyWith(
release: freezed == release ? _self.release : release // ignore: cast_nullable_to_non_nullable
as AppRelease?,
  ));
}
/// Create a copy of ReleasesState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppReleaseCopyWith<$Res>? get release {
    if (_self.release == null) {
    return null;
  }

  return $AppReleaseCopyWith<$Res>(_self.release!, (value) {
    return _then(_self.copyWith(release: value));
  });
}
}


/// Adds pattern-matching-related methods to [ReleasesState].
extension ReleasesStatePatterns on ReleasesState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ReleasesLoading value)?  loading,TResult Function( ReleasesReady value)?  ready,TResult Function( ReleasesFailure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ReleasesLoading() when loading != null:
return loading(_that);case ReleasesReady() when ready != null:
return ready(_that);case ReleasesFailure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ReleasesLoading value)  loading,required TResult Function( ReleasesReady value)  ready,required TResult Function( ReleasesFailure value)  failure,}){
final _that = this;
switch (_that) {
case ReleasesLoading():
return loading(_that);case ReleasesReady():
return ready(_that);case ReleasesFailure():
return failure(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ReleasesLoading value)?  loading,TResult? Function( ReleasesReady value)?  ready,TResult? Function( ReleasesFailure value)?  failure,}){
final _that = this;
switch (_that) {
case ReleasesLoading() when loading != null:
return loading(_that);case ReleasesReady() when ready != null:
return ready(_that);case ReleasesFailure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( AppRelease? release)?  loading,TResult Function( AppRelease? release,  bool updateAvailable)?  ready,TResult Function( AppRelease? release)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ReleasesLoading() when loading != null:
return loading(_that.release);case ReleasesReady() when ready != null:
return ready(_that.release,_that.updateAvailable);case ReleasesFailure() when failure != null:
return failure(_that.release);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( AppRelease? release)  loading,required TResult Function( AppRelease? release,  bool updateAvailable)  ready,required TResult Function( AppRelease? release)  failure,}) {final _that = this;
switch (_that) {
case ReleasesLoading():
return loading(_that.release);case ReleasesReady():
return ready(_that.release,_that.updateAvailable);case ReleasesFailure():
return failure(_that.release);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( AppRelease? release)?  loading,TResult? Function( AppRelease? release,  bool updateAvailable)?  ready,TResult? Function( AppRelease? release)?  failure,}) {final _that = this;
switch (_that) {
case ReleasesLoading() when loading != null:
return loading(_that.release);case ReleasesReady() when ready != null:
return ready(_that.release,_that.updateAvailable);case ReleasesFailure() when failure != null:
return failure(_that.release);case _:
  return null;

}
}

}

/// @nodoc


class ReleasesLoading implements ReleasesState {
  const ReleasesLoading({this.release});
  

@override final  AppRelease? release;

/// Create a copy of ReleasesState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReleasesLoadingCopyWith<ReleasesLoading> get copyWith => _$ReleasesLoadingCopyWithImpl<ReleasesLoading>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is ReleasesLoading&&(identical(other.release, release) || other.release == release));
}


@override
int get hashCode {
    return Object.hash(runtimeType,release);
}

@override
String toString() {
    return 'ReleasesState.loading(release: $release)';
}


}

/// @nodoc
abstract mixin class $ReleasesLoadingCopyWith<$Res> implements $ReleasesStateCopyWith<$Res> {
  factory $ReleasesLoadingCopyWith(ReleasesLoading value, $Res Function(ReleasesLoading) _then) = _$ReleasesLoadingCopyWithImpl;
@override @useResult
$Res call({
 AppRelease? release
});


@override $AppReleaseCopyWith<$Res>? get release;

}
/// @nodoc
class _$ReleasesLoadingCopyWithImpl<$Res>
    implements $ReleasesLoadingCopyWith<$Res> {
  _$ReleasesLoadingCopyWithImpl(this._self, this._then);

  final ReleasesLoading _self;
  final $Res Function(ReleasesLoading) _then;

/// Create a copy of ReleasesState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? release = freezed,}) {
  return _then(ReleasesLoading(
release: freezed == release ? _self.release : release // ignore: cast_nullable_to_non_nullable
as AppRelease?,
  ));
}

/// Create a copy of ReleasesState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppReleaseCopyWith<$Res>? get release {
    if (_self.release == null) {
    return null;
  }

  return $AppReleaseCopyWith<$Res>(_self.release!, (value) {
    return _then(_self.copyWith(release: value));
  });
}
}

/// @nodoc


class ReleasesReady implements ReleasesState {
  const ReleasesReady({this.release, this.updateAvailable = false});
  

@override final  AppRelease? release;
@JsonKey() final  bool updateAvailable;

/// Create a copy of ReleasesState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReleasesReadyCopyWith<ReleasesReady> get copyWith => _$ReleasesReadyCopyWithImpl<ReleasesReady>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is ReleasesReady&&(identical(other.release, release) || other.release == release)&&(identical(other.updateAvailable, updateAvailable) || other.updateAvailable == updateAvailable));
}


@override
int get hashCode {
    return Object.hash(runtimeType,release,updateAvailable);
}

@override
String toString() {
    return 'ReleasesState.ready(release: $release, updateAvailable: $updateAvailable)';
}


}

/// @nodoc
abstract mixin class $ReleasesReadyCopyWith<$Res> implements $ReleasesStateCopyWith<$Res> {
  factory $ReleasesReadyCopyWith(ReleasesReady value, $Res Function(ReleasesReady) _then) = _$ReleasesReadyCopyWithImpl;
@override @useResult
$Res call({
 AppRelease? release, bool updateAvailable
});


@override $AppReleaseCopyWith<$Res>? get release;

}
/// @nodoc
class _$ReleasesReadyCopyWithImpl<$Res>
    implements $ReleasesReadyCopyWith<$Res> {
  _$ReleasesReadyCopyWithImpl(this._self, this._then);

  final ReleasesReady _self;
  final $Res Function(ReleasesReady) _then;

/// Create a copy of ReleasesState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? release = freezed,Object? updateAvailable = null,}) {
  return _then(ReleasesReady(
release: freezed == release ? _self.release : release // ignore: cast_nullable_to_non_nullable
as AppRelease?,updateAvailable: null == updateAvailable ? _self.updateAvailable : updateAvailable // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of ReleasesState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppReleaseCopyWith<$Res>? get release {
    if (_self.release == null) {
    return null;
  }

  return $AppReleaseCopyWith<$Res>(_self.release!, (value) {
    return _then(_self.copyWith(release: value));
  });
}
}

/// @nodoc


class ReleasesFailure implements ReleasesState {
  const ReleasesFailure({this.release});
  

@override final  AppRelease? release;

/// Create a copy of ReleasesState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReleasesFailureCopyWith<ReleasesFailure> get copyWith => _$ReleasesFailureCopyWithImpl<ReleasesFailure>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is ReleasesFailure&&(identical(other.release, release) || other.release == release));
}


@override
int get hashCode {
    return Object.hash(runtimeType,release);
}

@override
String toString() {
    return 'ReleasesState.failure(release: $release)';
}


}

/// @nodoc
abstract mixin class $ReleasesFailureCopyWith<$Res> implements $ReleasesStateCopyWith<$Res> {
  factory $ReleasesFailureCopyWith(ReleasesFailure value, $Res Function(ReleasesFailure) _then) = _$ReleasesFailureCopyWithImpl;
@override @useResult
$Res call({
 AppRelease? release
});


@override $AppReleaseCopyWith<$Res>? get release;

}
/// @nodoc
class _$ReleasesFailureCopyWithImpl<$Res>
    implements $ReleasesFailureCopyWith<$Res> {
  _$ReleasesFailureCopyWithImpl(this._self, this._then);

  final ReleasesFailure _self;
  final $Res Function(ReleasesFailure) _then;

/// Create a copy of ReleasesState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? release = freezed,}) {
  return _then(ReleasesFailure(
release: freezed == release ? _self.release : release // ignore: cast_nullable_to_non_nullable
as AppRelease?,
  ));
}

/// Create a copy of ReleasesState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppReleaseCopyWith<$Res>? get release {
    if (_self.release == null) {
    return null;
  }

  return $AppReleaseCopyWith<$Res>(_self.release!, (value) {
    return _then(_self.copyWith(release: value));
  });
}
}

// dart format on
