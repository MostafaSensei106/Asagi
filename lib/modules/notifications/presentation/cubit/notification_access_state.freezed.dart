// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_access_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NotificationAccessState {

 NotificationPermission get permission; Set<String> get blockedChannels;
/// Create a copy of NotificationAccessState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationAccessStateCopyWith<NotificationAccessState> get copyWith => _$NotificationAccessStateCopyWithImpl<NotificationAccessState>(this as NotificationAccessState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as NotificationAccessState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationAccessState&&(identical(other.permission, _this.permission) || other.permission == _this.permission)&&const DeepCollectionEquality().equals(other.blockedChannels, _this.blockedChannels));
}


@override
int get hashCode {
  final _this = this as NotificationAccessState;
  return Object.hash(runtimeType,_this.permission,const DeepCollectionEquality().hash(_this.blockedChannels));
}

@override
String toString() {
  final _this = this as NotificationAccessState;
  return 'NotificationAccessState(permission: ${_this.permission}, blockedChannels: ${_this.blockedChannels})';
}


}

/// @nodoc
abstract mixin class $NotificationAccessStateCopyWith<$Res>  {
  factory $NotificationAccessStateCopyWith(NotificationAccessState value, $Res Function(NotificationAccessState) _then) = _$NotificationAccessStateCopyWithImpl;
@useResult
$Res call({
 NotificationPermission permission, Set<String> blockedChannels
});




}
/// @nodoc
class _$NotificationAccessStateCopyWithImpl<$Res>
    implements $NotificationAccessStateCopyWith<$Res> {
  _$NotificationAccessStateCopyWithImpl(this._self, this._then);

  final NotificationAccessState _self;
  final $Res Function(NotificationAccessState) _then;

/// Create a copy of NotificationAccessState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? permission = null,Object? blockedChannels = null,}) {
  return _then(_self.copyWith(
permission: null == permission ? _self.permission : permission // ignore: cast_nullable_to_non_nullable
as NotificationPermission,blockedChannels: null == blockedChannels ? _self.blockedChannels : blockedChannels // ignore: cast_nullable_to_non_nullable
as Set<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [NotificationAccessState].
extension NotificationAccessStatePatterns on NotificationAccessState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( NotificationAccessReady value)?  ready,TResult Function( NotificationAccessRequesting value)?  requesting,TResult Function( NotificationAccessFailure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case NotificationAccessReady() when ready != null:
return ready(_that);case NotificationAccessRequesting() when requesting != null:
return requesting(_that);case NotificationAccessFailure() when failure != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( NotificationAccessReady value)  ready,required TResult Function( NotificationAccessRequesting value)  requesting,required TResult Function( NotificationAccessFailure value)  failure,}){
final _that = this;
switch (_that) {
case NotificationAccessReady():
return ready(_that);case NotificationAccessRequesting():
return requesting(_that);case NotificationAccessFailure():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( NotificationAccessReady value)?  ready,TResult? Function( NotificationAccessRequesting value)?  requesting,TResult? Function( NotificationAccessFailure value)?  failure,}){
final _that = this;
switch (_that) {
case NotificationAccessReady() when ready != null:
return ready(_that);case NotificationAccessRequesting() when requesting != null:
return requesting(_that);case NotificationAccessFailure() when failure != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( NotificationPermission permission,  Set<String> blockedChannels)?  ready,TResult Function( NotificationPermission permission,  Set<String> blockedChannels)?  requesting,TResult Function( NotificationPermission permission,  Set<String> blockedChannels)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case NotificationAccessReady() when ready != null:
return ready(_that.permission,_that.blockedChannels);case NotificationAccessRequesting() when requesting != null:
return requesting(_that.permission,_that.blockedChannels);case NotificationAccessFailure() when failure != null:
return failure(_that.permission,_that.blockedChannels);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( NotificationPermission permission,  Set<String> blockedChannels)  ready,required TResult Function( NotificationPermission permission,  Set<String> blockedChannels)  requesting,required TResult Function( NotificationPermission permission,  Set<String> blockedChannels)  failure,}) {final _that = this;
switch (_that) {
case NotificationAccessReady():
return ready(_that.permission,_that.blockedChannels);case NotificationAccessRequesting():
return requesting(_that.permission,_that.blockedChannels);case NotificationAccessFailure():
return failure(_that.permission,_that.blockedChannels);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( NotificationPermission permission,  Set<String> blockedChannels)?  ready,TResult? Function( NotificationPermission permission,  Set<String> blockedChannels)?  requesting,TResult? Function( NotificationPermission permission,  Set<String> blockedChannels)?  failure,}) {final _that = this;
switch (_that) {
case NotificationAccessReady() when ready != null:
return ready(_that.permission,_that.blockedChannels);case NotificationAccessRequesting() when requesting != null:
return requesting(_that.permission,_that.blockedChannels);case NotificationAccessFailure() when failure != null:
return failure(_that.permission,_that.blockedChannels);case _:
  return null;

}
}

}

/// @nodoc


class NotificationAccessReady implements NotificationAccessState {
  const NotificationAccessReady({this.permission = NotificationPermission.denied,  Set<String> blockedChannels = const <String>{}}): _blockedChannels = blockedChannels;
  

@override@JsonKey() final  NotificationPermission permission;
 final  Set<String> _blockedChannels;
@override@JsonKey() Set<String> get blockedChannels {
  if (_blockedChannels is EqualUnmodifiableSetView) return _blockedChannels;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_blockedChannels);
}


/// Create a copy of NotificationAccessState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationAccessReadyCopyWith<NotificationAccessReady> get copyWith => _$NotificationAccessReadyCopyWithImpl<NotificationAccessReady>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationAccessReady&&(identical(other.permission, permission) || other.permission == permission)&&const DeepCollectionEquality().equals(other.blockedChannels, _blockedChannels));
}


