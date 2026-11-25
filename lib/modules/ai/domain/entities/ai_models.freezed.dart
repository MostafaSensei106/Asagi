// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ai_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AiModelChoice {

 String get id; String get name; int get bytes; bool get installed; bool get supported; bool get embedding;
/// Create a copy of AiModelChoice
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AiModelChoiceCopyWith<AiModelChoice> get copyWith => _$AiModelChoiceCopyWithImpl<AiModelChoice>(this as AiModelChoice, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as AiModelChoice;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AiModelChoice&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.bytes, _this.bytes) || other.bytes == _this.bytes)&&(identical(other.installed, _this.installed) || other.installed == _this.installed)&&(identical(other.supported, _this.supported) || other.supported == _this.supported)&&(identical(other.embedding, _this.embedding) || other.embedding == _this.embedding));
}


@override
int get hashCode {
  final _this = this as AiModelChoice;
  return Object.hash(runtimeType,_this.id,_this.name,_this.bytes,_this.installed,_this.supported,_this.embedding);
}

@override
String toString() {
  final _this = this as AiModelChoice;
  return 'AiModelChoice(id: ${_this.id}, name: ${_this.name}, bytes: ${_this.bytes}, installed: ${_this.installed}, supported: ${_this.supported}, embedding: ${_this.embedding})';
}


}

/// @nodoc
abstract mixin class $AiModelChoiceCopyWith<$Res>  {
  factory $AiModelChoiceCopyWith(AiModelChoice value, $Res Function(AiModelChoice) _then) = _$AiModelChoiceCopyWithImpl;
@useResult
$Res call({
 String id, String name, int bytes, bool installed, bool supported, bool embedding
});




}
/// @nodoc
class _$AiModelChoiceCopyWithImpl<$Res>
    implements $AiModelChoiceCopyWith<$Res> {
  _$AiModelChoiceCopyWithImpl(this._self, this._then);

  final AiModelChoice _self;
  final $Res Function(AiModelChoice) _then;

/// Create a copy of AiModelChoice
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? bytes = null,Object? installed = null,Object? supported = null,Object? embedding = null,}) {
  return _then(AiModelChoice(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,bytes: null == bytes ? _self.bytes : bytes // ignore: cast_nullable_to_non_nullable
as int,installed: null == installed ? _self.installed : installed // ignore: cast_nullable_to_non_nullable
as bool,supported: null == supported ? _self.supported : supported // ignore: cast_nullable_to_non_nullable
as bool,embedding: null == embedding ? _self.embedding : embedding // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [AiModelChoice].
extension AiModelChoicePatterns on AiModelChoice {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AiModelChoice value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AiModelChoice() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AiModelChoice value)  $default,){
final _that = this;
switch (_that) {
case _AiModelChoice():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AiModelChoice value)?  $default,){
final _that = this;
switch (_that) {
case _AiModelChoice() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  int bytes,  bool installed,  bool supported,  bool embedding)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AiModelChoice() when $default != null:
return $default(_that.id,_that.name,_that.bytes,_that.installed,_that.supported,_that.embedding);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  int bytes,  bool installed,  bool supported,  bool embedding)  $default,) {final _that = this;
switch (_that) {
case _AiModelChoice():
return $default(_that.id,_that.name,_that.bytes,_that.installed,_that.supported,_that.embedding);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  int bytes,  bool installed,  bool supported,  bool embedding)?  $default,) {final _that = this;
switch (_that) {
case _AiModelChoice() when $default != null:
return $default(_that.id,_that.name,_that.bytes,_that.installed,_that.supported,_that.embedding);case _:
  return null;

}
}

}

/// @nodoc


