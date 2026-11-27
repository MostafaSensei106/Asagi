// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_result_actions_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeResultActionsState {

 bool get saved;
/// Create a copy of HomeResultActionsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeResultActionsStateCopyWith<HomeResultActionsState> get copyWith => _$HomeResultActionsStateCopyWithImpl<HomeResultActionsState>(this as HomeResultActionsState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as HomeResultActionsState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeResultActionsState&&(identical(other.saved, _this.saved) || other.saved == _this.saved));
}


@override
int get hashCode {
  final _this = this as HomeResultActionsState;
  return Object.hash(runtimeType,_this.saved);
}

@override
String toString() {
  final _this = this as HomeResultActionsState;
  return 'HomeResultActionsState(saved: ${_this.saved})';
}


}

/// @nodoc
abstract mixin class $HomeResultActionsStateCopyWith<$Res>  {
  factory $HomeResultActionsStateCopyWith(HomeResultActionsState value, $Res Function(HomeResultActionsState) _then) = _$HomeResultActionsStateCopyWithImpl;
@useResult
$Res call({
 bool saved
});




}
/// @nodoc
class _$HomeResultActionsStateCopyWithImpl<$Res>
    implements $HomeResultActionsStateCopyWith<$Res> {
  _$HomeResultActionsStateCopyWithImpl(this._self, this._then);

  final HomeResultActionsState _self;
  final $Res Function(HomeResultActionsState) _then;

/// Create a copy of HomeResultActionsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? saved = null,}) {
  return _then(_self.copyWith(
saved: null == saved ? _self.saved : saved // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [HomeResultActionsState].
extension HomeResultActionsStatePatterns on HomeResultActionsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( HomeResultIdle value)?  idle,TResult Function( HomeResultBusy value)?  busy,TResult Function( HomeResultFailure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case HomeResultIdle() when idle != null:
return idle(_that);case HomeResultBusy() when busy != null:
return busy(_that);case HomeResultFailure() when failure != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( HomeResultIdle value)  idle,required TResult Function( HomeResultBusy value)  busy,required TResult Function( HomeResultFailure value)  failure,}){
final _that = this;
switch (_that) {
case HomeResultIdle():
return idle(_that);case HomeResultBusy():
return busy(_that);case HomeResultFailure():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( HomeResultIdle value)?  idle,TResult? Function( HomeResultBusy value)?  busy,TResult? Function( HomeResultFailure value)?  failure,}){
final _that = this;
switch (_that) {
case HomeResultIdle() when idle != null:
return idle(_that);case HomeResultBusy() when busy != null:
return busy(_that);case HomeResultFailure() when failure != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( bool saved)?  idle,TResult Function( HomeResultAction action,  bool saved)?  busy,TResult Function( HomeResultAction action,  bool saved)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case HomeResultIdle() when idle != null:
return idle(_that.saved);case HomeResultBusy() when busy != null:
return busy(_that.action,_that.saved);case HomeResultFailure() when failure != null:
return failure(_that.action,_that.saved);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( bool saved)  idle,required TResult Function( HomeResultAction action,  bool saved)  busy,required TResult Function( HomeResultAction action,  bool saved)  failure,}) {final _that = this;
switch (_that) {
case HomeResultIdle():
return idle(_that.saved);case HomeResultBusy():
return busy(_that.action,_that.saved);case HomeResultFailure():
return failure(_that.action,_that.saved);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( bool saved)?  idle,TResult? Function( HomeResultAction action,  bool saved)?  busy,TResult? Function( HomeResultAction action,  bool saved)?  failure,}) {final _that = this;
switch (_that) {
case HomeResultIdle() when idle != null:
return idle(_that.saved);case HomeResultBusy() when busy != null:
return busy(_that.action,_that.saved);case HomeResultFailure() when failure != null:
return failure(_that.action,_that.saved);case _:
  return null;

}
}

}

/// @nodoc


class HomeResultIdle implements HomeResultActionsState {
  const HomeResultIdle({this.saved = false});
  

@override@JsonKey() final  bool saved;

/// Create a copy of HomeResultActionsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeResultIdleCopyWith<HomeResultIdle> get copyWith => _$HomeResultIdleCopyWithImpl<HomeResultIdle>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeResultIdle&&(identical(other.saved, saved) || other.saved == saved));
}


@override
int get hashCode {
    return Object.hash(runtimeType,saved);
}

@override
String toString() {
    return 'HomeResultActionsState.idle(saved: $saved)';
}


}

