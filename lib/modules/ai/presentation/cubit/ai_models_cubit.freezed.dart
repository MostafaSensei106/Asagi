// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ai_models_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AiModelsState {

 List<AiModelChoice> get models; bool get loading; bool get busy; bool get failed; int get progress; AiModelChoice? get imported; String? get activeChat; String? get activeEmbedding;
/// Create a copy of AiModelsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AiModelsStateCopyWith<AiModelsState> get copyWith => _$AiModelsStateCopyWithImpl<AiModelsState>(this as AiModelsState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as AiModelsState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AiModelsState&&const DeepCollectionEquality().equals(other.models, _this.models)&&(identical(other.loading, _this.loading) || other.loading == _this.loading)&&(identical(other.busy, _this.busy) || other.busy == _this.busy)&&(identical(other.failed, _this.failed) || other.failed == _this.failed)&&(identical(other.progress, _this.progress) || other.progress == _this.progress)&&(identical(other.imported, _this.imported) || other.imported == _this.imported)&&(identical(other.activeChat, _this.activeChat) || other.activeChat == _this.activeChat)&&(identical(other.activeEmbedding, _this.activeEmbedding) || other.activeEmbedding == _this.activeEmbedding));
}


@override
int get hashCode {
  final _this = this as AiModelsState;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.models),_this.loading,_this.busy,_this.failed,_this.progress,_this.imported,_this.activeChat,_this.activeEmbedding);
}

@override
String toString() {
  final _this = this as AiModelsState;
  return 'AiModelsState(models: ${_this.models}, loading: ${_this.loading}, busy: ${_this.busy}, failed: ${_this.failed}, progress: ${_this.progress}, imported: ${_this.imported}, activeChat: ${_this.activeChat}, activeEmbedding: ${_this.activeEmbedding})';
}


}

/// @nodoc
abstract mixin class $AiModelsStateCopyWith<$Res>  {
  factory $AiModelsStateCopyWith(AiModelsState value, $Res Function(AiModelsState) _then) = _$AiModelsStateCopyWithImpl;
@useResult
$Res call({
 List<AiModelChoice> models, bool loading, bool busy, bool failed, int progress, AiModelChoice? imported, String? activeChat, String? activeEmbedding
});


$AiModelChoiceCopyWith<$Res>? get imported;

}
/// @nodoc
class _$AiModelsStateCopyWithImpl<$Res>
    implements $AiModelsStateCopyWith<$Res> {
  _$AiModelsStateCopyWithImpl(this._self, this._then);

  final AiModelsState _self;
  final $Res Function(AiModelsState) _then;

/// Create a copy of AiModelsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? models = null,Object? loading = null,Object? busy = null,Object? failed = null,Object? progress = null,Object? imported = freezed,Object? activeChat = freezed,Object? activeEmbedding = freezed,}) {
  return _then(AiModelsState(
models: null == models ? _self.models : models // ignore: cast_nullable_to_non_nullable
as List<AiModelChoice>,loading: null == loading ? _self.loading : loading // ignore: cast_nullable_to_non_nullable
as bool,busy: null == busy ? _self.busy : busy // ignore: cast_nullable_to_non_nullable
as bool,failed: null == failed ? _self.failed : failed // ignore: cast_nullable_to_non_nullable
as bool,progress: null == progress ? _self.progress : progress // ignore: cast_nullable_to_non_nullable
as int,imported: freezed == imported ? _self.imported : imported // ignore: cast_nullable_to_non_nullable
as AiModelChoice?,activeChat: freezed == activeChat ? _self.activeChat : activeChat // ignore: cast_nullable_to_non_nullable
as String?,activeEmbedding: freezed == activeEmbedding ? _self.activeEmbedding : activeEmbedding // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of AiModelsState
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


/// Adds pattern-matching-related methods to [AiModelsState].
extension AiModelsStatePatterns on AiModelsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AiModelsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AiModelsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AiModelsState value)  $default,){
final _that = this;
switch (_that) {
case _AiModelsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AiModelsState value)?  $default,){
final _that = this;
switch (_that) {
case _AiModelsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<AiModelChoice> models,  bool loading,  bool busy,  bool failed,  int progress,  AiModelChoice? imported,  String? activeChat,  String? activeEmbedding)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AiModelsState() when $default != null:
return $default(_that.models,_that.loading,_that.busy,_that.failed,_that.progress,_that.imported,_that.activeChat,_that.activeEmbedding);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<AiModelChoice> models,  bool loading,  bool busy,  bool failed,  int progress,  AiModelChoice? imported,  String? activeChat,  String? activeEmbedding)  $default,) {final _that = this;
switch (_that) {
case _AiModelsState():
return $default(_that.models,_that.loading,_that.busy,_that.failed,_that.progress,_that.imported,_that.activeChat,_that.activeEmbedding);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<AiModelChoice> models,  bool loading,  bool busy,  bool failed,  int progress,  AiModelChoice? imported,  String? activeChat,  String? activeEmbedding)?  $default,) {final _that = this;
switch (_that) {
case _AiModelsState() when $default != null:
return $default(_that.models,_that.loading,_that.busy,_that.failed,_that.progress,_that.imported,_that.activeChat,_that.activeEmbedding);case _:
  return null;

}
}

}

