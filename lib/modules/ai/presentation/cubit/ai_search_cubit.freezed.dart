// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ai_search_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AiSearchState {

 bool get busy; bool get failed; int get selected; int get done; int get total; int get indexBytes; List<AiSearchHit> get hits;
/// Create a copy of AiSearchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AiSearchStateCopyWith<AiSearchState> get copyWith => _$AiSearchStateCopyWithImpl<AiSearchState>(this as AiSearchState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as AiSearchState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AiSearchState&&(identical(other.busy, _this.busy) || other.busy == _this.busy)&&(identical(other.failed, _this.failed) || other.failed == _this.failed)&&(identical(other.selected, _this.selected) || other.selected == _this.selected)&&(identical(other.done, _this.done) || other.done == _this.done)&&(identical(other.total, _this.total) || other.total == _this.total)&&(identical(other.indexBytes, _this.indexBytes) || other.indexBytes == _this.indexBytes)&&const DeepCollectionEquality().equals(other.hits, _this.hits));
}


@override
int get hashCode {
  final _this = this as AiSearchState;
  return Object.hash(runtimeType,_this.busy,_this.failed,_this.selected,_this.done,_this.total,_this.indexBytes,const DeepCollectionEquality().hash(_this.hits));
}

@override
String toString() {
  final _this = this as AiSearchState;
  return 'AiSearchState(busy: ${_this.busy}, failed: ${_this.failed}, selected: ${_this.selected}, done: ${_this.done}, total: ${_this.total}, indexBytes: ${_this.indexBytes}, hits: ${_this.hits})';
}


}

/// @nodoc
abstract mixin class $AiSearchStateCopyWith<$Res>  {
  factory $AiSearchStateCopyWith(AiSearchState value, $Res Function(AiSearchState) _then) = _$AiSearchStateCopyWithImpl;
@useResult
$Res call({
 bool busy, bool failed, int selected, int done, int total, int indexBytes, List<AiSearchHit> hits
});




}
/// @nodoc
class _$AiSearchStateCopyWithImpl<$Res>
    implements $AiSearchStateCopyWith<$Res> {
  _$AiSearchStateCopyWithImpl(this._self, this._then);

  final AiSearchState _self;
  final $Res Function(AiSearchState) _then;

/// Create a copy of AiSearchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? busy = null,Object? failed = null,Object? selected = null,Object? done = null,Object? total = null,Object? indexBytes = null,Object? hits = null,}) {
  return _then(AiSearchState(
busy: null == busy ? _self.busy : busy // ignore: cast_nullable_to_non_nullable
as bool,failed: null == failed ? _self.failed : failed // ignore: cast_nullable_to_non_nullable
as bool,selected: null == selected ? _self.selected : selected // ignore: cast_nullable_to_non_nullable
as int,done: null == done ? _self.done : done // ignore: cast_nullable_to_non_nullable
as int,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,indexBytes: null == indexBytes ? _self.indexBytes : indexBytes // ignore: cast_nullable_to_non_nullable
as int,hits: null == hits ? _self.hits : hits // ignore: cast_nullable_to_non_nullable
as List<AiSearchHit>,
  ));
}

}


/// Adds pattern-matching-related methods to [AiSearchState].
extension AiSearchStatePatterns on AiSearchState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AiSearchState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AiSearchState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AiSearchState value)  $default,){
final _that = this;
switch (_that) {
case _AiSearchState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AiSearchState value)?  $default,){
final _that = this;
switch (_that) {
case _AiSearchState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool busy,  bool failed,  int selected,  int done,  int total,  int indexBytes,  List<AiSearchHit> hits)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AiSearchState() when $default != null:
return $default(_that.busy,_that.failed,_that.selected,_that.done,_that.total,_that.indexBytes,_that.hits);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool busy,  bool failed,  int selected,  int done,  int total,  int indexBytes,  List<AiSearchHit> hits)  $default,) {final _that = this;
switch (_that) {
case _AiSearchState():
return $default(_that.busy,_that.failed,_that.selected,_that.done,_that.total,_that.indexBytes,_that.hits);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool busy,  bool failed,  int selected,  int done,  int total,  int indexBytes,  List<AiSearchHit> hits)?  $default,) {final _that = this;
switch (_that) {
case _AiSearchState() when $default != null:
return $default(_that.busy,_that.failed,_that.selected,_that.done,_that.total,_that.indexBytes,_that.hits);case _:
  return null;

}
}

}