class _AiModelChoice implements AiModelChoice {
  const _AiModelChoice({required this.id, required this.name, required this.bytes, this.installed = false, this.supported = true, this.embedding = false});
  

@override final  String id;
@override final  String name;
@override final  int bytes;
@override@JsonKey() final  bool installed;
@override@JsonKey() final  bool supported;
@override@JsonKey() final  bool embedding;

/// Create a copy of AiModelChoice
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AiModelChoiceCopyWith<_AiModelChoice> get copyWith => __$AiModelChoiceCopyWithImpl<_AiModelChoice>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AiModelChoice&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.bytes, bytes) || other.bytes == bytes)&&(identical(other.installed, installed) || other.installed == installed)&&(identical(other.supported, supported) || other.supported == supported)&&(identical(other.embedding, embedding) || other.embedding == embedding));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,name,bytes,installed,supported,embedding);
}

@override
String toString() {
    return 'AiModelChoice(id: $id, name: $name, bytes: $bytes, installed: $installed, supported: $supported, embedding: $embedding)';
}


}

/// @nodoc
abstract mixin class _$AiModelChoiceCopyWith<$Res> implements $AiModelChoiceCopyWith<$Res> {
  factory _$AiModelChoiceCopyWith(_AiModelChoice value, $Res Function(_AiModelChoice) _then) = __$AiModelChoiceCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, int bytes, bool installed, bool supported, bool embedding
});




}
/// @nodoc
class __$AiModelChoiceCopyWithImpl<$Res>
    implements _$AiModelChoiceCopyWith<$Res> {
  __$AiModelChoiceCopyWithImpl(this._self, this._then);

  final _AiModelChoice _self;
  final $Res Function(_AiModelChoice) _then;

/// Create a copy of AiModelChoice
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? bytes = null,Object? installed = null,Object? supported = null,Object? embedding = null,}) {
  return _then(_AiModelChoice(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,bytes: null == bytes ? _self.bytes : bytes // ignore: cast_nullable_to_non_nullable
as int,installed: null == installed ? _self.installed : installed // ignore: cast_nullable_to_non_nullable
as bool,supported: null == supported ? _self.supported : supported // ignore: cast_nullable_to_non_nullable
as bool,embedding: null == embedding ? _self.embedding : embedding // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$AiDocument {

 String get uri; String get name; int get bytes;
/// Create a copy of AiDocument
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AiDocumentCopyWith<AiDocument> get copyWith => _$AiDocumentCopyWithImpl<AiDocument>(this as AiDocument, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as AiDocument;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AiDocument&&(identical(other.uri, _this.uri) || other.uri == _this.uri)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.bytes, _this.bytes) || other.bytes == _this.bytes));
}


@override
int get hashCode {
  final _this = this as AiDocument;
  return Object.hash(runtimeType,_this.uri,_this.name,_this.bytes);
}

@override
String toString() {
  final _this = this as AiDocument;
  return 'AiDocument(uri: ${_this.uri}, name: ${_this.name}, bytes: ${_this.bytes})';
}


}

/// @nodoc
abstract mixin class $AiDocumentCopyWith<$Res>  {
  factory $AiDocumentCopyWith(AiDocument value, $Res Function(AiDocument) _then) = _$AiDocumentCopyWithImpl;
@useResult
$Res call({
 String uri, String name, int bytes
});




}
/// @nodoc
class _$AiDocumentCopyWithImpl<$Res>
    implements $AiDocumentCopyWith<$Res> {
  _$AiDocumentCopyWithImpl(this._self, this._then);

  final AiDocument _self;
  final $Res Function(AiDocument) _then;

/// Create a copy of AiDocument
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? uri = null,Object? name = null,Object? bytes = null,}) {
  return _then(AiDocument(
uri: null == uri ? _self.uri : uri // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,bytes: null == bytes ? _self.bytes : bytes // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [AiDocument].
extension AiDocumentPatterns on AiDocument {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AiDocument value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AiDocument() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AiDocument value)  $default,){
final _that = this;
switch (_that) {
case _AiDocument():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AiDocument value)?  $default,){
final _that = this;
switch (_that) {
case _AiDocument() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String uri,  String name,  int bytes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AiDocument() when $default != null:
return $default(_that.uri,_that.name,_that.bytes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String uri,  String name,  int bytes)  $default,) {final _that = this;
switch (_that) {
case _AiDocument():
return $default(_that.uri,_that.name,_that.bytes);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String uri,  String name,  int bytes)?  $default,) {final _that = this;
switch (_that) {
case _AiDocument() when $default != null:
return $default(_that.uri,_that.name,_that.bytes);case _:
  return null;

}
}

}

/// @nodoc


class _AiDocument implements AiDocument {
  const _AiDocument({required this.uri, required this.name, required this.bytes});
  

@override final  String uri;
@override final  String name;
@override final  int bytes;

/// Create a copy of AiDocument
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AiDocumentCopyWith<_AiDocument> get copyWith => __$AiDocumentCopyWithImpl<_AiDocument>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AiDocument&&(identical(other.uri, uri) || other.uri == uri)&&(identical(other.name, name) || other.name == name)&&(identical(other.bytes, bytes) || other.bytes == bytes));
}


@override
int get hashCode {
    return Object.hash(runtimeType,uri,name,bytes);
}

@override
String toString() {
    return 'AiDocument(uri: $uri, name: $name, bytes: $bytes)';
}


}

