// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ai_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AiChatSettings {

 bool get streaming; bool get showThinking; double get temperature; int get maxTokens;
/// Create a copy of AiChatSettings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AiChatSettingsCopyWith<AiChatSettings> get copyWith => _$AiChatSettingsCopyWithImpl<AiChatSettings>(this as AiChatSettings, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as AiChatSettings;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AiChatSettings&&(identical(other.streaming, _this.streaming) || other.streaming == _this.streaming)&&(identical(other.showThinking, _this.showThinking) || other.showThinking == _this.showThinking)&&(identical(other.temperature, _this.temperature) || other.temperature == _this.temperature)&&(identical(other.maxTokens, _this.maxTokens) || other.maxTokens == _this.maxTokens));
}


@override
int get hashCode {
  final _this = this as AiChatSettings;
  return Object.hash(runtimeType,_this.streaming,_this.showThinking,_this.temperature,_this.maxTokens);
}

@override
String toString() {
  final _this = this as AiChatSettings;
  return 'AiChatSettings(streaming: ${_this.streaming}, showThinking: ${_this.showThinking}, temperature: ${_this.temperature}, maxTokens: ${_this.maxTokens})';
}


}

/// @nodoc
abstract mixin class $AiChatSettingsCopyWith<$Res>  {
  factory $AiChatSettingsCopyWith(AiChatSettings value, $Res Function(AiChatSettings) _then) = _$AiChatSettingsCopyWithImpl;
@useResult
$Res call({
 bool streaming, bool showThinking, double temperature, int maxTokens
});




}
/// @nodoc
class _$AiChatSettingsCopyWithImpl<$Res>
    implements $AiChatSettingsCopyWith<$Res> {
  _$AiChatSettingsCopyWithImpl(this._self, this._then);

  final AiChatSettings _self;
  final $Res Function(AiChatSettings) _then;

/// Create a copy of AiChatSettings
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? streaming = null,Object? showThinking = null,Object? temperature = null,Object? maxTokens = null,}) {
  return _then(AiChatSettings(
streaming: null == streaming ? _self.streaming : streaming // ignore: cast_nullable_to_non_nullable
as bool,showThinking: null == showThinking ? _self.showThinking : showThinking // ignore: cast_nullable_to_non_nullable
as bool,temperature: null == temperature ? _self.temperature : temperature // ignore: cast_nullable_to_non_nullable
as double,maxTokens: null == maxTokens ? _self.maxTokens : maxTokens // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [AiChatSettings].
extension AiChatSettingsPatterns on AiChatSettings {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AiChatSettings value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AiChatSettings() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AiChatSettings value)  $default,){
final _that = this;
switch (_that) {
case _AiChatSettings():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AiChatSettings value)?  $default,){
final _that = this;
switch (_that) {
case _AiChatSettings() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool streaming,  bool showThinking,  double temperature,  int maxTokens)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AiChatSettings() when $default != null:
return $default(_that.streaming,_that.showThinking,_that.temperature,_that.maxTokens);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool streaming,  bool showThinking,  double temperature,  int maxTokens)  $default,) {final _that = this;
switch (_that) {
case _AiChatSettings():
return $default(_that.streaming,_that.showThinking,_that.temperature,_that.maxTokens);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool streaming,  bool showThinking,  double temperature,  int maxTokens)?  $default,) {final _that = this;
switch (_that) {
case _AiChatSettings() when $default != null:
return $default(_that.streaming,_that.showThinking,_that.temperature,_that.maxTokens);case _:
  return null;

}
}

}

/// @nodoc


class _AiChatSettings implements AiChatSettings {
  const _AiChatSettings({this.streaming = true, this.showThinking = true, this.temperature = 0.7, this.maxTokens = 1024});
  

@override@JsonKey() final  bool streaming;
@override@JsonKey() final  bool showThinking;
@override@JsonKey() final  double temperature;
@override@JsonKey() final  int maxTokens;

/// Create a copy of AiChatSettings
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AiChatSettingsCopyWith<_AiChatSettings> get copyWith => __$AiChatSettingsCopyWithImpl<_AiChatSettings>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AiChatSettings&&(identical(other.streaming, streaming) || other.streaming == streaming)&&(identical(other.showThinking, showThinking) || other.showThinking == showThinking)&&(identical(other.temperature, temperature) || other.temperature == temperature)&&(identical(other.maxTokens, maxTokens) || other.maxTokens == maxTokens));
}


@override
int get hashCode {
    return Object.hash(runtimeType,streaming,showThinking,temperature,maxTokens);
}

@override
String toString() {
    return 'AiChatSettings(streaming: $streaming, showThinking: $showThinking, temperature: $temperature, maxTokens: $maxTokens)';
}


}

