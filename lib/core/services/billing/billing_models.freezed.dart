// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'billing_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SubscriptionOfferInfo {

 String get productId; String get price; double get rawPrice; String get currencyCode; String get currencySymbol; String? get offerToken;
/// Create a copy of SubscriptionOfferInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubscriptionOfferInfoCopyWith<SubscriptionOfferInfo> get copyWith => _$SubscriptionOfferInfoCopyWithImpl<SubscriptionOfferInfo>(this as SubscriptionOfferInfo, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as SubscriptionOfferInfo;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubscriptionOfferInfo&&(identical(other.productId, _this.productId) || other.productId == _this.productId)&&(identical(other.price, _this.price) || other.price == _this.price)&&(identical(other.rawPrice, _this.rawPrice) || other.rawPrice == _this.rawPrice)&&(identical(other.currencyCode, _this.currencyCode) || other.currencyCode == _this.currencyCode)&&(identical(other.currencySymbol, _this.currencySymbol) || other.currencySymbol == _this.currencySymbol)&&(identical(other.offerToken, _this.offerToken) || other.offerToken == _this.offerToken));
}


@override
int get hashCode {
  final _this = this as SubscriptionOfferInfo;
  return Object.hash(runtimeType,_this.productId,_this.price,_this.rawPrice,_this.currencyCode,_this.currencySymbol,_this.offerToken);
}

@override
String toString() {
  final _this = this as SubscriptionOfferInfo;
  return 'SubscriptionOfferInfo(productId: ${_this.productId}, price: ${_this.price}, rawPrice: ${_this.rawPrice}, currencyCode: ${_this.currencyCode}, currencySymbol: ${_this.currencySymbol}, offerToken: ${_this.offerToken})';
}


}

/// @nodoc
abstract mixin class $SubscriptionOfferInfoCopyWith<$Res>  {
  factory $SubscriptionOfferInfoCopyWith(SubscriptionOfferInfo value, $Res Function(SubscriptionOfferInfo) _then) = _$SubscriptionOfferInfoCopyWithImpl;
@useResult
$Res call({
 String productId, String price, double rawPrice, String currencyCode, String currencySymbol, String? offerToken
});




}
/// @nodoc
class _$SubscriptionOfferInfoCopyWithImpl<$Res>
    implements $SubscriptionOfferInfoCopyWith<$Res> {
  _$SubscriptionOfferInfoCopyWithImpl(this._self, this._then);

  final SubscriptionOfferInfo _self;
  final $Res Function(SubscriptionOfferInfo) _then;

/// Create a copy of SubscriptionOfferInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? productId = null,Object? price = null,Object? rawPrice = null,Object? currencyCode = null,Object? currencySymbol = null,Object? offerToken = freezed,}) {
  return _then(SubscriptionOfferInfo(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String,rawPrice: null == rawPrice ? _self.rawPrice : rawPrice // ignore: cast_nullable_to_non_nullable
as double,currencyCode: null == currencyCode ? _self.currencyCode : currencyCode // ignore: cast_nullable_to_non_nullable
as String,currencySymbol: null == currencySymbol ? _self.currencySymbol : currencySymbol // ignore: cast_nullable_to_non_nullable
as String,offerToken: freezed == offerToken ? _self.offerToken : offerToken // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SubscriptionOfferInfo].
extension SubscriptionOfferInfoPatterns on SubscriptionOfferInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubscriptionOfferInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubscriptionOfferInfo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubscriptionOfferInfo value)  $default,){
final _that = this;
switch (_that) {
case _SubscriptionOfferInfo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubscriptionOfferInfo value)?  $default,){
final _that = this;
switch (_that) {
case _SubscriptionOfferInfo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String productId,  String price,  double rawPrice,  String currencyCode,  String currencySymbol,  String? offerToken)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubscriptionOfferInfo() when $default != null:
return $default(_that.productId,_that.price,_that.rawPrice,_that.currencyCode,_that.currencySymbol,_that.offerToken);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String productId,  String price,  double rawPrice,  String currencyCode,  String currencySymbol,  String? offerToken)  $default,) {final _that = this;
switch (_that) {
case _SubscriptionOfferInfo():
return $default(_that.productId,_that.price,_that.rawPrice,_that.currencyCode,_that.currencySymbol,_that.offerToken);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String productId,  String price,  double rawPrice,  String currencyCode,  String currencySymbol,  String? offerToken)?  $default,) {final _that = this;
switch (_that) {
case _SubscriptionOfferInfo() when $default != null:
return $default(_that.productId,_that.price,_that.rawPrice,_that.currencyCode,_that.currencySymbol,_that.offerToken);case _:
  return null;

}
}

}

/// @nodoc


