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

 NotificationSettings get settings;
/// Create a copy of NotificationsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationsStateCopyWith<NotificationsState> get copyWith => _$NotificationsStateCopyWithImpl<NotificationsState>(this as NotificationsState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as NotificationsState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationsState&&(identical(other.settings, _this.settings) || other.settings == _this.settings));
}


@override
int get hashCode {
  final _this = this as NotificationsState;
  return Object.hash(runtimeType,_this.settings);
}

@override
String toString() {
  final _this = this as NotificationsState;
  return 'NotificationsState(settings: ${_this.settings})';
}


}

/// @nodoc
abstract mixin class $NotificationsStateCopyWith<$Res>  {
  factory $NotificationsStateCopyWith(NotificationsState value, $Res Function(NotificationsState) _then) = _$NotificationsStateCopyWithImpl;
@useResult
$Res call({
 NotificationSettings settings
});


$NotificationSettingsCopyWith<$Res> get settings;

}
/// @nodoc
class _$NotificationsStateCopyWithImpl<$Res>
    implements $NotificationsStateCopyWith<$Res> {
  _$NotificationsStateCopyWithImpl(this._self, this._then);

  final NotificationsState _self;
  final $Res Function(NotificationsState) _then;

/// Create a copy of NotificationsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? settings = null,}) {
  return _then(_self.copyWith(
settings: null == settings ? _self.settings : settings // ignore: cast_nullable_to_non_nullable
as NotificationSettings,
  ));
}
/// Create a copy of NotificationsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NotificationSettingsCopyWith<$Res> get settings {
  
  return $NotificationSettingsCopyWith<$Res>(_self.settings, (value) {
    return _then(_self.copyWith(settings: value));
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( NotificationsInitializing value)?  initializing,TResult Function( NotificationsReady value)?  ready,TResult Function( NotificationsFailure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case NotificationsInitializing() when initializing != null:
return initializing(_that);case NotificationsReady() when ready != null:
return ready(_that);case NotificationsFailure() when failure != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( NotificationsInitializing value)  initializing,required TResult Function( NotificationsReady value)  ready,required TResult Function( NotificationsFailure value)  failure,}){
final _that = this;
switch (_that) {
case NotificationsInitializing():
return initializing(_that);case NotificationsReady():
return ready(_that);case NotificationsFailure():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( NotificationsInitializing value)?  initializing,TResult? Function( NotificationsReady value)?  ready,TResult? Function( NotificationsFailure value)?  failure,}){
final _that = this;
switch (_that) {
case NotificationsInitializing() when initializing != null:
return initializing(_that);case NotificationsReady() when ready != null:
return ready(_that);case NotificationsFailure() when failure != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( NotificationSettings settings)?  initializing,TResult Function( NotificationSettings settings)?  ready,TResult Function( NotificationSettings settings)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case NotificationsInitializing() when initializing != null:
return initializing(_that.settings);case NotificationsReady() when ready != null:
return ready(_that.settings);case NotificationsFailure() when failure != null:
return failure(_that.settings);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( NotificationSettings settings)  initializing,required TResult Function( NotificationSettings settings)  ready,required TResult Function( NotificationSettings settings)  failure,}) {final _that = this;
switch (_that) {
case NotificationsInitializing():
return initializing(_that.settings);case NotificationsReady():
return ready(_that.settings);case NotificationsFailure():
return failure(_that.settings);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( NotificationSettings settings)?  initializing,TResult? Function( NotificationSettings settings)?  ready,TResult? Function( NotificationSettings settings)?  failure,}) {final _that = this;
switch (_that) {
case NotificationsInitializing() when initializing != null:
return initializing(_that.settings);case NotificationsReady() when ready != null:
return ready(_that.settings);case NotificationsFailure() when failure != null:
return failure(_that.settings);case _:
  return null;

}
}

}

/// @nodoc


class NotificationsInitializing implements NotificationsState {
  const NotificationsInitializing({this.settings = const NotificationSettings()});
  

@override@JsonKey() final  NotificationSettings settings;

/// Create a copy of NotificationsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationsInitializingCopyWith<NotificationsInitializing> get copyWith => _$NotificationsInitializingCopyWithImpl<NotificationsInitializing>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationsInitializing&&(identical(other.settings, settings) || other.settings == settings));
}


@override
int get hashCode {
    return Object.hash(runtimeType,settings);
}

@override
String toString() {
    return 'NotificationsState.initializing(settings: $settings)';
}


}

