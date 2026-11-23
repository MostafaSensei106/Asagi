// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'compression_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CompressionState {

 CompressionPhase get phase; SelectedVideo? get video; double get targetMb; CompressionPreferences get preferences; CompressionPlan? get previewPlan; bool get planning; double get progress; CompressionStep get step; CompressionOutput? get output; String? get error; List<CompressionRecord> get history; int get interruptedJobs; List<InterruptedCompressionJob> get recoverableJobs; List<SharePreset> get presets; SharePresetId? get selectedPresetId; SharePresetPlan? get resolvedPresetPlan;
/// Create a copy of CompressionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CompressionStateCopyWith<CompressionState> get copyWith => _$CompressionStateCopyWithImpl<CompressionState>(this as CompressionState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as CompressionState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CompressionState&&(identical(other.phase, _this.phase) || other.phase == _this.phase)&&(identical(other.video, _this.video) || other.video == _this.video)&&(identical(other.targetMb, _this.targetMb) || other.targetMb == _this.targetMb)&&(identical(other.preferences, _this.preferences) || other.preferences == _this.preferences)&&(identical(other.previewPlan, _this.previewPlan) || other.previewPlan == _this.previewPlan)&&(identical(other.planning, _this.planning) || other.planning == _this.planning)&&(identical(other.progress, _this.progress) || other.progress == _this.progress)&&(identical(other.step, _this.step) || other.step == _this.step)&&(identical(other.output, _this.output) || other.output == _this.output)&&(identical(other.error, _this.error) || other.error == _this.error)&&const DeepCollectionEquality().equals(other.history, _this.history)&&(identical(other.interruptedJobs, _this.interruptedJobs) || other.interruptedJobs == _this.interruptedJobs)&&const DeepCollectionEquality().equals(other.recoverableJobs, _this.recoverableJobs)&&const DeepCollectionEquality().equals(other.presets, _this.presets)&&(identical(other.selectedPresetId, _this.selectedPresetId) || other.selectedPresetId == _this.selectedPresetId)&&(identical(other.resolvedPresetPlan, _this.resolvedPresetPlan) || other.resolvedPresetPlan == _this.resolvedPresetPlan));
}


@override
int get hashCode {
  final _this = this as CompressionState;
  return Object.hash(runtimeType,_this.phase,_this.video,_this.targetMb,_this.preferences,_this.previewPlan,_this.planning,_this.progress,_this.step,_this.output,_this.error,const DeepCollectionEquality().hash(_this.history),_this.interruptedJobs,const DeepCollectionEquality().hash(_this.recoverableJobs),const DeepCollectionEquality().hash(_this.presets),_this.selectedPresetId,_this.resolvedPresetPlan);
}

@override
String toString() {
  final _this = this as CompressionState;
  return 'CompressionState(phase: ${_this.phase}, video: ${_this.video}, targetMb: ${_this.targetMb}, preferences: ${_this.preferences}, previewPlan: ${_this.previewPlan}, planning: ${_this.planning}, progress: ${_this.progress}, step: ${_this.step}, output: ${_this.output}, error: ${_this.error}, history: ${_this.history}, interruptedJobs: ${_this.interruptedJobs}, recoverableJobs: ${_this.recoverableJobs}, presets: ${_this.presets}, selectedPresetId: ${_this.selectedPresetId}, resolvedPresetPlan: ${_this.resolvedPresetPlan})';
}


}