@override
int get hashCode {
    return Object.hash(runtimeType,permission,const DeepCollectionEquality().hash(_blockedChannels));
}

@override
String toString() {
    return 'NotificationAccessState.ready(permission: $permission, blockedChannels: $blockedChannels)';
}


}

/// @nodoc
abstract mixin class $NotificationAccessReadyCopyWith<$Res> implements $NotificationAccessStateCopyWith<$Res> {
  factory $NotificationAccessReadyCopyWith(NotificationAccessReady value, $Res Function(NotificationAccessReady) _then) = _$NotificationAccessReadyCopyWithImpl;
@override @useResult
$Res call({
 NotificationPermission permission, Set<String> blockedChannels
});




}
/// @nodoc
class _$NotificationAccessReadyCopyWithImpl<$Res>
    implements $NotificationAccessReadyCopyWith<$Res> {
  _$NotificationAccessReadyCopyWithImpl(this._self, this._then);

  final NotificationAccessReady _self;
  final $Res Function(NotificationAccessReady) _then;

/// Create a copy of NotificationAccessState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? permission = null,Object? blockedChannels = null,}) {
  return _then(NotificationAccessReady(
permission: null == permission ? _self.permission : permission // ignore: cast_nullable_to_non_nullable
as NotificationPermission,blockedChannels: null == blockedChannels ? _self._blockedChannels : blockedChannels // ignore: cast_nullable_to_non_nullable
as Set<String>,
  ));
}


}

/// @nodoc


class NotificationAccessRequesting implements NotificationAccessState {
  const NotificationAccessRequesting({required this.permission,  Set<String> blockedChannels = const <String>{}}): _blockedChannels = blockedChannels;
  

@override final  NotificationPermission permission;
 final  Set<String> _blockedChannels;
@override@JsonKey() Set<String> get blockedChannels {
  if (_blockedChannels is EqualUnmodifiableSetView) return _blockedChannels;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_blockedChannels);
}


/// Create a copy of NotificationAccessState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationAccessRequestingCopyWith<NotificationAccessRequesting> get copyWith => _$NotificationAccessRequestingCopyWithImpl<NotificationAccessRequesting>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationAccessRequesting&&(identical(other.permission, permission) || other.permission == permission)&&const DeepCollectionEquality().equals(other.blockedChannels, _blockedChannels));
}


