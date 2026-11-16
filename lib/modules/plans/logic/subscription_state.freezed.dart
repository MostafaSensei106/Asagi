// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subscription_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SubscriptionState {

 SubscriptionOfferInfo? get offer; bool get isLoading; bool get isPurchasing; bool get isActive; int get currentDiscount; int get nextDiscount; int get months; SubscriptionFailure? get error; SubscriptionNotice? get message;
/// Create a copy of SubscriptionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubscriptionStateCopyWith<SubscriptionState> get copyWith => _$SubscriptionStateCopyWithImpl<SubscriptionState>(this as SubscriptionState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as SubscriptionState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubscriptionState&&(identical(other.offer, _this.offer) || other.offer == _this.offer)&&(identical(other.isLoading, _this.isLoading) || other.isLoading == _this.isLoading)&&(identical(other.isPurchasing, _this.isPurchasing) || other.isPurchasing == _this.isPurchasing)&&(identical(other.isActive, _this.isActive) || other.isActive == _this.isActive)&&(identical(other.currentDiscount, _this.currentDiscount) || other.currentDiscount == _this.currentDiscount)&&(identical(other.nextDiscount, _this.nextDiscount) || other.nextDiscount == _this.nextDiscount)&&(identical(other.months, _this.months) || other.months == _this.months)&&(identical(other.error, _this.error) || other.error == _this.error)&&(identical(other.message, _this.message) || other.message == _this.message));
}


@override
int get hashCode {
  final _this = this as SubscriptionState;
  return Object.hash(runtimeType,_this.offer,_this.isLoading,_this.isPurchasing,_this.isActive,_this.currentDiscount,_this.nextDiscount,_this.months,_this.error,_this.message);
}

@override
String toString() {
  final _this = this as SubscriptionState;
  return 'SubscriptionState(offer: ${_this.offer}, isLoading: ${_this.isLoading}, isPurchasing: ${_this.isPurchasing}, isActive: ${_this.isActive}, currentDiscount: ${_this.currentDiscount}, nextDiscount: ${_this.nextDiscount}, months: ${_this.months}, error: ${_this.error}, message: ${_this.message})';
}


}

/// @nodoc
abstract mixin class $SubscriptionStateCopyWith<$Res>  {
  factory $SubscriptionStateCopyWith(SubscriptionState value, $Res Function(SubscriptionState) _then) = _$SubscriptionStateCopyWithImpl;
@useResult
$Res call({
 SubscriptionOfferInfo? offer, bool isLoading, bool isPurchasing, bool isActive, int currentDiscount, int nextDiscount, int months, SubscriptionFailure? error, SubscriptionNotice? message
});


$SubscriptionOfferInfoCopyWith<$Res>? get offer;

}
/// @nodoc
class _$SubscriptionStateCopyWithImpl<$Res>
    implements $SubscriptionStateCopyWith<$Res> {
  _$SubscriptionStateCopyWithImpl(this._self, this._then);

  final SubscriptionState _self;
  final $Res Function(SubscriptionState) _then;

/// Create a copy of SubscriptionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? offer = freezed,Object? isLoading = null,Object? isPurchasing = null,Object? isActive = null,Object? currentDiscount = null,Object? nextDiscount = null,Object? months = null,Object? error = freezed,Object? message = freezed,}) {
  return _then(SubscriptionState(
offer: freezed == offer ? _self.offer : offer // ignore: cast_nullable_to_non_nullable
as SubscriptionOfferInfo?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isPurchasing: null == isPurchasing ? _self.isPurchasing : isPurchasing // ignore: cast_nullable_to_non_nullable
as bool,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,currentDiscount: null == currentDiscount ? _self.currentDiscount : currentDiscount // ignore: cast_nullable_to_non_nullable
as int,nextDiscount: null == nextDiscount ? _self.nextDiscount : nextDiscount // ignore: cast_nullable_to_non_nullable
as int,months: null == months ? _self.months : months // ignore: cast_nullable_to_non_nullable
as int,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as SubscriptionFailure?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as SubscriptionNotice?,
  ));
}
/// Create a copy of SubscriptionState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SubscriptionOfferInfoCopyWith<$Res>? get offer {
    if (_self.offer == null) {
    return null;
  }

  return $SubscriptionOfferInfoCopyWith<$Res>(_self.offer!, (value) {
    return _then(_self.copyWith(offer: value));
  });
}
}


