// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ai_chat_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AiChatState {

 List<AiMessage> get messages; bool get busy; bool get failed; String get reply; String get thinking; AiDocument? get attachment; List<AiToolProposal> get proposals;
/// Create a copy of AiChatState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AiChatStateCopyWith<AiChatState> get copyWith => _$AiChatStateCopyWithImpl<AiChatState>(this as AiChatState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as AiChatState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AiChatState&&const DeepCollectionEquality().equals(other.messages, _this.messages)&&(identical(other.busy, _this.busy) || other.busy == _this.busy)&&(identical(other.failed, _this.failed) || other.failed == _this.failed)&&(identical(other.reply, _this.reply) || other.reply == _this.reply)&&(identical(other.thinking, _this.thinking) || other.thinking == _this.thinking)&&(identical(other.attachment, _this.attachment) || other.attachment == _this.attachment)&&const DeepCollectionEquality().equals(other.proposals, _this.proposals));
}


@override
int get hashCode {
  final _this = this as AiChatState;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.messages),_this.busy,_this.failed,_this.reply,_this.thinking,_this.attachment,const DeepCollectionEquality().hash(_this.proposals));
}

@override
String toString() {
  final _this = this as AiChatState;
  return 'AiChatState(messages: ${_this.messages}, busy: ${_this.busy}, failed: ${_this.failed}, reply: ${_this.reply}, thinking: ${_this.thinking}, attachment: ${_this.attachment}, proposals: ${_this.proposals})';
}


}

/// @nodoc
abstract mixin class $AiChatStateCopyWith<$Res>  {
  factory $AiChatStateCopyWith(AiChatState value, $Res Function(AiChatState) _then) = _$AiChatStateCopyWithImpl;
@useResult
$Res call({
 List<AiMessage> messages, bool busy, bool failed, String reply, String thinking, AiDocument? attachment, List<AiToolProposal> proposals
});


$AiDocumentCopyWith<$Res>? get attachment;

}
/// @nodoc
class _$AiChatStateCopyWithImpl<$Res>
    implements $AiChatStateCopyWith<$Res> {
  _$AiChatStateCopyWithImpl(this._self, this._then);

  final AiChatState _self;
  final $Res Function(AiChatState) _then;

/// Create a copy of AiChatState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? messages = null,Object? busy = null,Object? failed = null,Object? reply = null,Object? thinking = null,Object? attachment = freezed,Object? proposals = null,}) {
  return _then(AiChatState(
messages: null == messages ? _self.messages : messages // ignore: cast_nullable_to_non_nullable
as List<AiMessage>,busy: null == busy ? _self.busy : busy // ignore: cast_nullable_to_non_nullable
as bool,failed: null == failed ? _self.failed : failed // ignore: cast_nullable_to_non_nullable
as bool,reply: null == reply ? _self.reply : reply // ignore: cast_nullable_to_non_nullable
as String,thinking: null == thinking ? _self.thinking : thinking // ignore: cast_nullable_to_non_nullable
as String,attachment: freezed == attachment ? _self.attachment : attachment // ignore: cast_nullable_to_non_nullable
as AiDocument?,proposals: null == proposals ? _self.proposals : proposals // ignore: cast_nullable_to_non_nullable
as List<AiToolProposal>,
  ));
}
/// Create a copy of AiChatState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AiDocumentCopyWith<$Res>? get attachment {
    if (_self.attachment == null) {
    return null;
  }

  return $AiDocumentCopyWith<$Res>(_self.attachment!, (value) {
    return _then(_self.copyWith(attachment: value));
  });
}
}


/// Adds pattern-matching-related methods to [AiChatState].
extension AiChatStatePatterns on AiChatState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AiChatState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AiChatState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AiChatState value)  $default,){
final _that = this;
switch (_that) {
case _AiChatState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AiChatState value)?  $default,){
final _that = this;
switch (_that) {
case _AiChatState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<AiMessage> messages,  bool busy,  bool failed,  String reply,  String thinking,  AiDocument? attachment,  List<AiToolProposal> proposals)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AiChatState() when $default != null:
return $default(_that.messages,_that.busy,_that.failed,_that.reply,_that.thinking,_that.attachment,_that.proposals);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<AiMessage> messages,  bool busy,  bool failed,  String reply,  String thinking,  AiDocument? attachment,  List<AiToolProposal> proposals)  $default,) {final _that = this;
switch (_that) {
case _AiChatState():
return $default(_that.messages,_that.busy,_that.failed,_that.reply,_that.thinking,_that.attachment,_that.proposals);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<AiMessage> messages,  bool busy,  bool failed,  String reply,  String thinking,  AiDocument? attachment,  List<AiToolProposal> proposals)?  $default,) {final _that = this;
switch (_that) {
case _AiChatState() when $default != null:
return $default(_that.messages,_that.busy,_that.failed,_that.reply,_that.thinking,_that.attachment,_that.proposals);case _:
  return null;

}
}

}