/// @nodoc
abstract mixin class _$AiDocumentCopyWith<$Res> implements $AiDocumentCopyWith<$Res> {
  factory _$AiDocumentCopyWith(_AiDocument value, $Res Function(_AiDocument) _then) = __$AiDocumentCopyWithImpl;
@override @useResult
$Res call({
 String uri, String name, int bytes
});




}
/// @nodoc
class __$AiDocumentCopyWithImpl<$Res>
    implements _$AiDocumentCopyWith<$Res> {
  __$AiDocumentCopyWithImpl(this._self, this._then);

  final _AiDocument _self;
  final $Res Function(_AiDocument) _then;

/// Create a copy of AiDocument
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? uri = null,Object? name = null,Object? bytes = null,}) {
  return _then(_AiDocument(
uri: null == uri ? _self.uri : uri // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,bytes: null == bytes ? _self.bytes : bytes // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$AiMessage {

 String get text; bool get user; String get context; String get thinking;
/// Create a copy of AiMessage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AiMessageCopyWith<AiMessage> get copyWith => _$AiMessageCopyWithImpl<AiMessage>(this as AiMessage, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as AiMessage;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AiMessage&&(identical(other.text, _this.text) || other.text == _this.text)&&(identical(other.user, _this.user) || other.user == _this.user)&&(identical(other.context, _this.context) || other.context == _this.context)&&(identical(other.thinking, _this.thinking) || other.thinking == _this.thinking));
}


@override
int get hashCode {
  final _this = this as AiMessage;
  return Object.hash(runtimeType,_this.text,_this.user,_this.context,_this.thinking);
}

@override
String toString() {
  final _this = this as AiMessage;
  return 'AiMessage(text: ${_this.text}, user: ${_this.user}, context: ${_this.context}, thinking: ${_this.thinking})';
}


}

/// @nodoc
abstract mixin class $AiMessageCopyWith<$Res>  {
  factory $AiMessageCopyWith(AiMessage value, $Res Function(AiMessage) _then) = _$AiMessageCopyWithImpl;
@useResult
$Res call({
 String text, bool user, String context, String thinking
});




}
/// @nodoc
class _$AiMessageCopyWithImpl<$Res>
    implements $AiMessageCopyWith<$Res> {
  _$AiMessageCopyWithImpl(this._self, this._then);

  final AiMessage _self;
  final $Res Function(AiMessage) _then;

/// Create a copy of AiMessage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? text = null,Object? user = null,Object? context = null,Object? thinking = null,}) {
  return _then(AiMessage(
text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as bool,context: null == context ? _self.context : context // ignore: cast_nullable_to_non_nullable
as String,thinking: null == thinking ? _self.thinking : thinking // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AiMessage].
extension AiMessagePatterns on AiMessage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AiMessage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AiMessage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AiMessage value)  $default,){
final _that = this;
switch (_that) {
case _AiMessage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AiMessage value)?  $default,){
final _that = this;
switch (_that) {
case _AiMessage() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String text,  bool user,  String context,  String thinking)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AiMessage() when $default != null:
return $default(_that.text,_that.user,_that.context,_that.thinking);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String text,  bool user,  String context,  String thinking)  $default,) {final _that = this;
switch (_that) {
case _AiMessage():
return $default(_that.text,_that.user,_that.context,_that.thinking);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String text,  bool user,  String context,  String thinking)?  $default,) {final _that = this;
switch (_that) {
case _AiMessage() when $default != null:
return $default(_that.text,_that.user,_that.context,_that.thinking);case _:
  return null;

}
}

}