/// @nodoc


class _AiSearchState implements AiSearchState {
  const _AiSearchState({this.busy = false, this.failed = false, this.selected = 0, this.done = 0, this.total = 0, this.indexBytes = 0,  List<AiSearchHit> hits = const []}): _hits = hits;
  

@override@JsonKey() final  bool busy;
@override@JsonKey() final  bool failed;
@override@JsonKey() final  int selected;
@override@JsonKey() final  int done;
@override@JsonKey() final  int total;
@override@JsonKey() final  int indexBytes;
 final  List<AiSearchHit> _hits;
@override@JsonKey() List<AiSearchHit> get hits {
  if (_hits is EqualUnmodifiableListView) return _hits;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_hits);
}


/// Create a copy of AiSearchState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AiSearchStateCopyWith<_AiSearchState> get copyWith => __$AiSearchStateCopyWithImpl<_AiSearchState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AiSearchState&&(identical(other.busy, busy) || other.busy == busy)&&(identical(other.failed, failed) || other.failed == failed)&&(identical(other.selected, selected) || other.selected == selected)&&(identical(other.done, done) || other.done == done)&&(identical(other.total, total) || other.total == total)&&(identical(other.indexBytes, indexBytes) || other.indexBytes == indexBytes)&&const DeepCollectionEquality().equals(other.hits, _hits));
}


@override
int get hashCode {
    return Object.hash(runtimeType,busy,failed,selected,done,total,indexBytes,const DeepCollectionEquality().hash(_hits));
}

@override
String toString() {
    return 'AiSearchState(busy: $busy, failed: $failed, selected: $selected, done: $done, total: $total, indexBytes: $indexBytes, hits: $hits)';
}


}

/// @nodoc
abstract mixin class _$AiSearchStateCopyWith<$Res> implements $AiSearchStateCopyWith<$Res> {
  factory _$AiSearchStateCopyWith(_AiSearchState value, $Res Function(_AiSearchState) _then) = __$AiSearchStateCopyWithImpl;
@override @useResult
$Res call({
 bool busy, bool failed, int selected, int done, int total, int indexBytes, List<AiSearchHit> hits
});




}
/// @nodoc
class __$AiSearchStateCopyWithImpl<$Res>
    implements _$AiSearchStateCopyWith<$Res> {
  __$AiSearchStateCopyWithImpl(this._self, this._then);

  final _AiSearchState _self;
  final $Res Function(_AiSearchState) _then;

/// Create a copy of AiSearchState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? busy = null,Object? failed = null,Object? selected = null,Object? done = null,Object? total = null,Object? indexBytes = null,Object? hits = null,}) {
  return _then(_AiSearchState(
busy: null == busy ? _self.busy : busy // ignore: cast_nullable_to_non_nullable
as bool,failed: null == failed ? _self.failed : failed // ignore: cast_nullable_to_non_nullable
as bool,selected: null == selected ? _self.selected : selected // ignore: cast_nullable_to_non_nullable
as int,done: null == done ? _self.done : done // ignore: cast_nullable_to_non_nullable
as int,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,indexBytes: null == indexBytes ? _self.indexBytes : indexBytes // ignore: cast_nullable_to_non_nullable
as int,hits: null == hits ? _self._hits : hits // ignore: cast_nullable_to_non_nullable
as List<AiSearchHit>,
  ));
}


}

// dart format on