/// @nodoc


class _AiChatState implements AiChatState {
  const _AiChatState({ List<AiMessage> messages = const [], this.busy = false, this.failed = false, this.reply = '', this.thinking = '', this.attachment,  List<AiToolProposal> proposals = const []}): _messages = messages,_proposals = proposals;
  

 final  List<AiMessage> _messages;
@override@JsonKey() List<AiMessage> get messages {
  if (_messages is EqualUnmodifiableListView) return _messages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_messages);
}

@override@JsonKey() final  bool busy;
@override@JsonKey() final  bool failed;
@override@JsonKey() final  String reply;
@override@JsonKey() final  String thinking;
@override final  AiDocument? attachment;
 final  List<AiToolProposal> _proposals;
@override@JsonKey() List<AiToolProposal> get proposals {
  if (_proposals is EqualUnmodifiableListView) return _proposals;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_proposals);
}


/// Create a copy of AiChatState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AiChatStateCopyWith<_AiChatState> get copyWith => __$AiChatStateCopyWithImpl<_AiChatState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AiChatState&&const DeepCollectionEquality().equals(other.messages, _messages)&&(identical(other.busy, busy) || other.busy == busy)&&(identical(other.failed, failed) || other.failed == failed)&&(identical(other.reply, reply) || other.reply == reply)&&(identical(other.thinking, thinking) || other.thinking == thinking)&&(identical(other.attachment, attachment) || other.attachment == attachment)&&const DeepCollectionEquality().equals(other.proposals, _proposals));
}


@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_messages),busy,failed,reply,thinking,attachment,const DeepCollectionEquality().hash(_proposals));
}

@override
String toString() {
    return 'AiChatState(messages: $messages, busy: $busy, failed: $failed, reply: $reply, thinking: $thinking, attachment: $attachment, proposals: $proposals)';
}


}

/// @nodoc
abstract mixin class _$AiChatStateCopyWith<$Res> implements $AiChatStateCopyWith<$Res> {
  factory _$AiChatStateCopyWith(_AiChatState value, $Res Function(_AiChatState) _then) = __$AiChatStateCopyWithImpl;
@override @useResult
$Res call({
 List<AiMessage> messages, bool busy, bool failed, String reply, String thinking, AiDocument? attachment, List<AiToolProposal> proposals
});


@override $AiDocumentCopyWith<$Res>? get attachment;

}
/// @nodoc
class __$AiChatStateCopyWithImpl<$Res>
    implements _$AiChatStateCopyWith<$Res> {
  __$AiChatStateCopyWithImpl(this._self, this._then);

  final _AiChatState _self;
  final $Res Function(_AiChatState) _then;

/// Create a copy of AiChatState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? messages = null,Object? busy = null,Object? failed = null,Object? reply = null,Object? thinking = null,Object? attachment = freezed,Object? proposals = null,}) {
  return _then(_AiChatState(
messages: null == messages ? _self._messages : messages // ignore: cast_nullable_to_non_nullable
as List<AiMessage>,busy: null == busy ? _self.busy : busy // ignore: cast_nullable_to_non_nullable
as bool,failed: null == failed ? _self.failed : failed // ignore: cast_nullable_to_non_nullable
as bool,reply: null == reply ? _self.reply : reply // ignore: cast_nullable_to_non_nullable
as String,thinking: null == thinking ? _self.thinking : thinking // ignore: cast_nullable_to_non_nullable
as String,attachment: freezed == attachment ? _self.attachment : attachment // ignore: cast_nullable_to_non_nullable
as AiDocument?,proposals: null == proposals ? _self._proposals : proposals // ignore: cast_nullable_to_non_nullable
as List<AiToolProposal>,
  ));
}

/// Create a copy of AiChatState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AiDocumentCopyWith<$Res>? get attachment {
    if (_self.attachment == null) {
    return null;
  }

  return $AiDocumentCopyWith<$Res>(_self.attachment!, (value) {
    return _then(_self.copyWith(attachment: value));
  });
}
}

// dart format on