/// @nodoc


class _AiMessage implements AiMessage {
  const _AiMessage({required this.text, this.user = true, this.context = '', this.thinking = ''});
  

@override final  String text;
@override@JsonKey() final  bool user;
@override@JsonKey() final  String context;
@override@JsonKey() final  String thinking;

/// Create a copy of AiMessage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AiMessageCopyWith<_AiMessage> get copyWith => __$AiMessageCopyWithImpl<_AiMessage>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AiMessage&&(identical(other.text, text) || other.text == text)&&(identical(other.user, user) || other.user == user)&&(identical(other.context, context) || other.context == context)&&(identical(other.thinking, thinking) || other.thinking == thinking));
}


@override
int get hashCode {
    return Object.hash(runtimeType,text,user,context,thinking);
}

@override
String toString() {
    return 'AiMessage(text: $text, user: $user, context: $context, thinking: $thinking)';
}


}

/// @nodoc
abstract mixin class _$AiMessageCopyWith<$Res> implements $AiMessageCopyWith<$Res> {
  factory _$AiMessageCopyWith(_AiMessage value, $Res Function(_AiMessage) _then) = __$AiMessageCopyWithImpl;
@override @useResult
$Res call({
 String text, bool user, String context, String thinking
});




}
/// @nodoc
class __$AiMessageCopyWithImpl<$Res>
    implements _$AiMessageCopyWith<$Res> {
  __$AiMessageCopyWithImpl(this._self, this._then);

  final _AiMessage _self;
  final $Res Function(_AiMessage) _then;

/// Create a copy of AiMessage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? text = null,Object? user = null,Object? context = null,Object? thinking = null,}) {
  return _then(_AiMessage(
text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as bool,context: null == context ? _self.context : context // ignore: cast_nullable_to_non_nullable
as String,thinking: null == thinking ? _self.thinking : thinking // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$AiReplyDelta {

 String get text; String get thinking; AiToolProposal? get proposal;
/// Create a copy of AiReplyDelta
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AiReplyDeltaCopyWith<AiReplyDelta> get copyWith => _$AiReplyDeltaCopyWithImpl<AiReplyDelta>(this as AiReplyDelta, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as AiReplyDelta;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AiReplyDelta&&(identical(other.text, _this.text) || other.text == _this.text)&&(identical(other.thinking, _this.thinking) || other.thinking == _this.thinking)&&(identical(other.proposal, _this.proposal) || other.proposal == _this.proposal));
}


@override
int get hashCode {
  final _this = this as AiReplyDelta;
  return Object.hash(runtimeType,_this.text,_this.thinking,_this.proposal);
}

@override
String toString() {
  final _this = this as AiReplyDelta;
  return 'AiReplyDelta(text: ${_this.text}, thinking: ${_this.thinking}, proposal: ${_this.proposal})';
}


}

/// @nodoc
abstract mixin class $AiReplyDeltaCopyWith<$Res>  {
  factory $AiReplyDeltaCopyWith(AiReplyDelta value, $Res Function(AiReplyDelta) _then) = _$AiReplyDeltaCopyWithImpl;
@useResult
$Res call({
 String text, String thinking, AiToolProposal? proposal
});


$AiToolProposalCopyWith<$Res>? get proposal;

}
/// @nodoc
class _$AiReplyDeltaCopyWithImpl<$Res>
    implements $AiReplyDeltaCopyWith<$Res> {
  _$AiReplyDeltaCopyWithImpl(this._self, this._then);

  final AiReplyDelta _self;
  final $Res Function(AiReplyDelta) _then;

/// Create a copy of AiReplyDelta
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? text = null,Object? thinking = null,Object? proposal = freezed,}) {
  return _then(AiReplyDelta(
text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,thinking: null == thinking ? _self.thinking : thinking // ignore: cast_nullable_to_non_nullable
as String,proposal: freezed == proposal ? _self.proposal : proposal // ignore: cast_nullable_to_non_nullable
as AiToolProposal?,
  ));
}
/// Create a copy of AiReplyDelta
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AiToolProposalCopyWith<$Res>? get proposal {
    if (_self.proposal == null) {
    return null;
  }

  return $AiToolProposalCopyWith<$Res>(_self.proposal!, (value) {
    return _then(_self.copyWith(proposal: value));
  });
}
}