@override
int get hashCode {
    return Object.hash(runtimeType,permission,const DeepCollectionEquality().hash(_blockedChannels));
}

@override
String toString() {
    return 'NotificationAccessState.requesting(permission: $permission, blockedChannels: $blockedChannels)';
}


}

/// @nodoc
abstract mixin class $NotificationAccessRequestingCopyWith<$Res> implements $NotificationAccessStateCopyWith<$Res> {
  factory $NotificationAccessRequestingCopyWith(NotificationAccessRequesting value, $Res Function(NotificationAccessRequesting) _then) = _$NotificationAccessRequestingCopyWithImpl;
@override @useResult
$Res call({
 NotificationPermission permission, Set<String> blockedChannels
});




}
/// @nodoc
class _$NotificationAccessRequestingCopyWithImpl<$Res>
    implements $NotificationAccessRequestingCopyWith<$Res> {
  _$NotificationAccessRequestingCopyWithImpl(this._self, this._then);

  final NotificationAccessRequesting _self;
  final $Res Function(NotificationAccessRequesting) _then;

/// Create a copy of NotificationAccessState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? permission = null,Object? blockedChannels = null,}) {
  return _then(NotificationAccessRequesting(
permission: null == permission ? _self.permission : permission // ignore: cast_nullable_to_non_nullable
as NotificationPermission,blockedChannels: null == blockedChannels ? _self._blockedChannels : blockedChannels // ignore: cast_nullable_to_non_nullable
as Set<String>,
  ));
}


}

/// @nodoc


class NotificationAccessFailure implements NotificationAccessState {
  const NotificationAccessFailure({required this.permission,  Set<String> blockedChannels = const <String>{}}): _blockedChannels = blockedChannels;
  

@override final  NotificationPermission permission;
 final  Set<String> _blockedChannels;
@override@JsonKey() Set<String> get blockedChannels {
  if (_blockedChannels is EqualUnmodifiableSetView) return _blockedChannels;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_blockedChannels);
}


/// Create a copy of NotificationAccessState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationAccessFailureCopyWith<NotificationAccessFailure> get copyWith => _$NotificationAccessFailureCopyWithImpl<NotificationAccessFailure>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationAccessFailure&&(identical(other.permission, permission) || other.permission == permission)&&const DeepCollectionEquality().equals(other.blockedChannels, _blockedChannels));
}


@override
int get hashCode {
    return Object.hash(runtimeType,permission,const DeepCollectionEquality().hash(_blockedChannels));
}

@override
String toString() {
    return 'NotificationAccessState.failure(permission: $permission, blockedChannels: $blockedChannels)';
}


}

/// @nodoc
abstract mixin class $NotificationAccessFailureCopyWith<$Res> implements $NotificationAccessStateCopyWith<$Res> {
  factory $NotificationAccessFailureCopyWith(NotificationAccessFailure value, $Res Function(NotificationAccessFailure) _then) = _$NotificationAccessFailureCopyWithImpl;
@override @useResult
$Res call({
 NotificationPermission permission, Set<String> blockedChannels
});




}
/// @nodoc
class _$NotificationAccessFailureCopyWithImpl<$Res>
    implements $NotificationAccessFailureCopyWith<$Res> {
  _$NotificationAccessFailureCopyWithImpl(this._self, this._then);

  final NotificationAccessFailure _self;
  final $Res Function(NotificationAccessFailure) _then;

/// Create a copy of NotificationAccessState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? permission = null,Object? blockedChannels = null,}) {
  return _then(NotificationAccessFailure(
permission: null == permission ? _self.permission : permission // ignore: cast_nullable_to_non_nullable
as NotificationPermission,blockedChannels: null == blockedChannels ? _self._blockedChannels : blockedChannels // ignore: cast_nullable_to_non_nullable
as Set<String>,
  ));
}


}

// dart format on