/// @nodoc
abstract mixin class _$AiChatSettingsCopyWith<$Res> implements $AiChatSettingsCopyWith<$Res> {
  factory _$AiChatSettingsCopyWith(_AiChatSettings value, $Res Function(_AiChatSettings) _then) = __$AiChatSettingsCopyWithImpl;
@override @useResult
$Res call({
 bool streaming, bool showThinking, double temperature, int maxTokens
});




}
/// @nodoc
class __$AiChatSettingsCopyWithImpl<$Res>
    implements _$AiChatSettingsCopyWith<$Res> {
  __$AiChatSettingsCopyWithImpl(this._self, this._then);

  final _AiChatSettings _self;
  final $Res Function(_AiChatSettings) _then;

/// Create a copy of AiChatSettings
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? streaming = null,Object? showThinking = null,Object? temperature = null,Object? maxTokens = null,}) {
  return _then(_AiChatSettings(
streaming: null == streaming ? _self.streaming : streaming // ignore: cast_nullable_to_non_nullable
as bool,showThinking: null == showThinking ? _self.showThinking : showThinking // ignore: cast_nullable_to_non_nullable
as bool,temperature: null == temperature ? _self.temperature : temperature // ignore: cast_nullable_to_non_nullable
as double,maxTokens: null == maxTokens ? _self.maxTokens : maxTokens // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$AiMediaSettings {

 bool get analyzeThumbnails; bool get transcribeAudio; int get sampleRate; bool get autoLang;
/// Create a copy of AiMediaSettings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AiMediaSettingsCopyWith<AiMediaSettings> get copyWith => _$AiMediaSettingsCopyWithImpl<AiMediaSettings>(this as AiMediaSettings, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as AiMediaSettings;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AiMediaSettings&&(identical(other.analyzeThumbnails, _this.analyzeThumbnails) || other.analyzeThumbnails == _this.analyzeThumbnails)&&(identical(other.transcribeAudio, _this.transcribeAudio) || other.transcribeAudio == _this.transcribeAudio)&&(identical(other.sampleRate, _this.sampleRate) || other.sampleRate == _this.sampleRate)&&(identical(other.autoLang, _this.autoLang) || other.autoLang == _this.autoLang));
}


@override
int get hashCode {
  final _this = this as AiMediaSettings;
  return Object.hash(runtimeType,_this.analyzeThumbnails,_this.transcribeAudio,_this.sampleRate,_this.autoLang);
}

@override
String toString() {
  final _this = this as AiMediaSettings;
  return 'AiMediaSettings(analyzeThumbnails: ${_this.analyzeThumbnails}, transcribeAudio: ${_this.transcribeAudio}, sampleRate: ${_this.sampleRate}, autoLang: ${_this.autoLang})';
}


}

/// @nodoc
abstract mixin class $AiMediaSettingsCopyWith<$Res>  {
  factory $AiMediaSettingsCopyWith(AiMediaSettings value, $Res Function(AiMediaSettings) _then) = _$AiMediaSettingsCopyWithImpl;
@useResult
$Res call({
 bool analyzeThumbnails, bool transcribeAudio, int sampleRate, bool autoLang
});




}
/// @nodoc
class _$AiMediaSettingsCopyWithImpl<$Res>
    implements $AiMediaSettingsCopyWith<$Res> {
  _$AiMediaSettingsCopyWithImpl(this._self, this._then);

  final AiMediaSettings _self;
  final $Res Function(AiMediaSettings) _then;

/// Create a copy of AiMediaSettings
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? analyzeThumbnails = null,Object? transcribeAudio = null,Object? sampleRate = null,Object? autoLang = null,}) {
  return _then(AiMediaSettings(
analyzeThumbnails: null == analyzeThumbnails ? _self.analyzeThumbnails : analyzeThumbnails // ignore: cast_nullable_to_non_nullable
as bool,transcribeAudio: null == transcribeAudio ? _self.transcribeAudio : transcribeAudio // ignore: cast_nullable_to_non_nullable
as bool,sampleRate: null == sampleRate ? _self.sampleRate : sampleRate // ignore: cast_nullable_to_non_nullable
as int,autoLang: null == autoLang ? _self.autoLang : autoLang // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [AiMediaSettings].
extension AiMediaSettingsPatterns on AiMediaSettings {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AiMediaSettings value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AiMediaSettings() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AiMediaSettings value)  $default,){
final _that = this;
switch (_that) {
case _AiMediaSettings():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AiMediaSettings value)?  $default,){
final _that = this;
switch (_that) {
case _AiMediaSettings() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool analyzeThumbnails,  bool transcribeAudio,  int sampleRate,  bool autoLang)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AiMediaSettings() when $default != null:
return $default(_that.analyzeThumbnails,_that.transcribeAudio,_that.sampleRate,_that.autoLang);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool analyzeThumbnails,  bool transcribeAudio,  int sampleRate,  bool autoLang)  $default,) {final _that = this;
switch (_that) {
case _AiMediaSettings():
return $default(_that.analyzeThumbnails,_that.transcribeAudio,_that.sampleRate,_that.autoLang);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool analyzeThumbnails,  bool transcribeAudio,  int sampleRate,  bool autoLang)?  $default,) {final _that = this;
switch (_that) {
case _AiMediaSettings() when $default != null:
return $default(_that.analyzeThumbnails,_that.transcribeAudio,_that.sampleRate,_that.autoLang);case _:
  return null;

}
}

}

/// @nodoc


class _AiMediaSettings implements AiMediaSettings {
  const _AiMediaSettings({this.analyzeThumbnails = true, this.transcribeAudio = true, this.sampleRate = 2, this.autoLang = true});
  

@override@JsonKey() final  bool analyzeThumbnails;
@override@JsonKey() final  bool transcribeAudio;
@override@JsonKey() final  int sampleRate;
@override@JsonKey() final  bool autoLang;

/// Create a copy of AiMediaSettings
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AiMediaSettingsCopyWith<_AiMediaSettings> get copyWith => __$AiMediaSettingsCopyWithImpl<_AiMediaSettings>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AiMediaSettings&&(identical(other.analyzeThumbnails, analyzeThumbnails) || other.analyzeThumbnails == analyzeThumbnails)&&(identical(other.transcribeAudio, transcribeAudio) || other.transcribeAudio == transcribeAudio)&&(identical(other.sampleRate, sampleRate) || other.sampleRate == sampleRate)&&(identical(other.autoLang, autoLang) || other.autoLang == autoLang));
}


@override
int get hashCode {
    return Object.hash(runtimeType,analyzeThumbnails,transcribeAudio,sampleRate,autoLang);
}

@override
String toString() {
    return 'AiMediaSettings(analyzeThumbnails: $analyzeThumbnails, transcribeAudio: $transcribeAudio, sampleRate: $sampleRate, autoLang: $autoLang)';
}


}

