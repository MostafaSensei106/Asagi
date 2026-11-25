// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ai_import_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AiImportState {

 AiDocument? get document; AiModelChoice? get imported; bool get busy; bool get failed;
/// Create a copy of AiImportState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AiImportStateCopyWith<AiImportState> get copyWith => _$AiImportStateCopyWithImpl<AiImportState>(this as AiImportState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as AiImportState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AiImportState&&(identical(other.document, _this.document) || other.document == _this.document)&&(identical(other.imported, _this.imported) || other.imported == _this.imported)&&(identical(other.busy, _this.busy) || other.busy == _this.busy)&&(identical(other.failed, _this.failed) || other.failed == _this.failed));
}


@override
int get hashCode {
  final _this = this as AiImportState;
  return Object.hash(runtimeType,_this.document,_this.imported,_this.busy,_this.failed);
}

@override
String toString() {
  final _this = this as AiImportState;
  return 'AiImportState(document: ${_this.document}, imported: ${_this.imported}, busy: ${_this.busy}, failed: ${_this.failed})';
}


}

/// @nodoc
abstract mixin class $AiImportStateCopyWith<$Res>  {
  factory $AiImportStateCopyWith(AiImportState value, $Res Function(AiImportState) _then) = _$AiImportStateCopyWithImpl;
@useResult
$Res call({
 AiDocument? document, AiModelChoice? imported, bool busy, bool failed
});


$AiDocumentCopyWith<$Res>? get document;$AiModelChoiceCopyWith<$Res>? get imported;

}
/// @nodoc
class _$AiImportStateCopyWithImpl<$Res>
    implements $AiImportStateCopyWith<$Res> {
  _$AiImportStateCopyWithImpl(this._self, this._then);

  final AiImportState _self;
  final $Res Function(AiImportState) _then;

/// Create a copy of AiImportState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? document = freezed,Object? imported = freezed,Object? busy = null,Object? failed = null,}) {
  return _then(AiImportState(
document: freezed == document ? _self.document : document // ignore: cast_nullable_to_non_nullable
as AiDocument?,imported: freezed == imported ? _self.imported : imported // ignore: cast_nullable_to_non_nullable
as AiModelChoice?,busy: null == busy ? _self.busy : busy // ignore: cast_nullable_to_non_nullable
as bool,failed: null == failed ? _self.failed : failed // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of AiImportState
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
}/// Create a copy of AiImportState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AiModelChoiceCopyWith<$Res>? get imported {
    if (_self.imported == null) {
    return null;
  }

  return $AiModelChoiceCopyWith<$Res>(_self.imported!, (value) {
    return _then(_self.copyWith(imported: value));
  });
}
}


/// Adds pattern-matching-related methods to [AiImportState].
extension AiImportStatePatterns on AiImportState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AiImportState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AiImportState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AiImportState value)  $default,){
final _that = this;
switch (_that) {
case _AiImportState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AiImportState value)?  $default,){
final _that = this;
switch (_that) {
case _AiImportState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AiDocument? document,  AiModelChoice? imported,  bool busy,  bool failed)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AiImportState() when $default != null:
return $default(_that.document,_that.imported,_that.busy,_that.failed);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AiDocument? document,  AiModelChoice? imported,  bool busy,  bool failed)  $default,) {final _that = this;
switch (_that) {
case _AiImportState():
return $default(_that.document,_that.imported,_that.busy,_that.failed);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AiDocument? document,  AiModelChoice? imported,  bool busy,  bool failed)?  $default,) {final _that = this;
switch (_that) {
case _AiImportState() when $default != null:
return $default(_that.document,_that.imported,_that.busy,_that.failed);case _:
  return null;

}
}

}

/// @nodoc


class _AiImportState implements AiImportState {
  const _AiImportState({this.document, this.imported, this.busy = false, this.failed = false});
  

@override final  AiDocument? document;
@override final  AiModelChoice? imported;
@override@JsonKey() final  bool busy;
@override@JsonKey() final  bool failed;

/// Create a copy of AiImportState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AiImportStateCopyWith<_AiImportState> get copyWith => __$AiImportStateCopyWithImpl<_AiImportState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AiImportState&&(identical(other.document, document) || other.document == document)&&(identical(other.imported, imported) || other.imported == imported)&&(identical(other.busy, busy) || other.busy == busy)&&(identical(other.failed, failed) || other.failed == failed));
}


@override
int get hashCode {
    return Object.hash(runtimeType,document,imported,busy,failed);
}

@override
String toString() {
    return 'AiImportState(document: $document, imported: $imported, busy: $busy, failed: $failed)';
}


}

/// @nodoc
abstract mixin class _$AiImportStateCopyWith<$Res> implements $AiImportStateCopyWith<$Res> {
  factory _$AiImportStateCopyWith(_AiImportState value, $Res Function(_AiImportState) _then) = __$AiImportStateCopyWithImpl;
@override @useResult
$Res call({
 AiDocument? document, AiModelChoice? imported, bool busy, bool failed
});


@override $AiDocumentCopyWith<$Res>? get document;@override $AiModelChoiceCopyWith<$Res>? get imported;

}
/// @nodoc
class __$AiImportStateCopyWithImpl<$Res>
    implements _$AiImportStateCopyWith<$Res> {
  __$AiImportStateCopyWithImpl(this._self, this._then);

  final _AiImportState _self;
  final $Res Function(_AiImportState) _then;

/// Create a copy of AiImportState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? document = freezed,Object? imported = freezed,Object? busy = null,Object? failed = null,}) {
  return _then(_AiImportState(
document: freezed == document ? _self.document : document // ignore: cast_nullable_to_non_nullable
as AiDocument?,imported: freezed == imported ? _self.imported : imported // ignore: cast_nullable_to_non_nullable
as AiModelChoice?,busy: null == busy ? _self.busy : busy // ignore: cast_nullable_to_non_nullable
as bool,failed: null == failed ? _self.failed : failed // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of AiImportState
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
}/// Create a copy of AiImportState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AiModelChoiceCopyWith<$Res>? get imported {
    if (_self.imported == null) {
    return null;
  }

  return $AiModelChoiceCopyWith<$Res>(_self.imported!, (value) {
    return _then(_self.copyWith(imported: value));
  });
}
}

// dart format on