/// @nodoc
abstract mixin class $CompressionStateCopyWith<$Res>  {
  factory $CompressionStateCopyWith(CompressionState value, $Res Function(CompressionState) _then) = _$CompressionStateCopyWithImpl;
@useResult
$Res call({
 CompressionPhase phase, SelectedVideo? video, double targetMb, CompressionPreferences preferences, CompressionPlan? previewPlan, bool planning, double progress, CompressionStep step, CompressionOutput? output, String? error, List<CompressionRecord> history, int interruptedJobs, List<InterruptedCompressionJob> recoverableJobs, List<SharePreset> presets, SharePresetId? selectedPresetId, SharePresetPlan? resolvedPresetPlan
});




}
/// @nodoc
class _$CompressionStateCopyWithImpl<$Res>
    implements $CompressionStateCopyWith<$Res> {
  _$CompressionStateCopyWithImpl(this._self, this._then);

  final CompressionState _self;
  final $Res Function(CompressionState) _then;

/// Create a copy of CompressionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? phase = null,Object? video = freezed,Object? targetMb = null,Object? preferences = null,Object? previewPlan = freezed,Object? planning = null,Object? progress = null,Object? step = null,Object? output = freezed,Object? error = freezed,Object? history = null,Object? interruptedJobs = null,Object? recoverableJobs = null,Object? presets = null,Object? selectedPresetId = freezed,Object? resolvedPresetPlan = freezed,}) {
  return _then(CompressionState(
phase: null == phase ? _self.phase : phase // ignore: cast_nullable_to_non_nullable
as CompressionPhase,video: freezed == video ? _self.video : video // ignore: cast_nullable_to_non_nullable
as SelectedVideo?,targetMb: null == targetMb ? _self.targetMb : targetMb // ignore: cast_nullable_to_non_nullable
as double,preferences: null == preferences ? _self.preferences : preferences // ignore: cast_nullable_to_non_nullable
as CompressionPreferences,previewPlan: freezed == previewPlan ? _self.previewPlan : previewPlan // ignore: cast_nullable_to_non_nullable
as CompressionPlan?,planning: null == planning ? _self.planning : planning // ignore: cast_nullable_to_non_nullable
as bool,progress: null == progress ? _self.progress : progress // ignore: cast_nullable_to_non_nullable
as double,step: null == step ? _self.step : step // ignore: cast_nullable_to_non_nullable
as CompressionStep,output: freezed == output ? _self.output : output // ignore: cast_nullable_to_non_nullable
as CompressionOutput?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,history: null == history ? _self.history : history // ignore: cast_nullable_to_non_nullable
as List<CompressionRecord>,interruptedJobs: null == interruptedJobs ? _self.interruptedJobs : interruptedJobs // ignore: cast_nullable_to_non_nullable
as int,recoverableJobs: null == recoverableJobs ? _self.recoverableJobs : recoverableJobs // ignore: cast_nullable_to_non_nullable
as List<InterruptedCompressionJob>,presets: null == presets ? _self.presets : presets // ignore: cast_nullable_to_non_nullable
as List<SharePreset>,selectedPresetId: freezed == selectedPresetId ? _self.selectedPresetId : selectedPresetId // ignore: cast_nullable_to_non_nullable
as SharePresetId?,resolvedPresetPlan: freezed == resolvedPresetPlan ? _self.resolvedPresetPlan : resolvedPresetPlan // ignore: cast_nullable_to_non_nullable
as SharePresetPlan?,
  ));
}

}