/// @nodoc
abstract mixin class _$AiMediaSettingsCopyWith<$Res> implements $AiMediaSettingsCopyWith<$Res> {
  factory _$AiMediaSettingsCopyWith(_AiMediaSettings value, $Res Function(_AiMediaSettings) _then) = __$AiMediaSettingsCopyWithImpl;
@override @useResult
$Res call({
 bool analyzeThumbnails, bool transcribeAudio, int sampleRate, bool autoLang
});




}
/// @nodoc
class __$AiMediaSettingsCopyWithImpl<$Res>
    implements _$AiMediaSettingsCopyWith<$Res> {
  __$AiMediaSettingsCopyWithImpl(this._self, this._then);

  final _AiMediaSettings _self;
  final $Res Function(_AiMediaSettings) _then;

/// Create a copy of AiMediaSettings
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? analyzeThumbnails = null,Object? transcribeAudio = null,Object? sampleRate = null,Object? autoLang = null,}) {
  return _then(_AiMediaSettings(
analyzeThumbnails: null == analyzeThumbnails ? _self.analyzeThumbnails : analyzeThumbnails // ignore: cast_nullable_to_non_nullable
as bool,transcribeAudio: null == transcribeAudio ? _self.transcribeAudio : transcribeAudio // ignore: cast_nullable_to_non_nullable
as bool,sampleRate: null == sampleRate ? _self.sampleRate : sampleRate // ignore: cast_nullable_to_non_nullable
as int,autoLang: null == autoLang ? _self.autoLang : autoLang // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$AiFeatureSettings {

 bool get bitrateRecommender; bool get sceneKeyframes; bool get noiseReduction; bool get silentTrim; bool get facePriority;
/// Create a copy of AiFeatureSettings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AiFeatureSettingsCopyWith<AiFeatureSettings> get copyWith => _$AiFeatureSettingsCopyWithImpl<AiFeatureSettings>(this as AiFeatureSettings, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as AiFeatureSettings;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AiFeatureSettings&&(identical(other.bitrateRecommender, _this.bitrateRecommender) || other.bitrateRecommender == _this.bitrateRecommender)&&(identical(other.sceneKeyframes, _this.sceneKeyframes) || other.sceneKeyframes == _this.sceneKeyframes)&&(identical(other.noiseReduction, _this.noiseReduction) || other.noiseReduction == _this.noiseReduction)&&(identical(other.silentTrim, _this.silentTrim) || other.silentTrim == _this.silentTrim)&&(identical(other.facePriority, _this.facePriority) || other.facePriority == _this.facePriority));
}


@override
int get hashCode {
  final _this = this as AiFeatureSettings;
  return Object.hash(runtimeType,_this.bitrateRecommender,_this.sceneKeyframes,_this.noiseReduction,_this.silentTrim,_this.facePriority);
}

@override
String toString() {
  final _this = this as AiFeatureSettings;
  return 'AiFeatureSettings(bitrateRecommender: ${_this.bitrateRecommender}, sceneKeyframes: ${_this.sceneKeyframes}, noiseReduction: ${_this.noiseReduction}, silentTrim: ${_this.silentTrim}, facePriority: ${_this.facePriority})';
}


}

/// @nodoc
abstract mixin class $AiFeatureSettingsCopyWith<$Res>  {
  factory $AiFeatureSettingsCopyWith(AiFeatureSettings value, $Res Function(AiFeatureSettings) _then) = _$AiFeatureSettingsCopyWithImpl;
@useResult
$Res call({
 bool bitrateRecommender, bool sceneKeyframes, bool noiseReduction, bool silentTrim, bool facePriority
});




}
/// @nodoc
class _$AiFeatureSettingsCopyWithImpl<$Res>
    implements $AiFeatureSettingsCopyWith<$Res> {
  _$AiFeatureSettingsCopyWithImpl(this._self, this._then);

  final AiFeatureSettings _self;
  final $Res Function(AiFeatureSettings) _then;

/// Create a copy of AiFeatureSettings
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? bitrateRecommender = null,Object? sceneKeyframes = null,Object? noiseReduction = null,Object? silentTrim = null,Object? facePriority = null,}) {
  return _then(AiFeatureSettings(
bitrateRecommender: null == bitrateRecommender ? _self.bitrateRecommender : bitrateRecommender // ignore: cast_nullable_to_non_nullable
as bool,sceneKeyframes: null == sceneKeyframes ? _self.sceneKeyframes : sceneKeyframes // ignore: cast_nullable_to_non_nullable
as bool,noiseReduction: null == noiseReduction ? _self.noiseReduction : noiseReduction // ignore: cast_nullable_to_non_nullable
as bool,silentTrim: null == silentTrim ? _self.silentTrim : silentTrim // ignore: cast_nullable_to_non_nullable
as bool,facePriority: null == facePriority ? _self.facePriority : facePriority // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [AiFeatureSettings].
extension AiFeatureSettingsPatterns on AiFeatureSettings {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AiFeatureSettings value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AiFeatureSettings() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AiFeatureSettings value)  $default,){
final _that = this;
switch (_that) {
case _AiFeatureSettings():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AiFeatureSettings value)?  $default,){
final _that = this;
switch (_that) {
case _AiFeatureSettings() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool bitrateRecommender,  bool sceneKeyframes,  bool noiseReduction,  bool silentTrim,  bool facePriority)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AiFeatureSettings() when $default != null:
return $default(_that.bitrateRecommender,_that.sceneKeyframes,_that.noiseReduction,_that.silentTrim,_that.facePriority);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool bitrateRecommender,  bool sceneKeyframes,  bool noiseReduction,  bool silentTrim,  bool facePriority)  $default,) {final _that = this;
switch (_that) {
case _AiFeatureSettings():
return $default(_that.bitrateRecommender,_that.sceneKeyframes,_that.noiseReduction,_that.silentTrim,_that.facePriority);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool bitrateRecommender,  bool sceneKeyframes,  bool noiseReduction,  bool silentTrim,  bool facePriority)?  $default,) {final _that = this;
switch (_that) {
case _AiFeatureSettings() when $default != null:
return $default(_that.bitrateRecommender,_that.sceneKeyframes,_that.noiseReduction,_that.silentTrim,_that.facePriority);case _:
  return null;

}
}

}