/// Adds pattern-matching-related methods to [SubscriptionState].
extension SubscriptionStatePatterns on SubscriptionState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubscriptionState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubscriptionState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubscriptionState value)  $default,){
final _that = this;
switch (_that) {
case _SubscriptionState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubscriptionState value)?  $default,){
final _that = this;
switch (_that) {
case _SubscriptionState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( SubscriptionOfferInfo? offer,  bool isLoading,  bool isPurchasing,  bool isActive,  int currentDiscount,  int nextDiscount,  int months,  SubscriptionFailure? error,  SubscriptionNotice? message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubscriptionState() when $default != null:
return $default(_that.offer,_that.isLoading,_that.isPurchasing,_that.isActive,_that.currentDiscount,_that.nextDiscount,_that.months,_that.error,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( SubscriptionOfferInfo? offer,  bool isLoading,  bool isPurchasing,  bool isActive,  int currentDiscount,  int nextDiscount,  int months,  SubscriptionFailure? error,  SubscriptionNotice? message)  $default,) {final _that = this;
switch (_that) {
case _SubscriptionState():
return $default(_that.offer,_that.isLoading,_that.isPurchasing,_that.isActive,_that.currentDiscount,_that.nextDiscount,_that.months,_that.error,_that.message);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( SubscriptionOfferInfo? offer,  bool isLoading,  bool isPurchasing,  bool isActive,  int currentDiscount,  int nextDiscount,  int months,  SubscriptionFailure? error,  SubscriptionNotice? message)?  $default,) {final _that = this;
switch (_that) {
case _SubscriptionState() when $default != null:
return $default(_that.offer,_that.isLoading,_that.isPurchasing,_that.isActive,_that.currentDiscount,_that.nextDiscount,_that.months,_that.error,_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _SubscriptionState implements SubscriptionState {
  const _SubscriptionState({this.offer, this.isLoading = false, this.isPurchasing = false, this.isActive = false, this.currentDiscount = 0, this.nextDiscount = 2, this.months = 0, this.error, this.message});
  

@override final  SubscriptionOfferInfo? offer;
@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isPurchasing;
@override@JsonKey() final  bool isActive;
@override@JsonKey() final  int currentDiscount;
@override@JsonKey() final  int nextDiscount;
@override@JsonKey() final  int months;
@override final  SubscriptionFailure? error;
@override final  SubscriptionNotice? message;

/// Create a copy of SubscriptionState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubscriptionStateCopyWith<_SubscriptionState> get copyWith => __$SubscriptionStateCopyWithImpl<_SubscriptionState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubscriptionState&&(identical(other.offer, offer) || other.offer == offer)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isPurchasing, isPurchasing) || other.isPurchasing == isPurchasing)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.currentDiscount, currentDiscount) || other.currentDiscount == currentDiscount)&&(identical(other.nextDiscount, nextDiscount) || other.nextDiscount == nextDiscount)&&(identical(other.months, months) || other.months == months)&&(identical(other.error, error) || other.error == error)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode {
    return Object.hash(runtimeType,offer,isLoading,isPurchasing,isActive,currentDiscount,nextDiscount,months,error,message);
}

@override
String toString() {
    return 'SubscriptionState(offer: $offer, isLoading: $isLoading, isPurchasing: $isPurchasing, isActive: $isActive, currentDiscount: $currentDiscount, nextDiscount: $nextDiscount, months: $months, error: $error, message: $message)';
}


}

/// @nodoc
abstract mixin class _$SubscriptionStateCopyWith<$Res> implements $SubscriptionStateCopyWith<$Res> {
  factory _$SubscriptionStateCopyWith(_SubscriptionState value, $Res Function(_SubscriptionState) _then) = __$SubscriptionStateCopyWithImpl;
@override @useResult
$Res call({
 SubscriptionOfferInfo? offer, bool isLoading, bool isPurchasing, bool isActive, int currentDiscount, int nextDiscount, int months, SubscriptionFailure? error, SubscriptionNotice? message
});


@override $SubscriptionOfferInfoCopyWith<$Res>? get offer;

}
/// @nodoc
class __$SubscriptionStateCopyWithImpl<$Res>
    implements _$SubscriptionStateCopyWith<$Res> {
  __$SubscriptionStateCopyWithImpl(this._self, this._then);

  final _SubscriptionState _self;
  final $Res Function(_SubscriptionState) _then;

/// Create a copy of SubscriptionState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? offer = freezed,Object? isLoading = null,Object? isPurchasing = null,Object? isActive = null,Object? currentDiscount = null,Object? nextDiscount = null,Object? months = null,Object? error = freezed,Object? message = freezed,}) {
  return _then(_SubscriptionState(
offer: freezed == offer ? _self.offer : offer // ignore: cast_nullable_to_non_nullable
as SubscriptionOfferInfo?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isPurchasing: null == isPurchasing ? _self.isPurchasing : isPurchasing // ignore: cast_nullable_to_non_nullable
as bool,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,currentDiscount: null == currentDiscount ? _self.currentDiscount : currentDiscount // ignore: cast_nullable_to_non_nullable
as int,nextDiscount: null == nextDiscount ? _self.nextDiscount : nextDiscount // ignore: cast_nullable_to_non_nullable
as int,months: null == months ? _self.months : months // ignore: cast_nullable_to_non_nullable
as int,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as SubscriptionFailure?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as SubscriptionNotice?,
  ));
}

/// Create a copy of SubscriptionState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SubscriptionOfferInfoCopyWith<$Res>? get offer {
    if (_self.offer == null) {
    return null;
  }

  return $SubscriptionOfferInfoCopyWith<$Res>(_self.offer!, (value) {
    return _then(_self.copyWith(offer: value));
  });
}
}

// dart format on