/// Adds pattern-matching-related methods to [CompressionState].
extension CompressionStatePatterns on CompressionState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CompressionState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CompressionState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CompressionState value)  $default,){
final _that = this;
switch (_that) {
case _CompressionState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CompressionState value)?  $default,){
final _that = this;
switch (_that) {
case _CompressionState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( CompressionPhase phase,  SelectedVideo? video,  double targetMb,  CompressionPreferences preferences,  CompressionPlan? previewPlan,  bool planning,  double progress,  CompressionStep step,  CompressionOutput? output,  String? error,  List<CompressionRecord> history,  int interruptedJobs,  List<InterruptedCompressionJob> recoverableJobs,  List<SharePreset> presets,  SharePresetId? selectedPresetId,  SharePresetPlan? resolvedPresetPlan)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CompressionState() when $default != null:
return $default(_that.phase,_that.video,_that.targetMb,_that.preferences,_that.previewPlan,_that.planning,_that.progress,_that.step,_that.output,_that.error,_that.history,_that.interruptedJobs,_that.recoverableJobs,_that.presets,_that.selectedPresetId,_that.resolvedPresetPlan);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( CompressionPhase phase,  SelectedVideo? video,  double targetMb,  CompressionPreferences preferences,  CompressionPlan? previewPlan,  bool planning,  double progress,  CompressionStep step,  CompressionOutput? output,  String? error,  List<CompressionRecord> history,  int interruptedJobs,  List<InterruptedCompressionJob> recoverableJobs,  List<SharePreset> presets,  SharePresetId? selectedPresetId,  SharePresetPlan? resolvedPresetPlan)  $default,) {final _that = this;
switch (_that) {
case _CompressionState():
return $default(_that.phase,_that.video,_that.targetMb,_that.preferences,_that.previewPlan,_that.planning,_that.progress,_that.step,_that.output,_that.error,_that.history,_that.interruptedJobs,_that.recoverableJobs,_that.presets,_that.selectedPresetId,_that.resolvedPresetPlan);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( CompressionPhase phase,  SelectedVideo? video,  double targetMb,  CompressionPreferences preferences,  CompressionPlan? previewPlan,  bool planning,  double progress,  CompressionStep step,  CompressionOutput? output,  String? error,  List<CompressionRecord> history,  int interruptedJobs,  List<InterruptedCompressionJob> recoverableJobs,  List<SharePreset> presets,  SharePresetId? selectedPresetId,  SharePresetPlan? resolvedPresetPlan)?  $default,) {final _that = this;
switch (_that) {
case _CompressionState() when $default != null:
return $default(_that.phase,_that.video,_that.targetMb,_that.preferences,_that.previewPlan,_that.planning,_that.progress,_that.step,_that.output,_that.error,_that.history,_that.interruptedJobs,_that.recoverableJobs,_that.presets,_that.selectedPresetId,_that.resolvedPresetPlan);case _:
  return null;

}
}

}

/// @nodoc


class _CompressionState implements CompressionState {
  const _CompressionState({this.phase = CompressionPhase.idle, this.video, this.targetMb = 16, this.preferences = const CompressionPreferences(), this.previewPlan, this.planning = false, this.progress = 0, this.step = CompressionStep.preparing, this.output, this.error,  List<CompressionRecord> history = const <CompressionRecord>[], this.interruptedJobs = 0,  List<InterruptedCompressionJob> recoverableJobs = const <InterruptedCompressionJob>[],  List<SharePreset> presets = const <SharePreset>[], this.selectedPresetId = SharePresetId.whatsapp, this.resolvedPresetPlan}): _history = history,_recoverableJobs = recoverableJobs,_presets = presets;
  

@override@JsonKey() final  CompressionPhase phase;
@override final  SelectedVideo? video;
@override@JsonKey() final  double targetMb;
@override@JsonKey() final  CompressionPreferences preferences;
@override final  CompressionPlan? previewPlan;
@override@JsonKey() final  bool planning;
@override@JsonKey() final  double progress;
@override@JsonKey() final  CompressionStep step;
@override final  CompressionOutput? output;
@override final  String? error;
 final  List<CompressionRecord> _history;
@override@JsonKey() List<CompressionRecord> get history {
  if (_history is EqualUnmodifiableListView) return _history;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_history);
}

@override@JsonKey() final  int interruptedJobs;
 final  List<InterruptedCompressionJob> _recoverableJobs;
@override@JsonKey() List<InterruptedCompressionJob> get recoverableJobs {
  if (_recoverableJobs is EqualUnmodifiableListView) return _recoverableJobs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_recoverableJobs);
}

 final  List<SharePreset> _presets;
@override@JsonKey() List<SharePreset> get presets {
  if (_presets is EqualUnmodifiableListView) return _presets;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_presets);
}

@override@JsonKey() final  SharePresetId? selectedPresetId;
@override final  SharePresetPlan? resolvedPresetPlan;

/// Create a copy of CompressionState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CompressionStateCopyWith<_CompressionState> get copyWith => __$CompressionStateCopyWithImpl<_CompressionState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CompressionState&&(identical(other.phase, phase) || other.phase == phase)&&(identical(other.video, video) || other.video == video)&&(identical(other.targetMb, targetMb) || other.targetMb == targetMb)&&(identical(other.preferences, preferences) || other.preferences == preferences)&&(identical(other.previewPlan, previewPlan) || other.previewPlan == previewPlan)&&(identical(other.planning, planning) || other.planning == planning)&&(identical(other.progress, progress) || other.progress == progress)&&(identical(other.step, step) || other.step == step)&&(identical(other.output, output) || other.output == output)&&(identical(other.error, error) || other.error == error)&&const DeepCollectionEquality().equals(other.history, _history)&&(identical(other.interruptedJobs, interruptedJobs) || other.interruptedJobs == interruptedJobs)&&const DeepCollectionEquality().equals(other.recoverableJobs, _recoverableJobs)&&const DeepCollectionEquality().equals(other.presets, _presets)&&(identical(other.selectedPresetId, selectedPresetId) || other.selectedPresetId == selectedPresetId)&&(identical(other.resolvedPresetPlan, resolvedPresetPlan) || other.resolvedPresetPlan == resolvedPresetPlan));
}