/// @nodoc


class _AiFeatureSettings implements AiFeatureSettings {
  const _AiFeatureSettings({this.bitrateRecommender = true, this.sceneKeyframes = false, this.noiseReduction = false, this.silentTrim = false, this.facePriority = false});
  

@override@JsonKey() final  bool bitrateRecommender;
@override@JsonKey() final  bool sceneKeyframes;
@override@JsonKey() final  bool noiseReduction;
@override@JsonKey() final  bool silentTrim;
@override@JsonKey() final  bool facePriority;

/// Create a copy of AiFeatureSettings
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AiFeatureSettingsCopyWith<_AiFeatureSettings> get copyWith => __$AiFeatureSettingsCopyWithImpl<_AiFeatureSettings>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AiFeatureSettings&&(identical(other.bitrateRecommender, bitrateRecommender) || other.bitrateRecommender == bitrateRecommender)&&(identical(other.sceneKeyframes, sceneKeyframes) || other.sceneKeyframes == sceneKeyframes)&&(identical(other.noiseReduction, noiseReduction) || other.noiseReduction == noiseReduction)&&(identical(other.silentTrim, silentTrim) || other.silentTrim == silentTrim)&&(identical(other.facePriority, facePriority) || other.facePriority == facePriority));
}


@override
int get hashCode {
    return Object.hash(runtimeType,bitrateRecommender,sceneKeyframes,noiseReduction,silentTrim,facePriority);
}

@override
String toString() {
    return 'AiFeatureSettings(bitrateRecommender: $bitrateRecommender, sceneKeyframes: $sceneKeyframes, noiseReduction: $noiseReduction, silentTrim: $silentTrim, facePriority: $facePriority)';
}


}

/// @nodoc
abstract mixin class _$AiFeatureSettingsCopyWith<$Res> implements $AiFeatureSettingsCopyWith<$Res> {
  factory _$AiFeatureSettingsCopyWith(_AiFeatureSettings value, $Res Function(_AiFeatureSettings) _then) = __$AiFeatureSettingsCopyWithImpl;
@override @useResult
$Res call({
 bool bitrateRecommender, bool sceneKeyframes, bool noiseReduction, bool silentTrim, bool facePriority
});




}
/// @nodoc
class __$AiFeatureSettingsCopyWithImpl<$Res>
    implements _$AiFeatureSettingsCopyWith<$Res> {
  __$AiFeatureSettingsCopyWithImpl(this._self, this._then);

  final _AiFeatureSettings _self;
  final $Res Function(_AiFeatureSettings) _then;

/// Create a copy of AiFeatureSettings
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? bitrateRecommender = null,Object? sceneKeyframes = null,Object? noiseReduction = null,Object? silentTrim = null,Object? facePriority = null,}) {
  return _then(_AiFeatureSettings(
bitrateRecommender: null == bitrateRecommender ? _self.bitrateRecommender : bitrateRecommender // ignore: cast_nullable_to_non_nullable
as bool,sceneKeyframes: null == sceneKeyframes ? _self.sceneKeyframes : sceneKeyframes // ignore: cast_nullable_to_non_nullable
as bool,noiseReduction: null == noiseReduction ? _self.noiseReduction : noiseReduction // ignore: cast_nullable_to_non_nullable
as bool,silentTrim: null == silentTrim ? _self.silentTrim : silentTrim // ignore: cast_nullable_to_non_nullable
as bool,facePriority: null == facePriority ? _self.facePriority : facePriority // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$AiToolSettings {

 bool get trimTool; bool get audioExtractTool; bool get metadataStripTool; bool get confirmDestructive; bool get sandboxScratchpad;
/// Create a copy of AiToolSettings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AiToolSettingsCopyWith<AiToolSettings> get copyWith => _$AiToolSettingsCopyWithImpl<AiToolSettings>(this as AiToolSettings, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as AiToolSettings;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AiToolSettings&&(identical(other.trimTool, _this.trimTool) || other.trimTool == _this.trimTool)&&(identical(other.audioExtractTool, _this.audioExtractTool) || other.audioExtractTool == _this.audioExtractTool)&&(identical(other.metadataStripTool, _this.metadataStripTool) || other.metadataStripTool == _this.metadataStripTool)&&(identical(other.confirmDestructive, _this.confirmDestructive) || other.confirmDestructive == _this.confirmDestructive)&&(identical(other.sandboxScratchpad, _this.sandboxScratchpad) || other.sandboxScratchpad == _this.sandboxScratchpad));
}


@override
int get hashCode {
  final _this = this as AiToolSettings;
  return Object.hash(runtimeType,_this.trimTool,_this.audioExtractTool,_this.metadataStripTool,_this.confirmDestructive,_this.sandboxScratchpad);
}

@override
String toString() {
  final _this = this as AiToolSettings;
  return 'AiToolSettings(trimTool: ${_this.trimTool}, audioExtractTool: ${_this.audioExtractTool}, metadataStripTool: ${_this.metadataStripTool}, confirmDestructive: ${_this.confirmDestructive}, sandboxScratchpad: ${_this.sandboxScratchpad})';
}


}

/// @nodoc
abstract mixin class $AiToolSettingsCopyWith<$Res>  {
  factory $AiToolSettingsCopyWith(AiToolSettings value, $Res Function(AiToolSettings) _then) = _$AiToolSettingsCopyWithImpl;
@useResult
$Res call({
 bool trimTool, bool audioExtractTool, bool metadataStripTool, bool confirmDestructive, bool sandboxScratchpad
});




}
/// @nodoc
class _$AiToolSettingsCopyWithImpl<$Res>
    implements $AiToolSettingsCopyWith<$Res> {
  _$AiToolSettingsCopyWithImpl(this._self, this._then);

  final AiToolSettings _self;
  final $Res Function(AiToolSettings) _then;

/// Create a copy of AiToolSettings
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? trimTool = null,Object? audioExtractTool = null,Object? metadataStripTool = null,Object? confirmDestructive = null,Object? sandboxScratchpad = null,}) {
  return _then(AiToolSettings(
trimTool: null == trimTool ? _self.trimTool : trimTool // ignore: cast_nullable_to_non_nullable
as bool,audioExtractTool: null == audioExtractTool ? _self.audioExtractTool : audioExtractTool // ignore: cast_nullable_to_non_nullable
as bool,metadataStripTool: null == metadataStripTool ? _self.metadataStripTool : metadataStripTool // ignore: cast_nullable_to_non_nullable
as bool,confirmDestructive: null == confirmDestructive ? _self.confirmDestructive : confirmDestructive // ignore: cast_nullable_to_non_nullable
as bool,sandboxScratchpad: null == sandboxScratchpad ? _self.sandboxScratchpad : sandboxScratchpad // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [AiToolSettings].
extension AiToolSettingsPatterns on AiToolSettings {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AiToolSettings value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AiToolSettings() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AiToolSettings value)  $default,){
final _that = this;
switch (_that) {
case _AiToolSettings():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AiToolSettings value)?  $default,){
final _that = this;
switch (_that) {
case _AiToolSettings() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool trimTool,  bool audioExtractTool,  bool metadataStripTool,  bool confirmDestructive,  bool sandboxScratchpad)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AiToolSettings() when $default != null:
return $default(_that.trimTool,_that.audioExtractTool,_that.metadataStripTool,_that.confirmDestructive,_that.sandboxScratchpad);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool trimTool,  bool audioExtractTool,  bool metadataStripTool,  bool confirmDestructive,  bool sandboxScratchpad)  $default,) {final _that = this;
switch (_that) {
case _AiToolSettings():
return $default(_that.trimTool,_that.audioExtractTool,_that.metadataStripTool,_that.confirmDestructive,_that.sandboxScratchpad);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool trimTool,  bool audioExtractTool,  bool metadataStripTool,  bool confirmDestructive,  bool sandboxScratchpad)?  $default,) {final _that = this;
switch (_that) {
case _AiToolSettings() when $default != null:
return $default(_that.trimTool,_that.audioExtractTool,_that.metadataStripTool,_that.confirmDestructive,_that.sandboxScratchpad);case _:
  return null;

}
}

}