/// Adds pattern-matching-related methods to [AiReplyDelta].
extension AiReplyDeltaPatterns on AiReplyDelta {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AiReplyDelta value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AiReplyDelta() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AiReplyDelta value)  $default,){
final _that = this;
switch (_that) {
case _AiReplyDelta():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AiReplyDelta value)?  $default,){
final _that = this;
switch (_that) {
case _AiReplyDelta() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String text,  String thinking,  AiToolProposal? proposal)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AiReplyDelta() when $default != null:
return $default(_that.text,_that.thinking,_that.proposal);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String text,  String thinking,  AiToolProposal? proposal)  $default,) {final _that = this;
switch (_that) {
case _AiReplyDelta():
return $default(_that.text,_that.thinking,_that.proposal);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String text,  String thinking,  AiToolProposal? proposal)?  $default,) {final _that = this;
switch (_that) {
case _AiReplyDelta() when $default != null:
return $default(_that.text,_that.thinking,_that.proposal);case _:
  return null;

}
}

}

/// @nodoc


class _AiReplyDelta implements AiReplyDelta {
  const _AiReplyDelta({this.text = '', this.thinking = '', this.proposal});
  

@override@JsonKey() final  String text;
@override@JsonKey() final  String thinking;
@override final  AiToolProposal? proposal;

/// Create a copy of AiReplyDelta
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AiReplyDeltaCopyWith<_AiReplyDelta> get copyWith => __$AiReplyDeltaCopyWithImpl<_AiReplyDelta>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AiReplyDelta&&(identical(other.text, text) || other.text == text)&&(identical(other.thinking, thinking) || other.thinking == thinking)&&(identical(other.proposal, proposal) || other.proposal == proposal));
}


@override
int get hashCode {
    return Object.hash(runtimeType,text,thinking,proposal);
}

@override
String toString() {
    return 'AiReplyDelta(text: $text, thinking: $thinking, proposal: $proposal)';
}


}

/// @nodoc
abstract mixin class _$AiReplyDeltaCopyWith<$Res> implements $AiReplyDeltaCopyWith<$Res> {
  factory _$AiReplyDeltaCopyWith(_AiReplyDelta value, $Res Function(_AiReplyDelta) _then) = __$AiReplyDeltaCopyWithImpl;
@override @useResult
$Res call({
 String text, String thinking, AiToolProposal? proposal
});


@override $AiToolProposalCopyWith<$Res>? get proposal;

}
/// @nodoc
class __$AiReplyDeltaCopyWithImpl<$Res>
    implements _$AiReplyDeltaCopyWith<$Res> {
  __$AiReplyDeltaCopyWithImpl(this._self, this._then);

  final _AiReplyDelta _self;
  final $Res Function(_AiReplyDelta) _then;

/// Create a copy of AiReplyDelta
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? text = null,Object? thinking = null,Object? proposal = freezed,}) {
  return _then(_AiReplyDelta(
text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,thinking: null == thinking ? _self.thinking : thinking // ignore: cast_nullable_to_non_nullable
as String,proposal: freezed == proposal ? _self.proposal : proposal // ignore: cast_nullable_to_non_nullable
as AiToolProposal?,
  ));
}

