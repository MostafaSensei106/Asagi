// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_insights.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NotificationInsights {

 int get completedCount; int get savedBytes; List<String> get interruptedJobIds;
/// Create a copy of NotificationInsights
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationInsightsCopyWith<NotificationInsights> get copyWith => _$NotificationInsightsCopyWithImpl<NotificationInsights>(this as NotificationInsights, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as NotificationInsights;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationInsights&&(identical(other.completedCount, _this.completedCount) || other.completedCount == _this.completedCount)&&(identical(other.savedBytes, _this.savedBytes) || other.savedBytes == _this.savedBytes)&&const DeepCollectionEquality().equals(other.interruptedJobIds, _this.interruptedJobIds));
}


@override
int get hashCode {
  final _this = this as NotificationInsights;
  return Object.hash(runtimeType,_this.completedCount,_this.savedBytes,const DeepCollectionEquality().hash(_this.interruptedJobIds));
}

@override
String toString() {
  final _this = this as NotificationInsights;
  return 'NotificationInsights(completedCount: ${_this.completedCount}, savedBytes: ${_this.savedBytes}, interruptedJobIds: ${_this.interruptedJobIds})';
}


}

/// @nodoc
abstract mixin class $NotificationInsightsCopyWith<$Res>  {
  factory $NotificationInsightsCopyWith(NotificationInsights value, $Res Function(NotificationInsights) _then) = _$NotificationInsightsCopyWithImpl;
@useResult
$Res call({
 int completedCount, int savedBytes, List<String> interruptedJobIds
});




}
/// @nodoc
class _$NotificationInsightsCopyWithImpl<$Res>
    implements $NotificationInsightsCopyWith<$Res> {
  _$NotificationInsightsCopyWithImpl(this._self, this._then);

  final NotificationInsights _self;
  final $Res Function(NotificationInsights) _then;

/// Create a copy of NotificationInsights
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? completedCount = null,Object? savedBytes = null,Object? interruptedJobIds = null,}) {
  return _then(NotificationInsights(
completedCount: null == completedCount ? _self.completedCount : completedCount // ignore: cast_nullable_to_non_nullable
as int,savedBytes: null == savedBytes ? _self.savedBytes : savedBytes // ignore: cast_nullable_to_non_nullable
as int,interruptedJobIds: null == interruptedJobIds ? _self.interruptedJobIds : interruptedJobIds // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [NotificationInsights].
extension NotificationInsightsPatterns on NotificationInsights {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NotificationInsights value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NotificationInsights() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NotificationInsights value)  $default,){
final _that = this;
switch (_that) {
case _NotificationInsights():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NotificationInsights value)?  $default,){
final _that = this;
switch (_that) {
case _NotificationInsights() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int completedCount,  int savedBytes,  List<String> interruptedJobIds)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NotificationInsights() when $default != null:
return $default(_that.completedCount,_that.savedBytes,_that.interruptedJobIds);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int completedCount,  int savedBytes,  List<String> interruptedJobIds)  $default,) {final _that = this;
switch (_that) {
case _NotificationInsights():
return $default(_that.completedCount,_that.savedBytes,_that.interruptedJobIds);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int completedCount,  int savedBytes,  List<String> interruptedJobIds)?  $default,) {final _that = this;
switch (_that) {
case _NotificationInsights() when $default != null:
return $default(_that.completedCount,_that.savedBytes,_that.interruptedJobIds);case _:
  return null;

}
}

}

/// @nodoc


class _NotificationInsights implements NotificationInsights {
  const _NotificationInsights({required this.completedCount, required this.savedBytes, required  List<String> interruptedJobIds}): _interruptedJobIds = interruptedJobIds;
  

@override final  int completedCount;
@override final  int savedBytes;
 final  List<String> _interruptedJobIds;
@override List<String> get interruptedJobIds {
  if (_interruptedJobIds is EqualUnmodifiableListView) return _interruptedJobIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_interruptedJobIds);
}


/// Create a copy of NotificationInsights
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificationInsightsCopyWith<_NotificationInsights> get copyWith => __$NotificationInsightsCopyWithImpl<_NotificationInsights>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotificationInsights&&(identical(other.completedCount, completedCount) || other.completedCount == completedCount)&&(identical(other.savedBytes, savedBytes) || other.savedBytes == savedBytes)&&const DeepCollectionEquality().equals(other.interruptedJobIds, _interruptedJobIds));
}


@override
int get hashCode {
    return Object.hash(runtimeType,completedCount,savedBytes,const DeepCollectionEquality().hash(_interruptedJobIds));
}

@override
String toString() {
    return 'NotificationInsights(completedCount: $completedCount, savedBytes: $savedBytes, interruptedJobIds: $interruptedJobIds)';
}


}

/// @nodoc
abstract mixin class _$NotificationInsightsCopyWith<$Res> implements $NotificationInsightsCopyWith<$Res> {
  factory _$NotificationInsightsCopyWith(_NotificationInsights value, $Res Function(_NotificationInsights) _then) = __$NotificationInsightsCopyWithImpl;
@override @useResult
$Res call({
 int completedCount, int savedBytes, List<String> interruptedJobIds
});




}
/// @nodoc
class __$NotificationInsightsCopyWithImpl<$Res>
    implements _$NotificationInsightsCopyWith<$Res> {
  __$NotificationInsightsCopyWithImpl(this._self, this._then);

  final _NotificationInsights _self;
  final $Res Function(_NotificationInsights) _then;

/// Create a copy of NotificationInsights
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? completedCount = null,Object? savedBytes = null,Object? interruptedJobIds = null,}) {
  return _then(_NotificationInsights(
completedCount: null == completedCount ? _self.completedCount : completedCount // ignore: cast_nullable_to_non_nullable
as int,savedBytes: null == savedBytes ? _self.savedBytes : savedBytes // ignore: cast_nullable_to_non_nullable
as int,interruptedJobIds: null == interruptedJobIds ? _self._interruptedJobIds : interruptedJobIds // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