/// @nodoc


class _AiToolSettings implements AiToolSettings {
  const _AiToolSettings({this.trimTool = true, this.audioExtractTool = true, this.metadataStripTool = true, this.confirmDestructive = true, this.sandboxScratchpad = true});
  

@override@JsonKey() final  bool trimTool;
@override@JsonKey() final  bool audioExtractTool;
@override@JsonKey() final  bool metadataStripTool;
@override@JsonKey() final  bool confirmDestructive;
@override@JsonKey() final  bool sandboxScratchpad;

/// Create a copy of AiToolSettings
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AiToolSettingsCopyWith<_AiToolSettings> get copyWith => __$AiToolSettingsCopyWithImpl<_AiToolSettings>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AiToolSettings&&(identical(other.trimTool, trimTool) || other.trimTool == trimTool)&&(identical(other.audioExtractTool, audioExtractTool) || other.audioExtractTool == audioExtractTool)&&(identical(other.metadataStripTool, metadataStripTool) || other.metadataStripTool == metadataStripTool)&&(identical(other.confirmDestructive, confirmDestructive) || other.confirmDestructive == confirmDestructive)&&(identical(other.sandboxScratchpad, sandboxScratchpad) || other.sandboxScratchpad == sandboxScratchpad));
}


@override
int get hashCode {
    return Object.hash(runtimeType,trimTool,audioExtractTool,metadataStripTool,confirmDestructive,sandboxScratchpad);
}

@override
String toString() {
    return 'AiToolSettings(trimTool: $trimTool, audioExtractTool: $audioExtractTool, metadataStripTool: $metadataStripTool, confirmDestructive: $confirmDestructive, sandboxScratchpad: $sandboxScratchpad)';
}


}