/// @nodoc


class _AiModelsState implements AiModelsState {
  const _AiModelsState({ List<AiModelChoice> models = const [], this.loading = true, this.busy = false, this.failed = false, this.progress = 0, this.imported, this.activeChat, this.activeEmbedding}): _models = models;
  

 final  List<AiModelChoice> _models;
@override@JsonKey() List<AiModelChoice> get models {
  if (_models is EqualUnmodifiableListView) return _models;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_models);
}

@override@JsonKey() final  bool loading;
@override@JsonKey() final  bool busy;
@override@JsonKey() final  bool failed;
@override@JsonKey() final  int progress;
@override final  AiModelChoice? imported;
@override final  String? activeChat;
@override final  String? activeEmbedding;

/// Create a copy of AiModelsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AiModelsStateCopyWith<_AiModelsState> get copyWith => __$AiModelsStateCopyWithImpl<_AiModelsState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AiModelsState&&const DeepCollectionEquality().equals(other.models, _models)&&(identical(other.loading, loading) || other.loading == loading)&&(identical(other.busy, busy) || other.busy == busy)&&(identical(other.failed, failed) || other.failed == failed)&&(identical(other.progress, progress) || other.progress == progress)&&(identical(other.imported, imported) || other.imported == imported)&&(identical(other.activeChat, activeChat) || other.activeChat == activeChat)&&(identical(other.activeEmbedding, activeEmbedding) || other.activeEmbedding == activeEmbedding));
}


@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_models),loading,busy,failed,progress,imported,activeChat,activeEmbedding);
}

@override
String toString() {
    return 'AiModelsState(models: $models, loading: $loading, busy: $busy, failed: $failed, progress: $progress, imported: $imported, activeChat: $activeChat, activeEmbedding: $activeEmbedding)';
}


}

/// @nodoc
abstract mixin class _$AiModelsStateCopyWith<$Res> implements $AiModelsStateCopyWith<$Res> {
  factory _$AiModelsStateCopyWith(_AiModelsState value, $Res Function(_AiModelsState) _then) = __$AiModelsStateCopyWithImpl;
@override @useResult
$Res call({
 List<AiModelChoice> models, bool loading, bool busy, bool failed, int progress, AiModelChoice? imported, String? activeChat, String? activeEmbedding
});


@override $AiModelChoiceCopyWith<$Res>? get imported;

}
/// @nodoc
class __$AiModelsStateCopyWithImpl<$Res>
    implements _$AiModelsStateCopyWith<$Res> {
  __$AiModelsStateCopyWithImpl(this._self, this._then);

  final _AiModelsState _self;
  final $Res Function(_AiModelsState) _then;

/// Create a copy of AiModelsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? models = null,Object? loading = null,Object? busy = null,Object? failed = null,Object? progress = null,Object? imported = freezed,Object? activeChat = freezed,Object? activeEmbedding = freezed,}) {
  return _then(_AiModelsState(
models: null == models ? _self._models : models // ignore: cast_nullable_to_non_nullable
as List<AiModelChoice>,loading: null == loading ? _self.loading : loading // ignore: cast_nullable_to_non_nullable
as bool,busy: null == busy ? _self.busy : busy // ignore: cast_nullable_to_non_nullable
as bool,failed: null == failed ? _self.failed : failed // ignore: cast_nullable_to_non_nullable
as bool,progress: null == progress ? _self.progress : progress // ignore: cast_nullable_to_non_nullable
as int,imported: freezed == imported ? _self.imported : imported // ignore: cast_nullable_to_non_nullable
as AiModelChoice?,activeChat: freezed == activeChat ? _self.activeChat : activeChat // ignore: cast_nullable_to_non_nullable
as String?,activeEmbedding: freezed == activeEmbedding ? _self.activeEmbedding : activeEmbedding // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of AiModelsState
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