/// Create a copy of AiReplyDelta
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AiToolProposalCopyWith<$Res>? get proposal {
    if (_self.proposal == null) {
    return null;
  }

  return $AiToolProposalCopyWith<$Res>(_self.proposal!, (value) {
    return _then(_self.copyWith(proposal: value));
  });
}
}

/// @nodoc
mixin _$AiSearchHit {

 AiDocument get document; double get score; String get description;
/// Create a copy of AiSearchHit
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AiSearchHitCopyWith<AiSearchHit> get copyWith => _$AiSearchHitCopyWithImpl<AiSearchHit>(this as AiSearchHit, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as AiSearchHit;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AiSearchHit&&(identical(other.document, _this.document) || other.document == _this.document)&&(identical(other.score, _this.score) || other.score == _this.score)&&(identical(other.description, _this.description) || other.description == _this.description));
}


@override
int get hashCode {
  final _this = this as AiSearchHit;
  return Object.hash(runtimeType,_this.document,_this.score,_this.description);
}

@override
String toString() {
  final _this = this as AiSearchHit;
  return 'AiSearchHit(document: ${_this.document}, score: ${_this.score}, description: ${_this.description})';
}


}

/// @nodoc
abstract mixin class $AiSearchHitCopyWith<$Res>  {
  factory $AiSearchHitCopyWith(AiSearchHit value, $Res Function(AiSearchHit) _then) = _$AiSearchHitCopyWithImpl;
@useResult
$Res call({
 AiDocument document, double score, String description
});


$AiDocumentCopyWith<$Res> get document;

}
/// @nodoc
class _$AiSearchHitCopyWithImpl<$Res>
    implements $AiSearchHitCopyWith<$Res> {
  _$AiSearchHitCopyWithImpl(this._self, this._then);

  final AiSearchHit _self;
  final $Res Function(AiSearchHit) _then;

/// Create a copy of AiSearchHit
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? document = null,Object? score = null,Object? description = null,}) {
  return _then(AiSearchHit(
document: null == document ? _self.document : document // ignore: cast_nullable_to_non_nullable
as AiDocument,score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as double,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of AiSearchHit
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AiDocumentCopyWith<$Res> get document {
  
  return $AiDocumentCopyWith<$Res>(_self.document, (value) {
    return _then(_self.copyWith(document: value));
  });
}
}


/// Adds pattern-matching-related methods to [AiSearchHit].
extension AiSearchHitPatterns on AiSearchHit {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AiSearchHit value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AiSearchHit() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AiSearchHit value)  $default,){
final _that = this;
switch (_that) {
case _AiSearchHit():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AiSearchHit value)?  $default,){
final _that = this;
switch (_that) {
case _AiSearchHit() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AiDocument document,  double score,  String description)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AiSearchHit() when $default != null:
return $default(_that.document,_that.score,_that.description);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AiDocument document,  double score,  String description)  $default,) {final _that = this;
switch (_that) {
case _AiSearchHit():
return $default(_that.document,_that.score,_that.description);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AiDocument document,  double score,  String description)?  $default,) {final _that = this;
switch (_that) {
case _AiSearchHit() when $default != null:
return $default(_that.document,_that.score,_that.description);case _:
  return null;

}
}

}

/// @nodoc


class _AiSearchHit implements AiSearchHit {
  const _AiSearchHit({required this.document, required this.score, required this.description});
  

@override final  AiDocument document;
@override final  double score;
@override final  String description;

/// Create a copy of AiSearchHit
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AiSearchHitCopyWith<_AiSearchHit> get copyWith => __$AiSearchHitCopyWithImpl<_AiSearchHit>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AiSearchHit&&(identical(other.document, document) || other.document == document)&&(identical(other.score, score) || other.score == score)&&(identical(other.description, description) || other.description == description));
}


