// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'compression_defaults.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CompressionDefaults {

 double get targetMb; CompressionPreferences get preferences;
/// Create a copy of CompressionDefaults
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CompressionDefaultsCopyWith<CompressionDefaults> get copyWith => _$CompressionDefaultsCopyWithImpl<CompressionDefaults>(this as CompressionDefaults, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as CompressionDefaults;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CompressionDefaults&&(identical(other.targetMb, _this.targetMb) || other.targetMb == _this.targetMb)&&(identical(other.preferences, _this.preferences) || other.preferences == _this.preferences));
}


@override
int get hashCode {
  final _this = this as CompressionDefaults;
  return Object.hash(runtimeType,_this.targetMb,_this.preferences);
}

@override
String toString() {
  final _this = this as CompressionDefaults;
  return 'CompressionDefaults(targetMb: ${_this.targetMb}, preferences: ${_this.preferences})';
}


}

/// @nodoc
abstract mixin class $CompressionDefaultsCopyWith<$Res>  {
  factory $CompressionDefaultsCopyWith(CompressionDefaults value, $Res Function(CompressionDefaults) _then) = _$CompressionDefaultsCopyWithImpl;
@useResult
$Res call({
 double targetMb, CompressionPreferences preferences
});




}
/// @nodoc
class _$CompressionDefaultsCopyWithImpl<$Res>
    implements $CompressionDefaultsCopyWith<$Res> {
  _$CompressionDefaultsCopyWithImpl(this._self, this._then);

  final CompressionDefaults _self;
  final $Res Function(CompressionDefaults) _then;

/// Create a copy of CompressionDefaults
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? targetMb = null,Object? preferences = null,}) {
  return _then(CompressionDefaults(
targetMb: null == targetMb ? _self.targetMb : targetMb // ignore: cast_nullable_to_non_nullable
as double,preferences: null == preferences ? _self.preferences : preferences // ignore: cast_nullable_to_non_nullable
as CompressionPreferences,
  ));
}

}


/// Adds pattern-matching-related methods to [CompressionDefaults].
extension CompressionDefaultsPatterns on CompressionDefaults {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CompressionDefaults value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CompressionDefaults() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CompressionDefaults value)  $default,){
final _that = this;
switch (_that) {
case _CompressionDefaults():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CompressionDefaults value)?  $default,){
final _that = this;
switch (_that) {
case _CompressionDefaults() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double targetMb,  CompressionPreferences preferences)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CompressionDefaults() when $default != null:
return $default(_that.targetMb,_that.preferences);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double targetMb,  CompressionPreferences preferences)  $default,) {final _that = this;
switch (_that) {
case _CompressionDefaults():
return $default(_that.targetMb,_that.preferences);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double targetMb,  CompressionPreferences preferences)?  $default,) {final _that = this;
switch (_that) {
case _CompressionDefaults() when $default != null:
return $default(_that.targetMb,_that.preferences);case _:
  return null;

}
}

}

/// @nodoc


class _CompressionDefaults implements CompressionDefaults {
  const _CompressionDefaults({this.targetMb = 16, this.preferences = const CompressionPreferences()});
  

@override@JsonKey() final  double targetMb;
@override@JsonKey() final  CompressionPreferences preferences;

/// Create a copy of CompressionDefaults
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CompressionDefaultsCopyWith<_CompressionDefaults> get copyWith => __$CompressionDefaultsCopyWithImpl<_CompressionDefaults>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CompressionDefaults&&(identical(other.targetMb, targetMb) || other.targetMb == targetMb)&&(identical(other.preferences, preferences) || other.preferences == preferences));
}


@override
int get hashCode {
    return Object.hash(runtimeType,targetMb,preferences);
}

@override
String toString() {
    return 'CompressionDefaults(targetMb: $targetMb, preferences: $preferences)';
}


}

/// @nodoc
abstract mixin class _$CompressionDefaultsCopyWith<$Res> implements $CompressionDefaultsCopyWith<$Res> {
  factory _$CompressionDefaultsCopyWith(_CompressionDefaults value, $Res Function(_CompressionDefaults) _then) = __$CompressionDefaultsCopyWithImpl;
@override @useResult
$Res call({
 double targetMb, CompressionPreferences preferences
});




}
/// @nodoc
class __$CompressionDefaultsCopyWithImpl<$Res>
    implements _$CompressionDefaultsCopyWith<$Res> {
  __$CompressionDefaultsCopyWithImpl(this._self, this._then);

  final _CompressionDefaults _self;
  final $Res Function(_CompressionDefaults) _then;

/// Create a copy of CompressionDefaults
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? targetMb = null,Object? preferences = null,}) {
  return _then(_CompressionDefaults(
targetMb: null == targetMb ? _self.targetMb : targetMb // ignore: cast_nullable_to_non_nullable
as double,preferences: null == preferences ? _self.preferences : preferences // ignore: cast_nullable_to_non_nullable
as CompressionPreferences,
  ));
}


}

// dart format on