/// @nodoc
abstract mixin class _$AiToolSettingsCopyWith<$Res> implements $AiToolSettingsCopyWith<$Res> {
  factory _$AiToolSettingsCopyWith(_AiToolSettings value, $Res Function(_AiToolSettings) _then) = __$AiToolSettingsCopyWithImpl;
@override @useResult
$Res call({
 bool trimTool, bool audioExtractTool, bool metadataStripTool, bool confirmDestructive, bool sandboxScratchpad
});




}
/// @nodoc
class __$AiToolSettingsCopyWithImpl<$Res>
    implements _$AiToolSettingsCopyWith<$Res> {
  __$AiToolSettingsCopyWithImpl(this._self, this._then);

  final _AiToolSettings _self;
  final $Res Function(_AiToolSettings) _then;

/// Create a copy of AiToolSettings
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? trimTool = null,Object? audioExtractTool = null,Object? metadataStripTool = null,Object? confirmDestructive = null,Object? sandboxScratchpad = null,}) {
  return _then(_AiToolSettings(
trimTool: null == trimTool ? _self.trimTool : trimTool // ignore: cast_nullable_to_non_nullable
as bool,audioExtractTool: null == audioExtractTool ? _self.audioExtractTool : audioExtractTool // ignore: cast_nullable_to_non_nullable
as bool,metadataStripTool: null == metadataStripTool ? _self.metadataStripTool : metadataStripTool // ignore: cast_nullable_to_non_nullable
as bool,confirmDestructive: null == confirmDestructive ? _self.confirmDestructive : confirmDestructive // ignore: cast_nullable_to_non_nullable
as bool,sandboxScratchpad: null == sandboxScratchpad ? _self.sandboxScratchpad : sandboxScratchpad // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$AiSearchSettings {

 bool get semanticIndexing; bool get indexWhileCharging;
/// Create a copy of AiSearchSettings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AiSearchSettingsCopyWith<AiSearchSettings> get copyWith => _$AiSearchSettingsCopyWithImpl<AiSearchSettings>(this as AiSearchSettings, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as AiSearchSettings;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AiSearchSettings&&(identical(other.semanticIndexing, _this.semanticIndexing) || other.semanticIndexing == _this.semanticIndexing)&&(identical(other.indexWhileCharging, _this.indexWhileCharging) || other.indexWhileCharging == _this.indexWhileCharging));
}


@override
int get hashCode {
  final _this = this as AiSearchSettings;
  return Object.hash(runtimeType,_this.semanticIndexing,_this.indexWhileCharging);
}

@override
String toString() {
  final _this = this as AiSearchSettings;
  return 'AiSearchSettings(semanticIndexing: ${_this.semanticIndexing}, indexWhileCharging: ${_this.indexWhileCharging})';
}


}

/// @nodoc
abstract mixin class $AiSearchSettingsCopyWith<$Res>  {
  factory $AiSearchSettingsCopyWith(AiSearchSettings value, $Res Function(AiSearchSettings) _then) = _$AiSearchSettingsCopyWithImpl;
@useResult
$Res call({
 bool semanticIndexing, bool indexWhileCharging
});




}
/// @nodoc
class _$AiSearchSettingsCopyWithImpl<$Res>
    implements $AiSearchSettingsCopyWith<$Res> {
  _$AiSearchSettingsCopyWithImpl(this._self, this._then);

  final AiSearchSettings _self;
  final $Res Function(AiSearchSettings) _then;

/// Create a copy of AiSearchSettings
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? semanticIndexing = null,Object? indexWhileCharging = null,}) {
  return _then(AiSearchSettings(
semanticIndexing: null == semanticIndexing ? _self.semanticIndexing : semanticIndexing // ignore: cast_nullable_to_non_nullable
as bool,indexWhileCharging: null == indexWhileCharging ? _self.indexWhileCharging : indexWhileCharging // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [AiSearchSettings].
extension AiSearchSettingsPatterns on AiSearchSettings {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AiSearchSettings value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AiSearchSettings() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AiSearchSettings value)  $default,){
final _that = this;
switch (_that) {
case _AiSearchSettings():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AiSearchSettings value)?  $default,){
final _that = this;
switch (_that) {
case _AiSearchSettings() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool semanticIndexing,  bool indexWhileCharging)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AiSearchSettings() when $default != null:
return $default(_that.semanticIndexing,_that.indexWhileCharging);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool semanticIndexing,  bool indexWhileCharging)  $default,) {final _that = this;
switch (_that) {
case _AiSearchSettings():
return $default(_that.semanticIndexing,_that.indexWhileCharging);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool semanticIndexing,  bool indexWhileCharging)?  $default,) {final _that = this;
switch (_that) {
case _AiSearchSettings() when $default != null:
return $default(_that.semanticIndexing,_that.indexWhileCharging);case _:
  return null;

}
}

}

/// @nodoc


class _AiSearchSettings implements AiSearchSettings {
  const _AiSearchSettings({this.semanticIndexing = false, this.indexWhileCharging = true});
  

@override@JsonKey() final  bool semanticIndexing;
@override@JsonKey() final  bool indexWhileCharging;

/// Create a copy of AiSearchSettings
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AiSearchSettingsCopyWith<_AiSearchSettings> get copyWith => __$AiSearchSettingsCopyWithImpl<_AiSearchSettings>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AiSearchSettings&&(identical(other.semanticIndexing, semanticIndexing) || other.semanticIndexing == semanticIndexing)&&(identical(other.indexWhileCharging, indexWhileCharging) || other.indexWhileCharging == indexWhileCharging));
}


@override
int get hashCode {
    return Object.hash(runtimeType,semanticIndexing,indexWhileCharging);
}

@override
String toString() {
    return 'AiSearchSettings(semanticIndexing: $semanticIndexing, indexWhileCharging: $indexWhileCharging)';
}


}

