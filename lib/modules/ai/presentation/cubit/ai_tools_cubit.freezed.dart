// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ai_tools_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AiToolsState {

 AiDocument? get document; bool get busy; bool get failed; String? get output;
/// Create a copy of AiToolsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AiToolsStateCopyWith<AiToolsState> get copyWith => _$AiToolsStateCopyWithImpl<AiToolsState>(this as AiToolsState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as AiToolsState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AiToolsState&&(identical(other.document, _this.document) || other.document == _this.document)&&(identical(other.busy, _this.busy) || other.busy == _this.busy)&&(identical(other.failed, _this.failed) || other.failed == _this.failed)&&(identical(other.output, _this.output) || other.output == _this.output));
}


@override
int get hashCode {
  final _this = this as AiToolsState;
  return Object.hash(runtimeType,_this.document,_this.busy,_this.failed,_this.output);
}

@override
String toString() {
  final _this = this as AiToolsState;
  return 'AiToolsState(document: ${_this.document}, busy: ${_this.busy}, failed: ${_this.failed}, output: ${_this.output})';
}


}

/// @nodoc
abstract mixin class $AiToolsStateCopyWith<$Res>  {
  factory $AiToolsStateCopyWith(AiToolsState value, $Res Function(AiToolsState) _then) = _$AiToolsStateCopyWithImpl;
@useResult
$Res call({
 AiDocument? document, bool busy, bool failed, String? output
});


$AiDocumentCopyWith<$Res>? get document;

}
/// @nodoc
class _$AiToolsStateCopyWithImpl<$Res>
    implements $AiToolsStateCopyWith<$Res> {
  _$AiToolsStateCopyWithImpl(this._self, this._then);

  final AiToolsState _self;
  final $Res Function(AiToolsState) _then;

/// Create a copy of AiToolsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? document = freezed,Object? busy = null,Object? failed = null,Object? output = freezed,}) {
  return _then(AiToolsState(
document: freezed == document ? _self.document : document // ignore: cast_nullable_to_non_nullable
as AiDocument?,busy: null == busy ? _self.busy : busy // ignore: cast_nullable_to_non_nullable
as bool,failed: null == failed ? _self.failed : failed // ignore: cast_nullable_to_non_nullable
as bool,output: freezed == output ? _self.output : output // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of AiToolsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AiDocumentCopyWith<$Res>? get document {
    if (_self.document == null) {
    return null;
  }

  return $AiDocumentCopyWith<$Res>(_self.document!, (value) {
    return _then(_self.copyWith(document: value));
  });
}
}


/// Adds pattern-matching-related methods to [AiToolsState].
extension AiToolsStatePatterns on AiToolsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AiToolsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AiToolsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AiToolsState value)  $default,){
final _that = this;
switch (_that) {
case _AiToolsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AiToolsState value)?  $default,){
final _that = this;
switch (_that) {
case _AiToolsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AiDocument? document,  bool busy,  bool failed,  String? output)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AiToolsState() when $default != null:
return $default(_that.document,_that.busy,_that.failed,_that.output);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AiDocument? document,  bool busy,  bool failed,  String? output)  $default,) {final _that = this;
switch (_that) {
case _AiToolsState():
return $default(_that.document,_that.busy,_that.failed,_that.output);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AiDocument? document,  bool busy,  bool failed,  String? output)?  $default,) {final _that = this;
switch (_that) {
case _AiToolsState() when $default != null:
return $default(_that.document,_that.busy,_that.failed,_that.output);case _:
  return null;

}
}

}

/// @nodoc


class _AiToolsState implements AiToolsState {
  const _AiToolsState({this.document, this.busy = false, this.failed = false, this.output});
  

@override final  AiDocument? document;
@override@JsonKey() final  bool busy;
@override@JsonKey() final  bool failed;
@override final  String? output;

/// Create a copy of AiToolsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AiToolsStateCopyWith<_AiToolsState> get copyWith => __$AiToolsStateCopyWithImpl<_AiToolsState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AiToolsState&&(identical(other.document, document) || other.document == document)&&(identical(other.busy, busy) || other.busy == busy)&&(identical(other.failed, failed) || other.failed == failed)&&(identical(other.output, output) || other.output == output));
}


@override
int get hashCode {
    return Object.hash(runtimeType,document,busy,failed,output);
}

@override
String toString() {
    return 'AiToolsState(document: $document, busy: $busy, failed: $failed, output: $output)';
}


}

/// @nodoc
abstract mixin class _$AiToolsStateCopyWith<$Res> implements $AiToolsStateCopyWith<$Res> {
  factory _$AiToolsStateCopyWith(_AiToolsState value, $Res Function(_AiToolsState) _then) = __$AiToolsStateCopyWithImpl;
@override @useResult
$Res call({
 AiDocument? document, bool busy, bool failed, String? output
});


@override $AiDocumentCopyWith<$Res>? get document;

}
/// @nodoc
class __$AiToolsStateCopyWithImpl<$Res>
    implements _$AiToolsStateCopyWith<$Res> {
  __$AiToolsStateCopyWithImpl(this._self, this._then);

  final _AiToolsState _self;
  final $Res Function(_AiToolsState) _then;

/// Create a copy of AiToolsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? document = freezed,Object? busy = null,Object? failed = null,Object? output = freezed,}) {
  return _then(_AiToolsState(
document: freezed == document ? _self.document : document // ignore: cast_nullable_to_non_nullable
as AiDocument?,busy: null == busy ? _self.busy : busy // ignore: cast_nullable_to_non_nullable
as bool,failed: null == failed ? _self.failed : failed // ignore: cast_nullable_to_non_nullable
as bool,output: freezed == output ? _self.output : output // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of AiToolsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AiDocumentCopyWith<$Res>? get document {
    if (_self.document == null) {
    return null;
  }

  return $AiDocumentCopyWith<$Res>(_self.document!, (value) {
    return _then(_self.copyWith(document: value));
  });
}
}

// dart format on