class _SubscriptionOfferInfo implements SubscriptionOfferInfo {
  const _SubscriptionOfferInfo({required this.productId, required this.price, required this.rawPrice, required this.currencyCode, required this.currencySymbol, this.offerToken});
  

@override final  String productId;
@override final  String price;
@override final  double rawPrice;
@override final  String currencyCode;
@override final  String currencySymbol;
@override final  String? offerToken;

/// Create a copy of SubscriptionOfferInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubscriptionOfferInfoCopyWith<_SubscriptionOfferInfo> get copyWith => __$SubscriptionOfferInfoCopyWithImpl<_SubscriptionOfferInfo>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubscriptionOfferInfo&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.price, price) || other.price == price)&&(identical(other.rawPrice, rawPrice) || other.rawPrice == rawPrice)&&(identical(other.currencyCode, currencyCode) || other.currencyCode == currencyCode)&&(identical(other.currencySymbol, currencySymbol) || other.currencySymbol == currencySymbol)&&(identical(other.offerToken, offerToken) || other.offerToken == offerToken));
}


@override
int get hashCode {
    return Object.hash(runtimeType,productId,price,rawPrice,currencyCode,currencySymbol,offerToken);
}

@override
String toString() {
    return 'SubscriptionOfferInfo(productId: $productId, price: $price, rawPrice: $rawPrice, currencyCode: $currencyCode, currencySymbol: $currencySymbol, offerToken: $offerToken)';
}


}

/// @nodoc
abstract mixin class _$SubscriptionOfferInfoCopyWith<$Res> implements $SubscriptionOfferInfoCopyWith<$Res> {
  factory _$SubscriptionOfferInfoCopyWith(_SubscriptionOfferInfo value, $Res Function(_SubscriptionOfferInfo) _then) = __$SubscriptionOfferInfoCopyWithImpl;
@override @useResult
$Res call({
 String productId, String price, double rawPrice, String currencyCode, String currencySymbol, String? offerToken
});




}
/// @nodoc
class __$SubscriptionOfferInfoCopyWithImpl<$Res>
    implements _$SubscriptionOfferInfoCopyWith<$Res> {
  __$SubscriptionOfferInfoCopyWithImpl(this._self, this._then);

  final _SubscriptionOfferInfo _self;
  final $Res Function(_SubscriptionOfferInfo) _then;

/// Create a copy of SubscriptionOfferInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productId = null,Object? price = null,Object? rawPrice = null,Object? currencyCode = null,Object? currencySymbol = null,Object? offerToken = freezed,}) {
  return _then(_SubscriptionOfferInfo(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String,rawPrice: null == rawPrice ? _self.rawPrice : rawPrice // ignore: cast_nullable_to_non_nullable
as double,currencyCode: null == currencyCode ? _self.currencyCode : currencyCode // ignore: cast_nullable_to_non_nullable
as String,currencySymbol: null == currencySymbol ? _self.currencySymbol : currencySymbol // ignore: cast_nullable_to_non_nullable
as String,offerToken: freezed == offerToken ? _self.offerToken : offerToken // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$PurchaseReceiptPayload {

 String get originalJson; String get signature; String get purchaseToken; String get productId; String? get loyaltyToken;
/// Create a copy of PurchaseReceiptPayload
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PurchaseReceiptPayloadCopyWith<PurchaseReceiptPayload> get copyWith => _$PurchaseReceiptPayloadCopyWithImpl<PurchaseReceiptPayload>(this as PurchaseReceiptPayload, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as PurchaseReceiptPayload;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PurchaseReceiptPayload&&(identical(other.originalJson, _this.originalJson) || other.originalJson == _this.originalJson)&&(identical(other.signature, _this.signature) || other.signature == _this.signature)&&(identical(other.purchaseToken, _this.purchaseToken) || other.purchaseToken == _this.purchaseToken)&&(identical(other.productId, _this.productId) || other.productId == _this.productId)&&(identical(other.loyaltyToken, _this.loyaltyToken) || other.loyaltyToken == _this.loyaltyToken));
}


@override
int get hashCode {
  final _this = this as PurchaseReceiptPayload;
  return Object.hash(runtimeType,_this.originalJson,_this.signature,_this.purchaseToken,_this.productId,_this.loyaltyToken);
}

@override
String toString() {
  final _this = this as PurchaseReceiptPayload;
  return 'PurchaseReceiptPayload(originalJson: ${_this.originalJson}, signature: ${_this.signature}, purchaseToken: ${_this.purchaseToken}, productId: ${_this.productId}, loyaltyToken: ${_this.loyaltyToken})';
}


}

/// @nodoc
abstract mixin class $PurchaseReceiptPayloadCopyWith<$Res>  {
  factory $PurchaseReceiptPayloadCopyWith(PurchaseReceiptPayload value, $Res Function(PurchaseReceiptPayload) _then) = _$PurchaseReceiptPayloadCopyWithImpl;
@useResult
$Res call({
 String originalJson, String signature, String purchaseToken, String productId, String? loyaltyToken
});




}
/// @nodoc
class _$PurchaseReceiptPayloadCopyWithImpl<$Res>
    implements $PurchaseReceiptPayloadCopyWith<$Res> {
  _$PurchaseReceiptPayloadCopyWithImpl(this._self, this._then);

  final PurchaseReceiptPayload _self;
  final $Res Function(PurchaseReceiptPayload) _then;

/// Create a copy of PurchaseReceiptPayload
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? originalJson = null,Object? signature = null,Object? purchaseToken = null,Object? productId = null,Object? loyaltyToken = freezed,}) {
  return _then(PurchaseReceiptPayload(
originalJson: null == originalJson ? _self.originalJson : originalJson // ignore: cast_nullable_to_non_nullable
as String,signature: null == signature ? _self.signature : signature // ignore: cast_nullable_to_non_nullable
as String,purchaseToken: null == purchaseToken ? _self.purchaseToken : purchaseToken // ignore: cast_nullable_to_non_nullable
as String,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,loyaltyToken: freezed == loyaltyToken ? _self.loyaltyToken : loyaltyToken // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PurchaseReceiptPayload].
extension PurchaseReceiptPayloadPatterns on PurchaseReceiptPayload {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PurchaseReceiptPayload value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PurchaseReceiptPayload() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PurchaseReceiptPayload value)  $default,){
final _that = this;
switch (_that) {
case _PurchaseReceiptPayload():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PurchaseReceiptPayload value)?  $default,){
final _that = this;
switch (_that) {
case _PurchaseReceiptPayload() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String originalJson,  String signature,  String purchaseToken,  String productId,  String? loyaltyToken)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PurchaseReceiptPayload() when $default != null:
return $default(_that.originalJson,_that.signature,_that.purchaseToken,_that.productId,_that.loyaltyToken);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String originalJson,  String signature,  String purchaseToken,  String productId,  String? loyaltyToken)  $default,) {final _that = this;
switch (_that) {
case _PurchaseReceiptPayload():
return $default(_that.originalJson,_that.signature,_that.purchaseToken,_that.productId,_that.loyaltyToken);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String originalJson,  String signature,  String purchaseToken,  String productId,  String? loyaltyToken)?  $default,) {final _that = this;
switch (_that) {
case _PurchaseReceiptPayload() when $default != null:
return $default(_that.originalJson,_that.signature,_that.purchaseToken,_that.productId,_that.loyaltyToken);case _:
  return null;

}
}

}

