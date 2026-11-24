// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_target.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NotificationTarget {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationTarget);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'NotificationTarget()';
}


}

/// @nodoc
class $NotificationTargetCopyWith<$Res>  {
$NotificationTargetCopyWith(NotificationTarget _, $Res Function(NotificationTarget) __);
}


/// Adds pattern-matching-related methods to [NotificationTarget].
extension NotificationTargetPatterns on NotificationTarget {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( NotificationResultTarget value)?  result,TResult Function( NotificationProgressTarget value)?  progress,TResult Function( NotificationRecoveryTarget value)?  recovery,TResult Function( NotificationHistoryTarget value)?  history,TResult Function( NotificationReleaseTarget value)?  release,required TResult orElse(),}){
final _that = this;
switch (_that) {
case NotificationResultTarget() when result != null:
return result(_that);case NotificationProgressTarget() when progress != null:
return progress(_that);case NotificationRecoveryTarget() when recovery != null:
return recovery(_that);case NotificationHistoryTarget() when history != null:
return history(_that);case NotificationReleaseTarget() when release != null:
return release(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( NotificationResultTarget value)  result,required TResult Function( NotificationProgressTarget value)  progress,required TResult Function( NotificationRecoveryTarget value)  recovery,required TResult Function( NotificationHistoryTarget value)  history,required TResult Function( NotificationReleaseTarget value)  release,}){
final _that = this;
switch (_that) {
case NotificationResultTarget():
return result(_that);case NotificationProgressTarget():
return progress(_that);case NotificationRecoveryTarget():
return recovery(_that);case NotificationHistoryTarget():
return history(_that);case NotificationReleaseTarget():
return release(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( NotificationResultTarget value)?  result,TResult? Function( NotificationProgressTarget value)?  progress,TResult? Function( NotificationRecoveryTarget value)?  recovery,TResult? Function( NotificationHistoryTarget value)?  history,TResult? Function( NotificationReleaseTarget value)?  release,}){
final _that = this;
switch (_that) {
case NotificationResultTarget() when result != null:
return result(_that);case NotificationProgressTarget() when progress != null:
return progress(_that);case NotificationRecoveryTarget() when recovery != null:
return recovery(_that);case NotificationHistoryTarget() when history != null:
return history(_that);case NotificationReleaseTarget() when release != null:
return release(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String jobId)?  result,TResult Function( String jobId)?  progress,TResult Function()?  recovery,TResult Function()?  history,TResult Function( Uri url)?  release,required TResult orElse(),}) {final _that = this;
switch (_that) {
case NotificationResultTarget() when result != null:
return result(_that.jobId);case NotificationProgressTarget() when progress != null:
return progress(_that.jobId);case NotificationRecoveryTarget() when recovery != null:
return recovery();case NotificationHistoryTarget() when history != null:
return history();case NotificationReleaseTarget() when release != null:
return release(_that.url);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String jobId)  result,required TResult Function( String jobId)  progress,required TResult Function()  recovery,required TResult Function()  history,required TResult Function( Uri url)  release,}) {final _that = this;
switch (_that) {
case NotificationResultTarget():
return result(_that.jobId);case NotificationProgressTarget():
return progress(_that.jobId);case NotificationRecoveryTarget():
return recovery();case NotificationHistoryTarget():
return history();case NotificationReleaseTarget():
return release(_that.url);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String jobId)?  result,TResult? Function( String jobId)?  progress,TResult? Function()?  recovery,TResult? Function()?  history,TResult? Function( Uri url)?  release,}) {final _that = this;
switch (_that) {
case NotificationResultTarget() when result != null:
return result(_that.jobId);case NotificationProgressTarget() when progress != null:
return progress(_that.jobId);case NotificationRecoveryTarget() when recovery != null:
return recovery();case NotificationHistoryTarget() when history != null:
return history();case NotificationReleaseTarget() when release != null:
return release(_that.url);case _:
  return null;

}
}

}

/// @nodoc


class NotificationResultTarget implements NotificationTarget {
  const NotificationResultTarget(this.jobId);
  

 final  String jobId;

/// Create a copy of NotificationTarget
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationResultTargetCopyWith<NotificationResultTarget> get copyWith => _$NotificationResultTargetCopyWithImpl<NotificationResultTarget>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationResultTarget&&(identical(other.jobId, jobId) || other.jobId == jobId));
}