/// @nodoc
abstract mixin class $NotificationsInitializingCopyWith<$Res> implements $NotificationsStateCopyWith<$Res> {
  factory $NotificationsInitializingCopyWith(NotificationsInitializing value, $Res Function(NotificationsInitializing) _then) = _$NotificationsInitializingCopyWithImpl;
@override @useResult
$Res call({
 NotificationSettings settings
});


@override $NotificationSettingsCopyWith<$Res> get settings;

}
/// @nodoc
class _$NotificationsInitializingCopyWithImpl<$Res>
    implements $NotificationsInitializingCopyWith<$Res> {
  _$NotificationsInitializingCopyWithImpl(this._self, this._then);

  final NotificationsInitializing _self;
  final $Res Function(NotificationsInitializing) _then;

/// Create a copy of NotificationsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? settings = null,}) {
  return _then(NotificationsInitializing(
settings: null == settings ? _self.settings : settings // ignore: cast_nullable_to_non_nullable
as NotificationSettings,
  ));
}

/// Create a copy of NotificationsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NotificationSettingsCopyWith<$Res> get settings {
  
  return $NotificationSettingsCopyWith<$Res>(_self.settings, (value) {
    return _then(_self.copyWith(settings: value));
  });
}
}

/// @nodoc


class NotificationsReady implements NotificationsState {
  const NotificationsReady({required this.settings});
  

@override final  NotificationSettings settings;

/// Create a copy of NotificationsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationsReadyCopyWith<NotificationsReady> get copyWith => _$NotificationsReadyCopyWithImpl<NotificationsReady>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationsReady&&(identical(other.settings, settings) || other.settings == settings));
}


@override
int get hashCode {
    return Object.hash(runtimeType,settings);
}

@override
String toString() {
    return 'NotificationsState.ready(settings: $settings)';
}


}

/// @nodoc
abstract mixin class $NotificationsReadyCopyWith<$Res> implements $NotificationsStateCopyWith<$Res> {
  factory $NotificationsReadyCopyWith(NotificationsReady value, $Res Function(NotificationsReady) _then) = _$NotificationsReadyCopyWithImpl;
@override @useResult
$Res call({
 NotificationSettings settings
});


@override $NotificationSettingsCopyWith<$Res> get settings;

}
/// @nodoc
class _$NotificationsReadyCopyWithImpl<$Res>
    implements $NotificationsReadyCopyWith<$Res> {
  _$NotificationsReadyCopyWithImpl(this._self, this._then);

  final NotificationsReady _self;
  final $Res Function(NotificationsReady) _then;

/// Create a copy of NotificationsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? settings = null,}) {
  return _then(NotificationsReady(
settings: null == settings ? _self.settings : settings // ignore: cast_nullable_to_non_nullable
as NotificationSettings,
  ));
}

/// Create a copy of NotificationsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NotificationSettingsCopyWith<$Res> get settings {
  
  return $NotificationSettingsCopyWith<$Res>(_self.settings, (value) {
    return _then(_self.copyWith(settings: value));
  });
}
}

/// @nodoc


class NotificationsFailure implements NotificationsState {
  const NotificationsFailure({required this.settings});
  

@override final  NotificationSettings settings;

/// Create a copy of NotificationsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationsFailureCopyWith<NotificationsFailure> get copyWith => _$NotificationsFailureCopyWithImpl<NotificationsFailure>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationsFailure&&(identical(other.settings, settings) || other.settings == settings));
}


@override
int get hashCode {
    return Object.hash(runtimeType,settings);
}

@override
String toString() {
    return 'NotificationsState.failure(settings: $settings)';
}


}

/// @nodoc
abstract mixin class $NotificationsFailureCopyWith<$Res> implements $NotificationsStateCopyWith<$Res> {
  factory $NotificationsFailureCopyWith(NotificationsFailure value, $Res Function(NotificationsFailure) _then) = _$NotificationsFailureCopyWithImpl;
@override @useResult
$Res call({
 NotificationSettings settings
});


@override $NotificationSettingsCopyWith<$Res> get settings;

}
/// @nodoc
class _$NotificationsFailureCopyWithImpl<$Res>
    implements $NotificationsFailureCopyWith<$Res> {
  _$NotificationsFailureCopyWithImpl(this._self, this._then);

  final NotificationsFailure _self;
  final $Res Function(NotificationsFailure) _then;

/// Create a copy of NotificationsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? settings = null,}) {
  return _then(NotificationsFailure(
settings: null == settings ? _self.settings : settings // ignore: cast_nullable_to_non_nullable
as NotificationSettings,
  ));
}

/// Create a copy of NotificationsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NotificationSettingsCopyWith<$Res> get settings {
  
  return $NotificationSettingsCopyWith<$Res>(_self.settings, (value) {
    return _then(_self.copyWith(settings: value));
  });
}
}

// dart format on
