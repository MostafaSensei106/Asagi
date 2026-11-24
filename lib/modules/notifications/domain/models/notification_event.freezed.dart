// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NotificationEvent {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'NotificationEvent()';
}


}

/// @nodoc
class $NotificationEventCopyWith<$Res>  {
$NotificationEventCopyWith(NotificationEvent _, $Res Function(NotificationEvent) __);
}


/// Adds pattern-matching-related methods to [NotificationEvent].
extension NotificationEventPatterns on NotificationEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( JobCompletedNotification value)?  completed,TResult Function( JobFailedNotification value)?  failed,TResult Function( JobsInterruptedNotification value)?  interrupted,TResult Function( ReleaseNotification value)?  release,TResult Function( SavingsNotification value)?  savings,required TResult orElse(),}){
final _that = this;
switch (_that) {
case JobCompletedNotification() when completed != null:
return completed(_that);case JobFailedNotification() when failed != null:
return failed(_that);case JobsInterruptedNotification() when interrupted != null:
return interrupted(_that);case ReleaseNotification() when release != null:
return release(_that);case SavingsNotification() when savings != null:
return savings(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( JobCompletedNotification value)  completed,required TResult Function( JobFailedNotification value)  failed,required TResult Function( JobsInterruptedNotification value)  interrupted,required TResult Function( ReleaseNotification value)  release,required TResult Function( SavingsNotification value)  savings,}){
final _that = this;
switch (_that) {
case JobCompletedNotification():
return completed(_that);case JobFailedNotification():
return failed(_that);case JobsInterruptedNotification():
return interrupted(_that);case ReleaseNotification():
return release(_that);case SavingsNotification():
return savings(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( JobCompletedNotification value)?  completed,TResult? Function( JobFailedNotification value)?  failed,TResult? Function( JobsInterruptedNotification value)?  interrupted,TResult? Function( ReleaseNotification value)?  release,TResult? Function( SavingsNotification value)?  savings,}){
final _that = this;
switch (_that) {
case JobCompletedNotification() when completed != null:
return completed(_that);case JobFailedNotification() when failed != null:
return failed(_that);case JobsInterruptedNotification() when interrupted != null:
return interrupted(_that);case ReleaseNotification() when release != null:
return release(_that);case SavingsNotification() when savings != null:
return savings(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String jobId,  String sourceName,  int originalBytes,  int outputBytes,  String? warning)?  completed,TResult Function( String jobId,  String errorCode)?  failed,TResult Function( int count)?  interrupted,TResult Function( AppRelease release)?  release,TResult Function( int count,  int savedBytes)?  savings,required TResult orElse(),}) {final _that = this;
switch (_that) {
case JobCompletedNotification() when completed != null:
return completed(_that.jobId,_that.sourceName,_that.originalBytes,_that.outputBytes,_that.warning);case JobFailedNotification() when failed != null:
return failed(_that.jobId,_that.errorCode);case JobsInterruptedNotification() when interrupted != null:
return interrupted(_that.count);case ReleaseNotification() when release != null:
return release(_that.release);case SavingsNotification() when savings != null:
return savings(_that.count,_that.savedBytes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String jobId,  String sourceName,  int originalBytes,  int outputBytes,  String? warning)  completed,required TResult Function( String jobId,  String errorCode)  failed,required TResult Function( int count)  interrupted,required TResult Function( AppRelease release)  release,required TResult Function( int count,  int savedBytes)  savings,}) {final _that = this;
switch (_that) {
case JobCompletedNotification():
return completed(_that.jobId,_that.sourceName,_that.originalBytes,_that.outputBytes,_that.warning);case JobFailedNotification():
return failed(_that.jobId,_that.errorCode);case JobsInterruptedNotification():
return interrupted(_that.count);case ReleaseNotification():
return release(_that.release);case SavingsNotification():
return savings(_that.count,_that.savedBytes);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String jobId,  String sourceName,  int originalBytes,  int outputBytes,  String? warning)?  completed,TResult? Function( String jobId,  String errorCode)?  failed,TResult? Function( int count)?  interrupted,TResult? Function( AppRelease release)?  release,TResult? Function( int count,  int savedBytes)?  savings,}) {final _that = this;
switch (_that) {
case JobCompletedNotification() when completed != null:
return completed(_that.jobId,_that.sourceName,_that.originalBytes,_that.outputBytes,_that.warning);case JobFailedNotification() when failed != null:
return failed(_that.jobId,_that.errorCode);case JobsInterruptedNotification() when interrupted != null:
return interrupted(_that.count);case ReleaseNotification() when release != null:
return release(_that.release);case SavingsNotification() when savings != null:
return savings(_that.count,_that.savedBytes);case _:
  return null;

}
}

}

