// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'saved_result_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SavedResultState {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is SavedResultState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'SavedResultState()';
}


}

/// @nodoc
class $SavedResultStateCopyWith<$Res>  {
$SavedResultStateCopyWith(SavedResultState _, $Res Function(SavedResultState) __);
}


/// Adds pattern-matching-related methods to [SavedResultState].
extension SavedResultStatePatterns on SavedResultState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SavedResultLoading value)?  loading,TResult Function( SavedResultLoaded value)?  loaded,TResult Function( SavedResultUnavailable value)?  unavailable,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SavedResultLoading() when loading != null:
return loading(_that);case SavedResultLoaded() when loaded != null:
return loaded(_that);case SavedResultUnavailable() when unavailable != null:
return unavailable(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SavedResultLoading value)  loading,required TResult Function( SavedResultLoaded value)  loaded,required TResult Function( SavedResultUnavailable value)  unavailable,}){
final _that = this;
switch (_that) {
case SavedResultLoading():
return loading(_that);case SavedResultLoaded():
return loaded(_that);case SavedResultUnavailable():
return unavailable(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SavedResultLoading value)?  loading,TResult? Function( SavedResultLoaded value)?  loaded,TResult? Function( SavedResultUnavailable value)?  unavailable,}){
final _that = this;
switch (_that) {
case SavedResultLoading() when loading != null:
return loading(_that);case SavedResultLoaded() when loaded != null:
return loaded(_that);case SavedResultUnavailable() when unavailable != null:
return unavailable(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function( CompressionRecord record)?  loaded,TResult Function()?  unavailable,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SavedResultLoading() when loading != null:
return loading();case SavedResultLoaded() when loaded != null:
return loaded(_that.record);case SavedResultUnavailable() when unavailable != null:
return unavailable();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function( CompressionRecord record)  loaded,required TResult Function()  unavailable,}) {final _that = this;
switch (_that) {
case SavedResultLoading():
return loading();case SavedResultLoaded():
return loaded(_that.record);case SavedResultUnavailable():
return unavailable();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function( CompressionRecord record)?  loaded,TResult? Function()?  unavailable,}) {final _that = this;
switch (_that) {
case SavedResultLoading() when loading != null:
return loading();case SavedResultLoaded() when loaded != null:
return loaded(_that.record);case SavedResultUnavailable() when unavailable != null:
return unavailable();case _:
  return null;

}
}

}

/// @nodoc


class SavedResultLoading implements SavedResultState {
  const SavedResultLoading();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is SavedResultLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'SavedResultState.loading()';
}


}




/// @nodoc


class SavedResultLoaded implements SavedResultState {
  const SavedResultLoaded(this.record);
  

 final  CompressionRecord record;

/// Create a copy of SavedResultState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SavedResultLoadedCopyWith<SavedResultLoaded> get copyWith => _$SavedResultLoadedCopyWithImpl<SavedResultLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is SavedResultLoaded&&(identical(other.record, record) || other.record == record));
}


@override
int get hashCode {
    return Object.hash(runtimeType,record);
}

@override
String toString() {
    return 'SavedResultState.loaded(record: $record)';
}


}

/// @nodoc
abstract mixin class $SavedResultLoadedCopyWith<$Res> implements $SavedResultStateCopyWith<$Res> {
  factory $SavedResultLoadedCopyWith(SavedResultLoaded value, $Res Function(SavedResultLoaded) _then) = _$SavedResultLoadedCopyWithImpl;
@useResult
$Res call({
 CompressionRecord record
});


$CompressionRecordCopyWith<$Res> get record;

}
/// @nodoc
class _$SavedResultLoadedCopyWithImpl<$Res>
    implements $SavedResultLoadedCopyWith<$Res> {
  _$SavedResultLoadedCopyWithImpl(this._self, this._then);

  final SavedResultLoaded _self;
  final $Res Function(SavedResultLoaded) _then;

/// Create a copy of SavedResultState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? record = null,}) {
  return _then(SavedResultLoaded(
null == record ? _self.record : record // ignore: cast_nullable_to_non_nullable
as CompressionRecord,
  ));
}

/// Create a copy of SavedResultState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CompressionRecordCopyWith<$Res> get record {
  
  return $CompressionRecordCopyWith<$Res>(_self.record, (value) {
    return _then(_self.copyWith(record: value));
  });
}
}

/// @nodoc


class SavedResultUnavailable implements SavedResultState {
  const SavedResultUnavailable();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is SavedResultUnavailable);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'SavedResultState.unavailable()';
}


}




// dart format on