/// @nodoc
abstract mixin class _$AiSearchSettingsCopyWith<$Res> implements $AiSearchSettingsCopyWith<$Res> {
  factory _$AiSearchSettingsCopyWith(_AiSearchSettings value, $Res Function(_AiSearchSettings) _then) = __$AiSearchSettingsCopyWithImpl;
@override @useResult
$Res call({
 bool semanticIndexing, bool indexWhileCharging
});




}
/// @nodoc
class __$AiSearchSettingsCopyWithImpl<$Res>
    implements _$AiSearchSettingsCopyWith<$Res> {
  __$AiSearchSettingsCopyWithImpl(this._self, this._then);

  final _AiSearchSettings _self;
  final $Res Function(_AiSearchSettings) _then;

/// Create a copy of AiSearchSettings
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? semanticIndexing = null,Object? indexWhileCharging = null,}) {
  return _then(_AiSearchSettings(
semanticIndexing: null == semanticIndexing ? _self.semanticIndexing : semanticIndexing // ignore: cast_nullable_to_non_nullable
as bool,indexWhileCharging: null == indexWhileCharging ? _self.indexWhileCharging : indexWhileCharging // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$AiRuntimeSettings {

 String get backend; int get threadCount; int get memoryBudgetMb; bool get lowPowerMode;
/// Create a copy of AiRuntimeSettings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AiRuntimeSettingsCopyWith<AiRuntimeSettings> get copyWith => _$AiRuntimeSettingsCopyWithImpl<AiRuntimeSettings>(this as AiRuntimeSettings, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as AiRuntimeSettings;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AiRuntimeSettings&&(identical(other.backend, _this.backend) || other.backend == _this.backend)&&(identical(other.threadCount, _this.threadCount) || other.threadCount == _this.threadCount)&&(identical(other.memoryBudgetMb, _this.memoryBudgetMb) || other.memoryBudgetMb == _this.memoryBudgetMb)&&(identical(other.lowPowerMode, _this.lowPowerMode) || other.lowPowerMode == _this.lowPowerMode));
}


@override
int get hashCode {
  final _this = this as AiRuntimeSettings;
  return Object.hash(runtimeType,_this.backend,_this.threadCount,_this.memoryBudgetMb,_this.lowPowerMode);
}

@override
String toString() {
  final _this = this as AiRuntimeSettings;
  return 'AiRuntimeSettings(backend: ${_this.backend}, threadCount: ${_this.threadCount}, memoryBudgetMb: ${_this.memoryBudgetMb}, lowPowerMode: ${_this.lowPowerMode})';
}


}

/// @nodoc
abstract mixin class $AiRuntimeSettingsCopyWith<$Res>  {
  factory $AiRuntimeSettingsCopyWith(AiRuntimeSettings value, $Res Function(AiRuntimeSettings) _then) = _$AiRuntimeSettingsCopyWithImpl;
@useResult
$Res call({
 String backend, int threadCount, int memoryBudgetMb, bool lowPowerMode
});




}
/// @nodoc
class _$AiRuntimeSettingsCopyWithImpl<$Res>
    implements $AiRuntimeSettingsCopyWith<$Res> {
  _$AiRuntimeSettingsCopyWithImpl(this._self, this._then);

  final AiRuntimeSettings _self;
  final $Res Function(AiRuntimeSettings) _then;

/// Create a copy of AiRuntimeSettings
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? backend = null,Object? threadCount = null,Object? memoryBudgetMb = null,Object? lowPowerMode = null,}) {
  return _then(AiRuntimeSettings(
backend: null == backend ? _self.backend : backend // ignore: cast_nullable_to_non_nullable
as String,threadCount: null == threadCount ? _self.threadCount : threadCount // ignore: cast_nullable_to_non_nullable
as int,memoryBudgetMb: null == memoryBudgetMb ? _self.memoryBudgetMb : memoryBudgetMb // ignore: cast_nullable_to_non_nullable
as int,lowPowerMode: null == lowPowerMode ? _self.lowPowerMode : lowPowerMode // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [AiRuntimeSettings].
extension AiRuntimeSettingsPatterns on AiRuntimeSettings {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AiRuntimeSettings value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AiRuntimeSettings() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AiRuntimeSettings value)  $default,){
final _that = this;
switch (_that) {
case _AiRuntimeSettings():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AiRuntimeSettings value)?  $default,){
final _that = this;
switch (_that) {
case _AiRuntimeSettings() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String backend,  int threadCount,  int memoryBudgetMb,  bool lowPowerMode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AiRuntimeSettings() when $default != null:
return $default(_that.backend,_that.threadCount,_that.memoryBudgetMb,_that.lowPowerMode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String backend,  int threadCount,  int memoryBudgetMb,  bool lowPowerMode)  $default,) {final _that = this;
switch (_that) {
case _AiRuntimeSettings():
return $default(_that.backend,_that.threadCount,_that.memoryBudgetMb,_that.lowPowerMode);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String backend,  int threadCount,  int memoryBudgetMb,  bool lowPowerMode)?  $default,) {final _that = this;
switch (_that) {
case _AiRuntimeSettings() when $default != null:
return $default(_that.backend,_that.threadCount,_that.memoryBudgetMb,_that.lowPowerMode);case _:
  return null;

}
}

}

/// @nodoc


class _AiRuntimeSettings implements AiRuntimeSettings {
  const _AiRuntimeSettings({this.backend = 'auto', this.threadCount = 4, this.memoryBudgetMb = 1024, this.lowPowerMode = false});
  

@override@JsonKey() final  String backend;
@override@JsonKey() final  int threadCount;
@override@JsonKey() final  int memoryBudgetMb;
@override@JsonKey() final  bool lowPowerMode;

/// Create a copy of AiRuntimeSettings
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AiRuntimeSettingsCopyWith<_AiRuntimeSettings> get copyWith => __$AiRuntimeSettingsCopyWithImpl<_AiRuntimeSettings>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AiRuntimeSettings&&(identical(other.backend, backend) || other.backend == backend)&&(identical(other.threadCount, threadCount) || other.threadCount == threadCount)&&(identical(other.memoryBudgetMb, memoryBudgetMb) || other.memoryBudgetMb == memoryBudgetMb)&&(identical(other.lowPowerMode, lowPowerMode) || other.lowPowerMode == lowPowerMode));
}


@override
int get hashCode {
    return Object.hash(runtimeType,backend,threadCount,memoryBudgetMb,lowPowerMode);
}

@override
String toString() {
    return 'AiRuntimeSettings(backend: $backend, threadCount: $threadCount, memoryBudgetMb: $memoryBudgetMb, lowPowerMode: $lowPowerMode)';
}


}

