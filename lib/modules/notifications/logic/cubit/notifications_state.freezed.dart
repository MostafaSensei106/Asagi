// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notifications_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NotificationsState {

 NotificationData get data; NotificationPermission get permission; Set<String> get blockedChannels;
/// Create a copy of NotificationsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationsStateCopyWith<NotificationsState> get copyWith => _$NotificationsStateCopyWithImpl<NotificationsState>(this as NotificationsState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as NotificationsState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationsState&&(identical(other.data, _this.data) || other.data == _this.data)&&(identical(other.permission, _this.permission) || other.permission == _this.permission)&&const DeepCollectionEquality().equals(other.blockedChannels, _this.blockedChannels));
}


@override
int get hashCode {
  final _this = this as NotificationsState;
  return Object.hash(runtimeType,_this.data,_this.permission,const DeepCollectionEquality().hash(_this.blockedChannels));
}

@override
String toString() {
  final _this = this as NotificationsState;
  return 'NotificationsState(data: ${_this.data}, permission: ${_this.permission}, blockedChannels: ${_this.blockedChannels})';
}


}

/// @nodoc
abstract mixin class $NotificationsStateCopyWith<$Res>  {
  factory $NotificationsStateCopyWith(NotificationsState value, $Res Function(NotificationsState) _then) = _$NotificationsStateCopyWithImpl;
@useResult
$Res call({
 NotificationData data, NotificationPermission permission, Set<String> blockedChannels
});


$NotificationDataCopyWith<$Res> get data;

}
/// @nodoc
class _$NotificationsStateCopyWithImpl<$Res>
    implements $NotificationsStateCopyWith<$Res> {
  _$NotificationsStateCopyWithImpl(this._self, this._then);

  final NotificationsState _self;
  final $Res Function(NotificationsState) _then;

/// Create a copy of NotificationsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,Object? permission = null,Object? blockedChannels = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as NotificationData,permission: null == permission ? _self.permission : permission // ignore: cast_nullable_to_non_nullable
as NotificationPermission,blockedChannels: null == blockedChannels ? _self.blockedChannels : blockedChannels // ignore: cast_nullable_to_non_nullable
as Set<String>,
  ));
}
/// Create a copy of NotificationsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NotificationDataCopyWith<$Res> get data {
  
  return $NotificationDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [NotificationsState].