/// @nodoc


class _PurchaseReceiptPayload implements PurchaseReceiptPayload {
  const _PurchaseReceiptPayload({required this.originalJson, required this.signature, required this.purchaseToken, required this.productId, this.loyaltyToken});
  

@override final  String originalJson;
@override final  String signature;
@override final  String purchaseToken;
@override final  String productId;
@override final  String? loyaltyToken;

/// Create a copy of PurchaseReceiptPayload
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PurchaseReceiptPayloadCopyWith<_PurchaseReceiptPayload> get copyWith => __$PurchaseReceiptPayloadCopyWithImpl<_PurchaseReceiptPayload>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PurchaseReceiptPayload&&(identical(other.originalJson, originalJson) || other.originalJson == originalJson)&&(identical(other.signature, signature) || other.signature == signature)&&(identical(other.purchaseToken, purchaseToken) || other.purchaseToken == purchaseToken)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.loyaltyToken, loyaltyToken) || other.loyaltyToken == loyaltyToken));
}


@override
int get hashCode {
    return Object.hash(runtimeType,originalJson,signature,purchaseToken,productId,loyaltyToken);
}

@override
String toString() {
    return 'PurchaseReceiptPayload(originalJson: $originalJson, signature: $signature, purchaseToken: $purchaseToken, productId: $productId, loyaltyToken: $loyaltyToken)';
}


}

/// @nodoc
abstract mixin class _$PurchaseReceiptPayloadCopyWith<$Res> implements $PurchaseReceiptPayloadCopyWith<$Res> {
  factory _$PurchaseReceiptPayloadCopyWith(_PurchaseReceiptPayload value, $Res Function(_PurchaseReceiptPayload) _then) = __$PurchaseReceiptPayloadCopyWithImpl;
@override @useResult
$Res call({
 String originalJson, String signature, String purchaseToken, String productId, String? loyaltyToken
});




}
/// @nodoc
class __$PurchaseReceiptPayloadCopyWithImpl<$Res>
    implements _$PurchaseReceiptPayloadCopyWith<$Res> {
  __$PurchaseReceiptPayloadCopyWithImpl(this._self, this._then);

  final _PurchaseReceiptPayload _self;
  final $Res Function(_PurchaseReceiptPayload) _then;

/// Create a copy of PurchaseReceiptPayload
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? originalJson = null,Object? signature = null,Object? purchaseToken = null,Object? productId = null,Object? loyaltyToken = freezed,}) {
  return _then(_PurchaseReceiptPayload(
originalJson: null == originalJson ? _self.originalJson : originalJson // ignore: cast_nullable_to_non_nullable
as String,signature: null == signature ? _self.signature : signature // ignore: cast_nullable_to_non_nullable
as String,purchaseToken: null == purchaseToken ? _self.purchaseToken : purchaseToken // ignore: cast_nullable_to_non_nullable
as String,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,loyaltyToken: freezed == loyaltyToken ? _self.loyaltyToken : loyaltyToken // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