/// @nodoc
abstract mixin class $HomeResultIdleCopyWith<$Res> implements $HomeResultActionsStateCopyWith<$Res> {
  factory $HomeResultIdleCopyWith(HomeResultIdle value, $Res Function(HomeResultIdle) _then) = _$HomeResultIdleCopyWithImpl;
@override @useResult
$Res call({
 bool saved
});




}
/// @nodoc
class _$HomeResultIdleCopyWithImpl<$Res>
    implements $HomeResultIdleCopyWith<$Res> {
  _$HomeResultIdleCopyWithImpl(this._self, this._then);

  final HomeResultIdle _self;
  final $Res Function(HomeResultIdle) _then;

/// Create a copy of HomeResultActionsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? saved = null,}) {
  return _then(HomeResultIdle(
saved: null == saved ? _self.saved : saved // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class HomeResultBusy implements HomeResultActionsState {
  const HomeResultBusy(this.action, {required this.saved});
  

 final  HomeResultAction action;
@override final  bool saved;

/// Create a copy of HomeResultActionsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeResultBusyCopyWith<HomeResultBusy> get copyWith => _$HomeResultBusyCopyWithImpl<HomeResultBusy>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeResultBusy&&(identical(other.action, action) || other.action == action)&&(identical(other.saved, saved) || other.saved == saved));
}


@override
int get hashCode {
    return Object.hash(runtimeType,action,saved);
}

@override
String toString() {
    return 'HomeResultActionsState.busy(action: $action, saved: $saved)';
}


}

/// @nodoc
abstract mixin class $HomeResultBusyCopyWith<$Res> implements $HomeResultActionsStateCopyWith<$Res> {
  factory $HomeResultBusyCopyWith(HomeResultBusy value, $Res Function(HomeResultBusy) _then) = _$HomeResultBusyCopyWithImpl;
@override @useResult
$Res call({
 HomeResultAction action, bool saved
});




}
/// @nodoc
class _$HomeResultBusyCopyWithImpl<$Res>
    implements $HomeResultBusyCopyWith<$Res> {
  _$HomeResultBusyCopyWithImpl(this._self, this._then);

  final HomeResultBusy _self;
  final $Res Function(HomeResultBusy) _then;

/// Create a copy of HomeResultActionsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? action = null,Object? saved = null,}) {
  return _then(HomeResultBusy(
null == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as HomeResultAction,saved: null == saved ? _self.saved : saved // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class HomeResultFailure implements HomeResultActionsState {
  const HomeResultFailure(this.action, {required this.saved});
  

 final  HomeResultAction action;
@override final  bool saved;

/// Create a copy of HomeResultActionsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeResultFailureCopyWith<HomeResultFailure> get copyWith => _$HomeResultFailureCopyWithImpl<HomeResultFailure>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeResultFailure&&(identical(other.action, action) || other.action == action)&&(identical(other.saved, saved) || other.saved == saved));
}


@override
int get hashCode {
    return Object.hash(runtimeType,action,saved);
}

@override
String toString() {
    return 'HomeResultActionsState.failure(action: $action, saved: $saved)';
}


}

/// @nodoc
abstract mixin class $HomeResultFailureCopyWith<$Res> implements $HomeResultActionsStateCopyWith<$Res> {
  factory $HomeResultFailureCopyWith(HomeResultFailure value, $Res Function(HomeResultFailure) _then) = _$HomeResultFailureCopyWithImpl;
@override @useResult
$Res call({
 HomeResultAction action, bool saved
});




}
/// @nodoc
class _$HomeResultFailureCopyWithImpl<$Res>
    implements $HomeResultFailureCopyWith<$Res> {
  _$HomeResultFailureCopyWithImpl(this._self, this._then);

  final HomeResultFailure _self;
  final $Res Function(HomeResultFailure) _then;

/// Create a copy of HomeResultActionsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? action = null,Object? saved = null,}) {
  return _then(HomeResultFailure(
null == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as HomeResultAction,saved: null == saved ? _self.saved : saved // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