extension NotificationsStatePatterns on NotificationsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( NotificationsInitializing value)?  initializing,TResult Function( NotificationsReady value)?  ready,TResult Function( NotificationsRequestingPermission value)?  requestingPermission,TResult Function( NotificationsFailure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case NotificationsInitializing() when initializing != null:
return initializing(_that);case NotificationsReady() when ready != null:
return ready(_that);case NotificationsRequestingPermission() when requestingPermission != null:
return requestingPermission(_that);case NotificationsFailure() when failure != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( NotificationsInitializing value)  initializing,required TResult Function( NotificationsReady value)  ready,required TResult Function( NotificationsRequestingPermission value)  requestingPermission,required TResult Function( NotificationsFailure value)  failure,}){
final _that = this;
switch (_that) {
case NotificationsInitializing():
return initializing(_that);case NotificationsReady():
return ready(_that);case NotificationsRequestingPermission():
return requestingPermission(_that);case NotificationsFailure():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( NotificationsInitializing value)?  initializing,TResult? Function( NotificationsReady value)?  ready,TResult? Function( NotificationsRequestingPermission value)?  requestingPermission,TResult? Function( NotificationsFailure value)?  failure,}){
final _that = this;
switch (_that) {
case NotificationsInitializing() when initializing != null:
return initializing(_that);case NotificationsReady() when ready != null:
return ready(_that);case NotificationsRequestingPermission() when requestingPermission != null:
return requestingPermission(_that);case NotificationsFailure() when failure != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( NotificationData data,  NotificationPermission permission,  Set<String> blockedChannels)?  initializing,TResult Function( NotificationData data,  NotificationPermission permission,  Set<String> blockedChannels)?  ready,TResult Function( NotificationData data,  NotificationPermission permission,  Set<String> blockedChannels)?  requestingPermission,TResult Function( NotificationData data,  NotificationPermission permission,  Set<String> blockedChannels)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case NotificationsInitializing() when initializing != null:
return initializing(_that.data,_that.permission,_that.blockedChannels);case NotificationsReady() when ready != null:
return ready(_that.data,_that.permission,_that.blockedChannels);case NotificationsRequestingPermission() when requestingPermission != null:
return requestingPermission(_that.data,_that.permission,_that.blockedChannels);case NotificationsFailure() when failure != null:
return failure(_that.data,_that.permission,_that.blockedChannels);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( NotificationData data,  NotificationPermission permission,  Set<String> blockedChannels)  initializing,required TResult Function( NotificationData data,  NotificationPermission permission,  Set<String> blockedChannels)  ready,required TResult Function( NotificationData data,  NotificationPermission permission,  Set<String> blockedChannels)  requestingPermission,required TResult Function( NotificationData data,  NotificationPermission permission,  Set<String> blockedChannels)  failure,}) {final _that = this;
switch (_that) {
case NotificationsInitializing():
return initializing(_that.data,_that.permission,_that.blockedChannels);case NotificationsReady():
return ready(_that.data,_that.permission,_that.blockedChannels);case NotificationsRequestingPermission():
return requestingPermission(_that.data,_that.permission,_that.blockedChannels);case NotificationsFailure():
return failure(_that.data,_that.permission,_that.blockedChannels);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( NotificationData data,  NotificationPermission permission,  Set<String> blockedChannels)?  initializing,TResult? Function( NotificationData data,  NotificationPermission permission,  Set<String> blockedChannels)?  ready,TResult? Function( NotificationData data,  NotificationPermission permission,  Set<String> blockedChannels)?  requestingPermission,TResult? Function( NotificationData data,  NotificationPermission permission,  Set<String> blockedChannels)?  failure,}) {final _that = this;
switch (_that) {
case NotificationsInitializing() when initializing != null:
return initializing(_that.data,_that.permission,_that.blockedChannels);case NotificationsReady() when ready != null:
return ready(_that.data,_that.permission,_that.blockedChannels);case NotificationsRequestingPermission() when requestingPermission != null:
return requestingPermission(_that.data,_that.permission,_that.blockedChannels);case NotificationsFailure() when failure != null:
return failure(_that.data,_that.permission,_that.blockedChannels);case _:
  return null;

}
}

}

/// @nodoc


class NotificationsInitializing implements NotificationsState {
  const NotificationsInitializing({this.data = const NotificationData(), this.permission = NotificationPermission.denied,  Set<String> blockedChannels = const <String>{}}): _blockedChannels = blockedChannels;
  

@override@JsonKey() final  NotificationData data;
@override@JsonKey() final  NotificationPermission permission;
 final  Set<String> _blockedChannels;
@override@JsonKey() Set<String> get blockedChannels {
  if (_blockedChannels is EqualUnmodifiableSetView) return _blockedChannels;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_blockedChannels);
}


/// Create a copy of NotificationsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationsInitializingCopyWith<NotificationsInitializing> get copyWith => _$NotificationsInitializingCopyWithImpl<NotificationsInitializing>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationsInitializing&&(identical(other.data, data) || other.data == data)&&(identical(other.permission, permission) || other.permission == permission)&&const DeepCollectionEquality().equals(other.blockedChannels, _blockedChannels));
}


@override
int get hashCode {
    return Object.hash(runtimeType,data,permission,const DeepCollectionEquality().hash(_blockedChannels));
}

@override
String toString() {
    return 'NotificationsState.initializing(data: $data, permission: $permission, blockedChannels: $blockedChannels)';
}


}

/// @nodoc
abstract mixin class $NotificationsInitializingCopyWith<$Res> implements $NotificationsStateCopyWith<$Res> {
  factory $NotificationsInitializingCopyWith(NotificationsInitializing value, $Res Function(NotificationsInitializing) _then) = _$NotificationsInitializingCopyWithImpl;
@override @useResult
$Res call({
 NotificationData data, NotificationPermission permission, Set<String> blockedChannels
});


@override $NotificationDataCopyWith<$Res> get data;

}
/// @nodoc
class _$NotificationsInitializingCopyWithImpl<$Res>
    implements $NotificationsInitializingCopyWith<$Res> {
  _$NotificationsInitializingCopyWithImpl(this._self, this._then);

  final NotificationsInitializing _self;
  final $Res Function(NotificationsInitializing) _then;

/// Create a copy of NotificationsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,Object? permission = null,Object? blockedChannels = null,}) {
  return _then(NotificationsInitializing(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as NotificationData,permission: null == permission ? _self.permission : permission // ignore: cast_nullable_to_non_nullable
as NotificationPermission,blockedChannels: null == blockedChannels ? _self._blockedChannels : blockedChannels // ignore: cast_nullable_to_non_nullable
as Set<String>,
  ));
}