@override
int get hashCode {
    return Object.hash(runtimeType,document,score,description);
}

@override
String toString() {
    return 'AiSearchHit(document: $document, score: $score, description: $description)';
}


}

/// @nodoc
abstract mixin class _$AiSearchHitCopyWith<$Res> implements $AiSearchHitCopyWith<$Res> {
  factory _$AiSearchHitCopyWith(_AiSearchHit value, $Res Function(_AiSearchHit) _then) = __$AiSearchHitCopyWithImpl;
@override @useResult
$Res call({
 AiDocument document, double score, String description
});


@override $AiDocumentCopyWith<$Res> get document;

}
/// @nodoc
class __$AiSearchHitCopyWithImpl<$Res>
    implements _$AiSearchHitCopyWith<$Res> {
  __$AiSearchHitCopyWithImpl(this._self, this._then);

  final _AiSearchHit _self;
  final $Res Function(_AiSearchHit) _then;

/// Create a copy of AiSearchHit
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? document = null,Object? score = null,Object? description = null,}) {
  return _then(_AiSearchHit(
document: null == document ? _self.document : document // ignore: cast_nullable_to_non_nullable
as AiDocument,score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as double,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of AiSearchHit
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AiDocumentCopyWith<$Res> get document {
  
  return $AiDocumentCopyWith<$Res>(_self.document, (value) {
    return _then(_self.copyWith(document: value));
  });
}
}

/// @nodoc
mixin _$AiToolProposal {

 AiDocument get document; AiToolOperation get operation; int get startMs; int get endMs;
/// Create a copy of AiToolProposal
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AiToolProposalCopyWith<AiToolProposal> get copyWith => _$AiToolProposalCopyWithImpl<AiToolProposal>(this as AiToolProposal, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as AiToolProposal;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AiToolProposal&&(identical(other.document, _this.document) || other.document == _this.document)&&(identical(other.operation, _this.operation) || other.operation == _this.operation)&&(identical(other.startMs, _this.startMs) || other.startMs == _this.startMs)&&(identical(other.endMs, _this.endMs) || other.endMs == _this.endMs));
}


@override
int get hashCode {
  final _this = this as AiToolProposal;
  return Object.hash(runtimeType,_this.document,_this.operation,_this.startMs,_this.endMs);
}

@override
String toString() {
  final _this = this as AiToolProposal;
  return 'AiToolProposal(document: ${_this.document}, operation: ${_this.operation}, startMs: ${_this.startMs}, endMs: ${_this.endMs})';
}


}

/// @nodoc
abstract mixin class $AiToolProposalCopyWith<$Res>  {
  factory $AiToolProposalCopyWith(AiToolProposal value, $Res Function(AiToolProposal) _then) = _$AiToolProposalCopyWithImpl;
@useResult
$Res call({
 AiDocument document, AiToolOperation operation, int startMs, int endMs
});


$AiDocumentCopyWith<$Res> get document;

}
/// @nodoc
class _$AiToolProposalCopyWithImpl<$Res>
    implements $AiToolProposalCopyWith<$Res> {
  _$AiToolProposalCopyWithImpl(this._self, this._then);

  final AiToolProposal _self;
  final $Res Function(AiToolProposal) _then;

/// Create a copy of AiToolProposal
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? document = null,Object? operation = null,Object? startMs = null,Object? endMs = null,}) {
  return _then(AiToolProposal(
document: null == document ? _self.document : document // ignore: cast_nullable_to_non_nullable
as AiDocument,operation: null == operation ? _self.operation : operation // ignore: cast_nullable_to_non_nullable
as AiToolOperation,startMs: null == startMs ? _self.startMs : startMs // ignore: cast_nullable_to_non_nullable
as int,endMs: null == endMs ? _self.endMs : endMs // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of AiToolProposal
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AiDocumentCopyWith<$Res> get document {
  
  return $AiDocumentCopyWith<$Res>(_self.document, (value) {
    return _then(_self.copyWith(document: value));
  });
}
}


/// Adds pattern-matching-related methods to [AiToolProposal].
extension AiToolProposalPatterns on AiToolProposal {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AiToolProposal value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AiToolProposal() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AiToolProposal value)  $default,){
final _that = this;
switch (_that) {
case _AiToolProposal():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AiToolProposal value)?  $default,){
final _that = this;
switch (_that) {
case _AiToolProposal() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AiDocument document,  AiToolOperation operation,  int startMs,  int endMs)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AiToolProposal() when $default != null:
return $default(_that.document,_that.operation,_that.startMs,_that.endMs);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AiDocument document,  AiToolOperation operation,  int startMs,  int endMs)  $default,) {final _that = this;
switch (_that) {
case _AiToolProposal():
return $default(_that.document,_that.operation,_that.startMs,_that.endMs);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AiDocument document,  AiToolOperation operation,  int startMs,  int endMs)?  $default,) {final _that = this;
switch (_that) {
case _AiToolProposal() when $default != null:
return $default(_that.document,_that.operation,_that.startMs,_that.endMs);case _:
  return null;

}
}

}