@override
int get hashCode {
    return Object.hash(runtimeType,phase,video,targetMb,preferences,previewPlan,planning,progress,step,output,error,const DeepCollectionEquality().hash(_history),interruptedJobs,const DeepCollectionEquality().hash(_recoverableJobs),const DeepCollectionEquality().hash(_presets),selectedPresetId,resolvedPresetPlan);
}

@override
String toString() {
    return 'CompressionState(phase: $phase, video: $video, targetMb: $targetMb, preferences: $preferences, previewPlan: $previewPlan, planning: $planning, progress: $progress, step: $step, output: $output, error: $error, history: $history, interruptedJobs: $interruptedJobs, recoverableJobs: $recoverableJobs, presets: $presets, selectedPresetId: $selectedPresetId, resolvedPresetPlan: $resolvedPresetPlan)';
}


}

/// @nodoc
abstract mixin class _$CompressionStateCopyWith<$Res> implements $CompressionStateCopyWith<$Res> {
  factory _$CompressionStateCopyWith(_CompressionState value, $Res Function(_CompressionState) _then) = __$CompressionStateCopyWithImpl;
@override @useResult
$Res call({
 CompressionPhase phase, SelectedVideo? video, double targetMb, CompressionPreferences preferences, CompressionPlan? previewPlan, bool planning, double progress, CompressionStep step, CompressionOutput? output, String? error, List<CompressionRecord> history, int interruptedJobs, List<InterruptedCompressionJob> recoverableJobs, List<SharePreset> presets, SharePresetId? selectedPresetId, SharePresetPlan? resolvedPresetPlan
});




}
/// @nodoc
class __$CompressionStateCopyWithImpl<$Res>
    implements _$CompressionStateCopyWith<$Res> {
  __$CompressionStateCopyWithImpl(this._self, this._then);

  final _CompressionState _self;
  final $Res Function(_CompressionState) _then;

/// Create a copy of CompressionState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? phase = null,Object? video = freezed,Object? targetMb = null,Object? preferences = null,Object? previewPlan = freezed,Object? planning = null,Object? progress = null,Object? step = null,Object? output = freezed,Object? error = freezed,Object? history = null,Object? interruptedJobs = null,Object? recoverableJobs = null,Object? presets = null,Object? selectedPresetId = freezed,Object? resolvedPresetPlan = freezed,}) {
  return _then(_CompressionState(
phase: null == phase ? _self.phase : phase // ignore: cast_nullable_to_non_nullable
as CompressionPhase,video: freezed == video ? _self.video : video // ignore: cast_nullable_to_non_nullable
as SelectedVideo?,targetMb: null == targetMb ? _self.targetMb : targetMb // ignore: cast_nullable_to_non_nullable
as double,preferences: null == preferences ? _self.preferences : preferences // ignore: cast_nullable_to_non_nullable
as CompressionPreferences,previewPlan: freezed == previewPlan ? _self.previewPlan : previewPlan // ignore: cast_nullable_to_non_nullable
as CompressionPlan?,planning: null == planning ? _self.planning : planning // ignore: cast_nullable_to_non_nullable
as bool,progress: null == progress ? _self.progress : progress // ignore: cast_nullable_to_non_nullable
as double,step: null == step ? _self.step : step // ignore: cast_nullable_to_non_nullable
as CompressionStep,output: freezed == output ? _self.output : output // ignore: cast_nullable_to_non_nullable
as CompressionOutput?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,history: null == history ? _self._history : history // ignore: cast_nullable_to_non_nullable
as List<CompressionRecord>,interruptedJobs: null == interruptedJobs ? _self.interruptedJobs : interruptedJobs // ignore: cast_nullable_to_non_nullable
as int,recoverableJobs: null == recoverableJobs ? _self._recoverableJobs : recoverableJobs // ignore: cast_nullable_to_non_nullable
as List<InterruptedCompressionJob>,presets: null == presets ? _self._presets : presets // ignore: cast_nullable_to_non_nullable
as List<SharePreset>,selectedPresetId: freezed == selectedPresetId ? _self.selectedPresetId : selectedPresetId // ignore: cast_nullable_to_non_nullable
as SharePresetId?,resolvedPresetPlan: freezed == resolvedPresetPlan ? _self.resolvedPresetPlan : resolvedPresetPlan // ignore: cast_nullable_to_non_nullable
as SharePresetPlan?,
  ));
}


}

// dart format on