/// Create a copy of NotificationsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NotificationDataCopyWith<$Res> get data {
  
  return $NotificationDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

/// @nodoc


class NotificationsReady implements NotificationsState {
  const NotificationsReady({required this.data, required this.permission,  Set<String> blockedChannels = const <String>{}}): _blockedChannels = blockedChannels;
  

@override final  NotificationData data;
@override final  NotificationPermission permission;
 final  Set<String> _blockedChannels;
@override@JsonKey() Set<String> get blockedChannels {
  if (_blockedChannels is EqualUnmodifiableSetView) return _blockedChannels;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_blockedChannels);
}


/// Create a copy of NotificationsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationsReadyCopyWith<NotificationsReady> get copyWith => _$NotificationsReadyCopyWithImpl<NotificationsReady>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationsReady&&(identical(other.data, data) || other.data == data)&&(identical(other.permission, permission) || other.permission == permission)&&const DeepCollectionEquality().equals(other.blockedChannels, _blockedChannels));
}


@override
int get hashCode {
    return Object.hash(runtimeType,data,permission,const DeepCollectionEquality().hash(_blockedChannels));
}

@override
String toString() {
    return 'NotificationsState.ready(data: $data, permission: $permission, blockedChannels: $blockedChannels)';
}


}

/// @nodoc
abstract mixin class $NotificationsReadyCopyWith<$Res> implements $NotificationsStateCopyWith<$Res> {
  factory $NotificationsReadyCopyWith(NotificationsReady value, $Res Function(NotificationsReady) _then) = _$NotificationsReadyCopyWithImpl;
@override @useResult
$Res call({
 NotificationData data, NotificationPermission permission, Set<String> blockedChannels
});


@override $NotificationDataCopyWith<$Res> get data;

}
/// @nodoc
class _$NotificationsReadyCopyWithImpl<$Res>
    implements $NotificationsReadyCopyWith<$Res> {
  _$NotificationsReadyCopyWithImpl(this._self, this._then);

  final NotificationsReady _self;
  final $Res Function(NotificationsReady) _then;

/// Create a copy of NotificationsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,Object? permission = null,Object? blockedChannels = null,}) {
  return _then(NotificationsReady(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as NotificationData,permission: null == permission ? _self.permission : permission // ignore: cast_nullable_to_non_nullable
as NotificationPermission,blockedChannels: null == blockedChannels ? _self._blockedChannels : blockedChannels // ignore: cast_nullable_to_non_nullable
as Set<String>,
  ));
}

/// Create a copy of NotificationsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NotificationDataCopyWith<$Res> get data {
  
  return $NotificationDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

/// @nodoc


class NotificationsRequestingPermission implements NotificationsState {
  const NotificationsRequestingPermission({required this.data, required this.permission,  Set<String> blockedChannels = const <String>{}}): _blockedChannels = blockedChannels;
  

@override final  NotificationData data;
@override final  NotificationPermission permission;
 final  Set<String> _blockedChannels;
@override@JsonKey() Set<String> get blockedChannels {
  if (_blockedChannels is EqualUnmodifiableSetView) return _blockedChannels;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_blockedChannels);
}


/// Create a copy of NotificationsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationsRequestingPermissionCopyWith<NotificationsRequestingPermission> get copyWith => _$NotificationsRequestingPermissionCopyWithImpl<NotificationsRequestingPermission>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationsRequestingPermission&&(identical(other.data, data) || other.data == data)&&(identical(other.permission, permission) || other.permission == permission)&&const DeepCollectionEquality().equals(other.blockedChannels, _blockedChannels));
}