/// @nodoc


class JobCompletedNotification implements NotificationEvent {
  const JobCompletedNotification({required this.jobId, required this.sourceName, required this.originalBytes, required this.outputBytes, this.warning});
  

 final  String jobId;
 final  String sourceName;
 final  int originalBytes;
 final  int outputBytes;
 final  String? warning;

/// Create a copy of NotificationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$JobCompletedNotificationCopyWith<JobCompletedNotification> get copyWith => _$JobCompletedNotificationCopyWithImpl<JobCompletedNotification>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is JobCompletedNotification&&(identical(other.jobId, jobId) || other.jobId == jobId)&&(identical(other.sourceName, sourceName) || other.sourceName == sourceName)&&(identical(other.originalBytes, originalBytes) || other.originalBytes == originalBytes)&&(identical(other.outputBytes, outputBytes) || other.outputBytes == outputBytes)&&(identical(other.warning, warning) || other.warning == warning));
}


@override
int get hashCode {
    return Object.hash(runtimeType,jobId,sourceName,originalBytes,outputBytes,warning);
}

@override
String toString() {
    return 'NotificationEvent.completed(jobId: $jobId, sourceName: $sourceName, originalBytes: $originalBytes, outputBytes: $outputBytes, warning: $warning)';
}


}

/// @nodoc
abstract mixin class $JobCompletedNotificationCopyWith<$Res> implements $NotificationEventCopyWith<$Res> {
  factory $JobCompletedNotificationCopyWith(JobCompletedNotification value, $Res Function(JobCompletedNotification) _then) = _$JobCompletedNotificationCopyWithImpl;
@useResult
$Res call({
 String jobId, String sourceName, int originalBytes, int outputBytes, String? warning
});




}
/// @nodoc
class _$JobCompletedNotificationCopyWithImpl<$Res>
    implements $JobCompletedNotificationCopyWith<$Res> {
  _$JobCompletedNotificationCopyWithImpl(this._self, this._then);

  final JobCompletedNotification _self;
  final $Res Function(JobCompletedNotification) _then;

/// Create a copy of NotificationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? jobId = null,Object? sourceName = null,Object? originalBytes = null,Object? outputBytes = null,Object? warning = freezed,}) {
  return _then(JobCompletedNotification(
jobId: null == jobId ? _self.jobId : jobId // ignore: cast_nullable_to_non_nullable
as String,sourceName: null == sourceName ? _self.sourceName : sourceName // ignore: cast_nullable_to_non_nullable
as String,originalBytes: null == originalBytes ? _self.originalBytes : originalBytes // ignore: cast_nullable_to_non_nullable
as int,outputBytes: null == outputBytes ? _self.outputBytes : outputBytes // ignore: cast_nullable_to_non_nullable
as int,warning: freezed == warning ? _self.warning : warning // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class JobFailedNotification implements NotificationEvent {
  const JobFailedNotification({required this.jobId, required this.errorCode});
  

 final  String jobId;
 final  String errorCode;

/// Create a copy of NotificationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$JobFailedNotificationCopyWith<JobFailedNotification> get copyWith => _$JobFailedNotificationCopyWithImpl<JobFailedNotification>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is JobFailedNotification&&(identical(other.jobId, jobId) || other.jobId == jobId)&&(identical(other.errorCode, errorCode) || other.errorCode == errorCode));
}


@override
int get hashCode {
    return Object.hash(runtimeType,jobId,errorCode);
}

@override
String toString() {
    return 'NotificationEvent.failed(jobId: $jobId, errorCode: $errorCode)';
}


}

/// @nodoc
abstract mixin class $JobFailedNotificationCopyWith<$Res> implements $NotificationEventCopyWith<$Res> {
  factory $JobFailedNotificationCopyWith(JobFailedNotification value, $Res Function(JobFailedNotification) _then) = _$JobFailedNotificationCopyWithImpl;
@useResult
$Res call({
 String jobId, String errorCode
});




}
/// @nodoc
class _$JobFailedNotificationCopyWithImpl<$Res>
    implements $JobFailedNotificationCopyWith<$Res> {
  _$JobFailedNotificationCopyWithImpl(this._self, this._then);

  final JobFailedNotification _self;
  final $Res Function(JobFailedNotification) _then;

/// Create a copy of NotificationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? jobId = null,Object? errorCode = null,}) {
  return _then(JobFailedNotification(
jobId: null == jobId ? _self.jobId : jobId // ignore: cast_nullable_to_non_nullable
as String,errorCode: null == errorCode ? _self.errorCode : errorCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class JobsInterruptedNotification implements NotificationEvent {
  const JobsInterruptedNotification({required this.count});
  

 final  int count;

/// Create a copy of NotificationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$JobsInterruptedNotificationCopyWith<JobsInterruptedNotification> get copyWith => _$JobsInterruptedNotificationCopyWithImpl<JobsInterruptedNotification>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is JobsInterruptedNotification&&(identical(other.count, count) || other.count == count));
}


@override
int get hashCode {
    return Object.hash(runtimeType,count);
}

@override
String toString() {
    return 'NotificationEvent.interrupted(count: $count)';
}


}

/// @nodoc
abstract mixin class $JobsInterruptedNotificationCopyWith<$Res> implements $NotificationEventCopyWith<$Res> {
  factory $JobsInterruptedNotificationCopyWith(JobsInterruptedNotification value, $Res Function(JobsInterruptedNotification) _then) = _$JobsInterruptedNotificationCopyWithImpl;
@useResult
$Res call({
 int count
});




}
/// @nodoc
class _$JobsInterruptedNotificationCopyWithImpl<$Res>
    implements $JobsInterruptedNotificationCopyWith<$Res> {
  _$JobsInterruptedNotificationCopyWithImpl(this._self, this._then);

  final JobsInterruptedNotification _self;
  final $Res Function(JobsInterruptedNotification) _then;

/// Create a copy of NotificationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? count = null,}) {
  return _then(JobsInterruptedNotification(
count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class ReleaseNotification implements NotificationEvent {
  const ReleaseNotification({required this.release});
  

 final  AppRelease release;

/// Create a copy of NotificationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReleaseNotificationCopyWith<ReleaseNotification> get copyWith => _$ReleaseNotificationCopyWithImpl<ReleaseNotification>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is ReleaseNotification&&(identical(other.release, release) || other.release == release));
}


@override
int get hashCode {
    return Object.hash(runtimeType,release);
}

@override
String toString() {
    return 'NotificationEvent.release(release: $release)';
}


}

/// @nodoc
abstract mixin class $ReleaseNotificationCopyWith<$Res> implements $NotificationEventCopyWith<$Res> {
  factory $ReleaseNotificationCopyWith(ReleaseNotification value, $Res Function(ReleaseNotification) _then) = _$ReleaseNotificationCopyWithImpl;
@useResult
$Res call({
 AppRelease release
});


$AppReleaseCopyWith<$Res> get release;

}
/// @nodoc
class _$ReleaseNotificationCopyWithImpl<$Res>
    implements $ReleaseNotificationCopyWith<$Res> {
  _$ReleaseNotificationCopyWithImpl(this._self, this._then);

  final ReleaseNotification _self;
  final $Res Function(ReleaseNotification) _then;

/// Create a copy of NotificationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? release = null,}) {
  return _then(ReleaseNotification(
release: null == release ? _self.release : release // ignore: cast_nullable_to_non_nullable
as AppRelease,
  ));
}

/// Create a copy of NotificationEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppReleaseCopyWith<$Res> get release {
  
  return $AppReleaseCopyWith<$Res>(_self.release, (value) {
    return _then(_self.copyWith(release: value));
  });
}
}

/// @nodoc


class SavingsNotification implements NotificationEvent {
  const SavingsNotification({required this.count, required this.savedBytes});
  

 final  int count;
 final  int savedBytes;

/// Create a copy of NotificationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SavingsNotificationCopyWith<SavingsNotification> get copyWith => _$SavingsNotificationCopyWithImpl<SavingsNotification>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is SavingsNotification&&(identical(other.count, count) || other.count == count)&&(identical(other.savedBytes, savedBytes) || other.savedBytes == savedBytes));
}


@override
int get hashCode {
    return Object.hash(runtimeType,count,savedBytes);
}

@override
String toString() {
    return 'NotificationEvent.savings(count: $count, savedBytes: $savedBytes)';
}


}

/// @nodoc
abstract mixin class $SavingsNotificationCopyWith<$Res> implements $NotificationEventCopyWith<$Res> {
  factory $SavingsNotificationCopyWith(SavingsNotification value, $Res Function(SavingsNotification) _then) = _$SavingsNotificationCopyWithImpl;
@useResult
$Res call({
 int count, int savedBytes
});




}
/// @nodoc
class _$SavingsNotificationCopyWithImpl<$Res>
    implements $SavingsNotificationCopyWith<$Res> {
  _$SavingsNotificationCopyWithImpl(this._self, this._then);

  final SavingsNotification _self;
  final $Res Function(SavingsNotification) _then;

/// Create a copy of NotificationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? count = null,Object? savedBytes = null,}) {
  return _then(SavingsNotification(
count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,savedBytes: null == savedBytes ? _self.savedBytes : savedBytes // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