/// @nodoc


class _AiToolProposal implements AiToolProposal {
  const _AiToolProposal({required this.document, required this.operation, this.startMs = 0, this.endMs = 0});
  

@override final  AiDocument document;
@override final  AiToolOperation operation;
@override@JsonKey() final  int startMs;
@override@JsonKey() final  int endMs;

/// Create a copy of AiToolProposal
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AiToolProposalCopyWith<_AiToolProposal> get copyWith => __$AiToolProposalCopyWithImpl<_AiToolProposal>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AiToolProposal&&(identical(other.document, document) || other.document == document)&&(identical(other.operation, operation) || other.operation == operation)&&(identical(other.startMs, startMs) || other.startMs == startMs)&&(identical(other.endMs, endMs) || other.endMs == endMs));
}


@override
int get hashCode {
    return Object.hash(runtimeType,document,operation,startMs,endMs);
}

@override
String toString() {
    return 'AiToolProposal(document: $document, operation: $operation, startMs: $startMs, endMs: $endMs)';
}


}

/// @nodoc
abstract mixin class _$AiToolProposalCopyWith<$Res> implements $AiToolProposalCopyWith<$Res> {
  factory _$AiToolProposalCopyWith(_AiToolProposal value, $Res Function(_AiToolProposal) _then) = __$AiToolProposalCopyWithImpl;
@override @useResult
$Res call({
 AiDocument document, AiToolOperation operation, int startMs, int endMs
});


@override $AiDocumentCopyWith<$Res> get document;

}
/// @nodoc
class __$AiToolProposalCopyWithImpl<$Res>
    implements _$AiToolProposalCopyWith<$Res> {
  __$AiToolProposalCopyWithImpl(this._self, this._then);

  final _AiToolProposal _self;
  final $Res Function(_AiToolProposal) _then;

/// Create a copy of AiToolProposal
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? document = null,Object? operation = null,Object? startMs = null,Object? endMs = null,}) {
  return _then(_AiToolProposal(
document: null == document ? _self.document : document // ignore: cast_nullable_to_non_nullable
as AiDocument,operation: null == operation ? _self.operation : operation // ignore: cast_nullable_to_non_nullable
as AiToolOperation,startMs: null == startMs ? _self.startMs : startMs // ignore: cast_nullable_to_non_nullable
as int,endMs: null == endMs ? _self.endMs : endMs // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of AiToolProposal
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AiDocumentCopyWith<$Res> get document {
  
  return $AiDocumentCopyWith<$Res>(_self.document, (value) {
    return _then(_self.copyWith(document: value));
  });
}
}

// dart format on