@override
int get hashCode {
    return Object.hash(runtimeType,data,permission,const DeepCollectionEquality().hash(_blockedChannels));
}

@override
String toString() {
    return 'NotificationsState.requestingPermission(data: $data, permission: $permission, blockedChannels: $blockedChannels)';
}


}

/// @nodoc
abstract mixin class $NotificationsRequestingPermissionCopyWith<$Res> implements $NotificationsStateCopyWith<$Res> {
  factory $NotificationsRequestingPermissionCopyWith(NotificationsRequestingPermission value, $Res Function(NotificationsRequestingPermission) _then) = _$NotificationsRequestingPermissionCopyWithImpl;
@override @useResult
$Res call({
 NotificationData data, NotificationPermission permission, Set<String> blockedChannels
});


@override $NotificationDataCopyWith<$Res> get data;

}
/// @nodoc
class _$NotificationsRequestingPermissionCopyWithImpl<$Res>
    implements $NotificationsRequestingPermissionCopyWith<$Res> {
  _$NotificationsRequestingPermissionCopyWithImpl(this._self, this._then);

  final NotificationsRequestingPermission _self;
  final $Res Function(NotificationsRequestingPermission) _then;

/// Create a copy of NotificationsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,Object? permission = null,Object? blockedChannels = null,}) {
  return _then(NotificationsRequestingPermission(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as NotificationData,permission: null == permission ? _self.permission : permission // ignore: cast_nullable_to_non_nullable
as NotificationPermission,blockedChannels: null == blockedChannels ? _self._blockedChannels : blockedChannels // ignore: cast_nullable_to_non_nullable
as Set<String>,
  ));
}

/// Create a copy of NotificationsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NotificationDataCopyWith<$Res> get data {
  
  return $NotificationDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

/// @nodoc


class NotificationsFailure implements NotificationsState {
  const NotificationsFailure({required this.data, required this.permission,  Set<String> blockedChannels = const <String>{}}): _blockedChannels = blockedChannels;
  

@override final  NotificationData data;
@override final  NotificationPermission permission;
 final  Set<String> _blockedChannels;
@override@JsonKey() Set<String> get blockedChannels {
  if (_blockedChannels is EqualUnmodifiableSetView) return _blockedChannels;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_blockedChannels);
}


/// Create a copy of NotificationsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationsFailureCopyWith<NotificationsFailure> get copyWith => _$NotificationsFailureCopyWithImpl<NotificationsFailure>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationsFailure&&(identical(other.data, data) || other.data == data)&&(identical(other.permission, permission) || other.permission == permission)&&const DeepCollectionEquality().equals(other.blockedChannels, _blockedChannels));
}


@override
int get hashCode {
    return Object.hash(runtimeType,data,permission,const DeepCollectionEquality().hash(_blockedChannels));
}

@override
String toString() {
    return 'NotificationsState.failure(data: $data, permission: $permission, blockedChannels: $blockedChannels)';
}


}

/// @nodoc
abstract mixin class $NotificationsFailureCopyWith<$Res> implements $NotificationsStateCopyWith<$Res> {
  factory $NotificationsFailureCopyWith(NotificationsFailure value, $Res Function(NotificationsFailure) _then) = _$NotificationsFailureCopyWithImpl;
@override @useResult
$Res call({
 NotificationData data, NotificationPermission permission, Set<String> blockedChannels
});


@override $NotificationDataCopyWith<$Res> get data;

}
/// @nodoc
class _$NotificationsFailureCopyWithImpl<$Res>
    implements $NotificationsFailureCopyWith<$Res> {
  _$NotificationsFailureCopyWithImpl(this._self, this._then);

  final NotificationsFailure _self;
  final $Res Function(NotificationsFailure) _then;

/// Create a copy of NotificationsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,Object? permission = null,Object? blockedChannels = null,}) {
  return _then(NotificationsFailure(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as NotificationData,permission: null == permission ? _self.permission : permission // ignore: cast_nullable_to_non_nullable
as NotificationPermission,blockedChannels: null == blockedChannels ? _self._blockedChannels : blockedChannels // ignore: cast_nullable_to_non_nullable
as Set<String>,
  ));
}

/// Create a copy of NotificationsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NotificationDataCopyWith<$Res> get data {
  
  return $NotificationDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on