/// @nodoc
abstract mixin class _$AiRuntimeSettingsCopyWith<$Res> implements $AiRuntimeSettingsCopyWith<$Res> {
  factory _$AiRuntimeSettingsCopyWith(_AiRuntimeSettings value, $Res Function(_AiRuntimeSettings) _then) = __$AiRuntimeSettingsCopyWithImpl;
@override @useResult
$Res call({
 String backend, int threadCount, int memoryBudgetMb, bool lowPowerMode
});




}
/// @nodoc
class __$AiRuntimeSettingsCopyWithImpl<$Res>
    implements _$AiRuntimeSettingsCopyWith<$Res> {
  __$AiRuntimeSettingsCopyWithImpl(this._self, this._then);

  final _AiRuntimeSettings _self;
  final $Res Function(_AiRuntimeSettings) _then;

/// Create a copy of AiRuntimeSettings
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? backend = null,Object? threadCount = null,Object? memoryBudgetMb = null,Object? lowPowerMode = null,}) {
  return _then(_AiRuntimeSettings(
backend: null == backend ? _self.backend : backend // ignore: cast_nullable_to_non_nullable
as String,threadCount: null == threadCount ? _self.threadCount : threadCount // ignore: cast_nullable_to_non_nullable
as int,memoryBudgetMb: null == memoryBudgetMb ? _self.memoryBudgetMb : memoryBudgetMb // ignore: cast_nullable_to_non_nullable
as int,lowPowerMode: null == lowPowerMode ? _self.lowPowerMode : lowPowerMode // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$AiModelSettings {

 String? get chatModelId; String? get embeddingModelId;
/// Create a copy of AiModelSettings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AiModelSettingsCopyWith<AiModelSettings> get copyWith => _$AiModelSettingsCopyWithImpl<AiModelSettings>(this as AiModelSettings, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as AiModelSettings;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AiModelSettings&&(identical(other.chatModelId, _this.chatModelId) || other.chatModelId == _this.chatModelId)&&(identical(other.embeddingModelId, _this.embeddingModelId) || other.embeddingModelId == _this.embeddingModelId));
}


@override
int get hashCode {
  final _this = this as AiModelSettings;
  return Object.hash(runtimeType,_this.chatModelId,_this.embeddingModelId);
}

@override
String toString() {
  final _this = this as AiModelSettings;
  return 'AiModelSettings(chatModelId: ${_this.chatModelId}, embeddingModelId: ${_this.embeddingModelId})';
}


}

/// @nodoc
abstract mixin class $AiModelSettingsCopyWith<$Res>  {
  factory $AiModelSettingsCopyWith(AiModelSettings value, $Res Function(AiModelSettings) _then) = _$AiModelSettingsCopyWithImpl;
@useResult
$Res call({
 String? chatModelId, String? embeddingModelId
});




}
/// @nodoc
class _$AiModelSettingsCopyWithImpl<$Res>
    implements $AiModelSettingsCopyWith<$Res> {
  _$AiModelSettingsCopyWithImpl(this._self, this._then);

  final AiModelSettings _self;
  final $Res Function(AiModelSettings) _then;

/// Create a copy of AiModelSettings
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? chatModelId = freezed,Object? embeddingModelId = freezed,}) {
  return _then(AiModelSettings(
chatModelId: freezed == chatModelId ? _self.chatModelId : chatModelId // ignore: cast_nullable_to_non_nullable
as String?,embeddingModelId: freezed == embeddingModelId ? _self.embeddingModelId : embeddingModelId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AiModelSettings].
extension AiModelSettingsPatterns on AiModelSettings {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AiModelSettings value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AiModelSettings() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AiModelSettings value)  $default,){
final _that = this;
switch (_that) {
case _AiModelSettings():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AiModelSettings value)?  $default,){
final _that = this;
switch (_that) {
case _AiModelSettings() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? chatModelId,  String? embeddingModelId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AiModelSettings() when $default != null:
return $default(_that.chatModelId,_that.embeddingModelId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? chatModelId,  String? embeddingModelId)  $default,) {final _that = this;
switch (_that) {
case _AiModelSettings():
return $default(_that.chatModelId,_that.embeddingModelId);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? chatModelId,  String? embeddingModelId)?  $default,) {final _that = this;
switch (_that) {
case _AiModelSettings() when $default != null:
return $default(_that.chatModelId,_that.embeddingModelId);case _:
  return null;

}
}

}

/// @nodoc


class _AiModelSettings implements AiModelSettings {
  const _AiModelSettings({this.chatModelId, this.embeddingModelId});
  

@override final  String? chatModelId;
@override final  String? embeddingModelId;

/// Create a copy of AiModelSettings
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AiModelSettingsCopyWith<_AiModelSettings> get copyWith => __$AiModelSettingsCopyWithImpl<_AiModelSettings>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AiModelSettings&&(identical(other.chatModelId, chatModelId) || other.chatModelId == chatModelId)&&(identical(other.embeddingModelId, embeddingModelId) || other.embeddingModelId == embeddingModelId));
}


@override
int get hashCode {
    return Object.hash(runtimeType,chatModelId,embeddingModelId);
}

@override
String toString() {
    return 'AiModelSettings(chatModelId: $chatModelId, embeddingModelId: $embeddingModelId)';
}


}

/// @nodoc
abstract mixin class _$AiModelSettingsCopyWith<$Res> implements $AiModelSettingsCopyWith<$Res> {
  factory _$AiModelSettingsCopyWith(_AiModelSettings value, $Res Function(_AiModelSettings) _then) = __$AiModelSettingsCopyWithImpl;
@override @useResult
$Res call({
 String? chatModelId, String? embeddingModelId
});




}
/// @nodoc
class __$AiModelSettingsCopyWithImpl<$Res>
    implements _$AiModelSettingsCopyWith<$Res> {
  __$AiModelSettingsCopyWithImpl(this._self, this._then);

  final _AiModelSettings _self;
  final $Res Function(_AiModelSettings) _then;

/// Create a copy of AiModelSettings
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? chatModelId = freezed,Object? embeddingModelId = freezed,}) {
  return _then(_AiModelSettings(
chatModelId: freezed == chatModelId ? _self.chatModelId : chatModelId // ignore: cast_nullable_to_non_nullable
as String?,embeddingModelId: freezed == embeddingModelId ? _self.embeddingModelId : embeddingModelId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