@override
int get hashCode {
    return Object.hash(runtimeType,jobId);
}

@override
String toString() {
    return 'NotificationTarget.result(jobId: $jobId)';
}


}

/// @nodoc
abstract mixin class $NotificationResultTargetCopyWith<$Res> implements $NotificationTargetCopyWith<$Res> {
  factory $NotificationResultTargetCopyWith(NotificationResultTarget value, $Res Function(NotificationResultTarget) _then) = _$NotificationResultTargetCopyWithImpl;
@useResult
$Res call({
 String jobId
});




}
/// @nodoc
class _$NotificationResultTargetCopyWithImpl<$Res>
    implements $NotificationResultTargetCopyWith<$Res> {
  _$NotificationResultTargetCopyWithImpl(this._self, this._then);

  final NotificationResultTarget _self;
  final $Res Function(NotificationResultTarget) _then;

/// Create a copy of NotificationTarget
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? jobId = null,}) {
  return _then(NotificationResultTarget(
null == jobId ? _self.jobId : jobId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class NotificationProgressTarget implements NotificationTarget {
  const NotificationProgressTarget(this.jobId);
  

 final  String jobId;

/// Create a copy of NotificationTarget
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationProgressTargetCopyWith<NotificationProgressTarget> get copyWith => _$NotificationProgressTargetCopyWithImpl<NotificationProgressTarget>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationProgressTarget&&(identical(other.jobId, jobId) || other.jobId == jobId));
}


@override
int get hashCode {
    return Object.hash(runtimeType,jobId);
}

@override
String toString() {
    return 'NotificationTarget.progress(jobId: $jobId)';
}


}

/// @nodoc
abstract mixin class $NotificationProgressTargetCopyWith<$Res> implements $NotificationTargetCopyWith<$Res> {
  factory $NotificationProgressTargetCopyWith(NotificationProgressTarget value, $Res Function(NotificationProgressTarget) _then) = _$NotificationProgressTargetCopyWithImpl;
@useResult
$Res call({
 String jobId
});




}
/// @nodoc
class _$NotificationProgressTargetCopyWithImpl<$Res>
    implements $NotificationProgressTargetCopyWith<$Res> {
  _$NotificationProgressTargetCopyWithImpl(this._self, this._then);

  final NotificationProgressTarget _self;
  final $Res Function(NotificationProgressTarget) _then;

/// Create a copy of NotificationTarget
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? jobId = null,}) {
  return _then(NotificationProgressTarget(
null == jobId ? _self.jobId : jobId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class NotificationRecoveryTarget implements NotificationTarget {
  const NotificationRecoveryTarget();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationRecoveryTarget);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'NotificationTarget.recovery()';
}


}




/// @nodoc


class NotificationHistoryTarget implements NotificationTarget {
  const NotificationHistoryTarget();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationHistoryTarget);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'NotificationTarget.history()';
}


}




/// @nodoc


class NotificationReleaseTarget implements NotificationTarget {
  const NotificationReleaseTarget(this.url);
  

 final  Uri url;

/// Create a copy of NotificationTarget
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationReleaseTargetCopyWith<NotificationReleaseTarget> get copyWith => _$NotificationReleaseTargetCopyWithImpl<NotificationReleaseTarget>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationReleaseTarget&&(identical(other.url, url) || other.url == url));
}


@override
int get hashCode {
    return Object.hash(runtimeType,url);
}

@override
String toString() {
    return 'NotificationTarget.release(url: $url)';
}


}

/// @nodoc
abstract mixin class $NotificationReleaseTargetCopyWith<$Res> implements $NotificationTargetCopyWith<$Res> {
  factory $NotificationReleaseTargetCopyWith(NotificationReleaseTarget value, $Res Function(NotificationReleaseTarget) _then) = _$NotificationReleaseTargetCopyWithImpl;
@useResult
$Res call({
 Uri url
});




}
/// @nodoc
class _$NotificationReleaseTargetCopyWithImpl<$Res>
    implements $NotificationReleaseTargetCopyWith<$Res> {
  _$NotificationReleaseTargetCopyWithImpl(this._self, this._then);

  final NotificationReleaseTarget _self;
  final $Res Function(NotificationReleaseTarget) _then;

/// Create a copy of NotificationTarget
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? url = null,}) {
  return _then(NotificationReleaseTarget(
null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as Uri,
  ));
}


}

// dart format on
