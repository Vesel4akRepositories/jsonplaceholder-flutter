// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'post_info_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PostInfoEvent {
  int get postId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int postId) fetchComments,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int postId)? fetchComments,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int postId)? fetchComments,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PostInfoFetchCommentsEvent value) fetchComments,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PostInfoFetchCommentsEvent value)? fetchComments,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PostInfoFetchCommentsEvent value)? fetchComments,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostInfoEventCopyWith<PostInfoEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostInfoEventCopyWith<$Res> {
  factory $PostInfoEventCopyWith(
          PostInfoEvent value, $Res Function(PostInfoEvent) then) =
      _$PostInfoEventCopyWithImpl<$Res>;
  $Res call({int postId});
}

/// @nodoc
class _$PostInfoEventCopyWithImpl<$Res>
    implements $PostInfoEventCopyWith<$Res> {
  _$PostInfoEventCopyWithImpl(this._value, this._then);

  final PostInfoEvent _value;
  // ignore: unused_field
  final $Res Function(PostInfoEvent) _then;

  @override
  $Res call({
    Object? postId = freezed,
  }) {
    return _then(_value.copyWith(
      postId: postId == freezed
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_PostInfoFetchCommentsEventCopyWith<$Res>
    implements $PostInfoEventCopyWith<$Res> {
  factory _$$_PostInfoFetchCommentsEventCopyWith(
          _$_PostInfoFetchCommentsEvent value,
          $Res Function(_$_PostInfoFetchCommentsEvent) then) =
      __$$_PostInfoFetchCommentsEventCopyWithImpl<$Res>;
  @override
  $Res call({int postId});
}

/// @nodoc
class __$$_PostInfoFetchCommentsEventCopyWithImpl<$Res>
    extends _$PostInfoEventCopyWithImpl<$Res>
    implements _$$_PostInfoFetchCommentsEventCopyWith<$Res> {
  __$$_PostInfoFetchCommentsEventCopyWithImpl(
      _$_PostInfoFetchCommentsEvent _value,
      $Res Function(_$_PostInfoFetchCommentsEvent) _then)
      : super(_value, (v) => _then(v as _$_PostInfoFetchCommentsEvent));

  @override
  _$_PostInfoFetchCommentsEvent get _value =>
      super._value as _$_PostInfoFetchCommentsEvent;

  @override
  $Res call({
    Object? postId = freezed,
  }) {
    return _then(_$_PostInfoFetchCommentsEvent(
      postId: postId == freezed
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_PostInfoFetchCommentsEvent implements _PostInfoFetchCommentsEvent {
  const _$_PostInfoFetchCommentsEvent({required this.postId});

  @override
  final int postId;

  @override
  String toString() {
    return 'PostInfoEvent.fetchComments(postId: $postId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostInfoFetchCommentsEvent &&
            const DeepCollectionEquality().equals(other.postId, postId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(postId));

  @JsonKey(ignore: true)
  @override
  _$$_PostInfoFetchCommentsEventCopyWith<_$_PostInfoFetchCommentsEvent>
      get copyWith => __$$_PostInfoFetchCommentsEventCopyWithImpl<
          _$_PostInfoFetchCommentsEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int postId) fetchComments,
  }) {
    return fetchComments(postId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int postId)? fetchComments,
  }) {
    return fetchComments?.call(postId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int postId)? fetchComments,
    required TResult orElse(),
  }) {
    if (fetchComments != null) {
      return fetchComments(postId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PostInfoFetchCommentsEvent value) fetchComments,
  }) {
    return fetchComments(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PostInfoFetchCommentsEvent value)? fetchComments,
  }) {
    return fetchComments?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PostInfoFetchCommentsEvent value)? fetchComments,
    required TResult orElse(),
  }) {
    if (fetchComments != null) {
      return fetchComments(this);
    }
    return orElse();
  }
}

abstract class _PostInfoFetchCommentsEvent implements PostInfoEvent {
  const factory _PostInfoFetchCommentsEvent({required final int postId}) =
      _$_PostInfoFetchCommentsEvent;

  @override
  int get postId;
  @override
  @JsonKey(ignore: true)
  _$$_PostInfoFetchCommentsEventCopyWith<_$_PostInfoFetchCommentsEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PostInfoState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String? message) error,
    required TResult Function(List<Comment> comments) loaded,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String? message)? error,
    TResult Function(List<Comment> comments)? loaded,
    TResult Function()? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String? message)? error,
    TResult Function(List<Comment> comments)? loaded,
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PostInfoInitialState value) initial,
    required TResult Function(PostInfoErrorState value) error,
    required TResult Function(PostInfoLoadedState value) loaded,
    required TResult Function(PostInfoLoadingState value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PostInfoInitialState value)? initial,
    TResult Function(PostInfoErrorState value)? error,
    TResult Function(PostInfoLoadedState value)? loaded,
    TResult Function(PostInfoLoadingState value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostInfoInitialState value)? initial,
    TResult Function(PostInfoErrorState value)? error,
    TResult Function(PostInfoLoadedState value)? loaded,
    TResult Function(PostInfoLoadingState value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostInfoStateCopyWith<$Res> {
  factory $PostInfoStateCopyWith(
          PostInfoState value, $Res Function(PostInfoState) then) =
      _$PostInfoStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PostInfoStateCopyWithImpl<$Res>
    implements $PostInfoStateCopyWith<$Res> {
  _$PostInfoStateCopyWithImpl(this._value, this._then);

  final PostInfoState _value;
  // ignore: unused_field
  final $Res Function(PostInfoState) _then;
}

/// @nodoc
abstract class _$$PostInfoInitialStateCopyWith<$Res> {
  factory _$$PostInfoInitialStateCopyWith(_$PostInfoInitialState value,
          $Res Function(_$PostInfoInitialState) then) =
      __$$PostInfoInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PostInfoInitialStateCopyWithImpl<$Res>
    extends _$PostInfoStateCopyWithImpl<$Res>
    implements _$$PostInfoInitialStateCopyWith<$Res> {
  __$$PostInfoInitialStateCopyWithImpl(_$PostInfoInitialState _value,
      $Res Function(_$PostInfoInitialState) _then)
      : super(_value, (v) => _then(v as _$PostInfoInitialState));

  @override
  _$PostInfoInitialState get _value => super._value as _$PostInfoInitialState;
}

/// @nodoc

class _$PostInfoInitialState implements PostInfoInitialState {
  const _$PostInfoInitialState();

  @override
  String toString() {
    return 'PostInfoState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PostInfoInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String? message) error,
    required TResult Function(List<Comment> comments) loaded,
    required TResult Function() loading,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String? message)? error,
    TResult Function(List<Comment> comments)? loaded,
    TResult Function()? loading,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String? message)? error,
    TResult Function(List<Comment> comments)? loaded,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PostInfoInitialState value) initial,
    required TResult Function(PostInfoErrorState value) error,
    required TResult Function(PostInfoLoadedState value) loaded,
    required TResult Function(PostInfoLoadingState value) loading,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PostInfoInitialState value)? initial,
    TResult Function(PostInfoErrorState value)? error,
    TResult Function(PostInfoLoadedState value)? loaded,
    TResult Function(PostInfoLoadingState value)? loading,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostInfoInitialState value)? initial,
    TResult Function(PostInfoErrorState value)? error,
    TResult Function(PostInfoLoadedState value)? loaded,
    TResult Function(PostInfoLoadingState value)? loading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class PostInfoInitialState implements PostInfoState {
  const factory PostInfoInitialState() = _$PostInfoInitialState;
}

/// @nodoc
abstract class _$$PostInfoErrorStateCopyWith<$Res> {
  factory _$$PostInfoErrorStateCopyWith(_$PostInfoErrorState value,
          $Res Function(_$PostInfoErrorState) then) =
      __$$PostInfoErrorStateCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class __$$PostInfoErrorStateCopyWithImpl<$Res>
    extends _$PostInfoStateCopyWithImpl<$Res>
    implements _$$PostInfoErrorStateCopyWith<$Res> {
  __$$PostInfoErrorStateCopyWithImpl(
      _$PostInfoErrorState _value, $Res Function(_$PostInfoErrorState) _then)
      : super(_value, (v) => _then(v as _$PostInfoErrorState));

  @override
  _$PostInfoErrorState get _value => super._value as _$PostInfoErrorState;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$PostInfoErrorState(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$PostInfoErrorState implements PostInfoErrorState {
  const _$PostInfoErrorState({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'PostInfoState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostInfoErrorState &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$PostInfoErrorStateCopyWith<_$PostInfoErrorState> get copyWith =>
      __$$PostInfoErrorStateCopyWithImpl<_$PostInfoErrorState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String? message) error,
    required TResult Function(List<Comment> comments) loaded,
    required TResult Function() loading,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String? message)? error,
    TResult Function(List<Comment> comments)? loaded,
    TResult Function()? loading,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String? message)? error,
    TResult Function(List<Comment> comments)? loaded,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PostInfoInitialState value) initial,
    required TResult Function(PostInfoErrorState value) error,
    required TResult Function(PostInfoLoadedState value) loaded,
    required TResult Function(PostInfoLoadingState value) loading,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PostInfoInitialState value)? initial,
    TResult Function(PostInfoErrorState value)? error,
    TResult Function(PostInfoLoadedState value)? loaded,
    TResult Function(PostInfoLoadingState value)? loading,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostInfoInitialState value)? initial,
    TResult Function(PostInfoErrorState value)? error,
    TResult Function(PostInfoLoadedState value)? loaded,
    TResult Function(PostInfoLoadingState value)? loading,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class PostInfoErrorState implements PostInfoState {
  const factory PostInfoErrorState({final String? message}) =
      _$PostInfoErrorState;

  String? get message;
  @JsonKey(ignore: true)
  _$$PostInfoErrorStateCopyWith<_$PostInfoErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PostInfoLoadedStateCopyWith<$Res> {
  factory _$$PostInfoLoadedStateCopyWith(_$PostInfoLoadedState value,
          $Res Function(_$PostInfoLoadedState) then) =
      __$$PostInfoLoadedStateCopyWithImpl<$Res>;
  $Res call({List<Comment> comments});
}

/// @nodoc
class __$$PostInfoLoadedStateCopyWithImpl<$Res>
    extends _$PostInfoStateCopyWithImpl<$Res>
    implements _$$PostInfoLoadedStateCopyWith<$Res> {
  __$$PostInfoLoadedStateCopyWithImpl(
      _$PostInfoLoadedState _value, $Res Function(_$PostInfoLoadedState) _then)
      : super(_value, (v) => _then(v as _$PostInfoLoadedState));

  @override
  _$PostInfoLoadedState get _value => super._value as _$PostInfoLoadedState;

  @override
  $Res call({
    Object? comments = freezed,
  }) {
    return _then(_$PostInfoLoadedState(
      comments: comments == freezed
          ? _value._comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<Comment>,
    ));
  }
}

/// @nodoc

class _$PostInfoLoadedState implements PostInfoLoadedState {
  const _$PostInfoLoadedState({required final List<Comment> comments})
      : _comments = comments;

  final List<Comment> _comments;
  @override
  List<Comment> get comments {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_comments);
  }

  @override
  String toString() {
    return 'PostInfoState.loaded(comments: $comments)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostInfoLoadedState &&
            const DeepCollectionEquality().equals(other._comments, _comments));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_comments));

  @JsonKey(ignore: true)
  @override
  _$$PostInfoLoadedStateCopyWith<_$PostInfoLoadedState> get copyWith =>
      __$$PostInfoLoadedStateCopyWithImpl<_$PostInfoLoadedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String? message) error,
    required TResult Function(List<Comment> comments) loaded,
    required TResult Function() loading,
  }) {
    return loaded(comments);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String? message)? error,
    TResult Function(List<Comment> comments)? loaded,
    TResult Function()? loading,
  }) {
    return loaded?.call(comments);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String? message)? error,
    TResult Function(List<Comment> comments)? loaded,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(comments);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PostInfoInitialState value) initial,
    required TResult Function(PostInfoErrorState value) error,
    required TResult Function(PostInfoLoadedState value) loaded,
    required TResult Function(PostInfoLoadingState value) loading,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PostInfoInitialState value)? initial,
    TResult Function(PostInfoErrorState value)? error,
    TResult Function(PostInfoLoadedState value)? loaded,
    TResult Function(PostInfoLoadingState value)? loading,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostInfoInitialState value)? initial,
    TResult Function(PostInfoErrorState value)? error,
    TResult Function(PostInfoLoadedState value)? loaded,
    TResult Function(PostInfoLoadingState value)? loading,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class PostInfoLoadedState implements PostInfoState {
  const factory PostInfoLoadedState({required final List<Comment> comments}) =
      _$PostInfoLoadedState;

  List<Comment> get comments;
  @JsonKey(ignore: true)
  _$$PostInfoLoadedStateCopyWith<_$PostInfoLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PostInfoLoadingStateCopyWith<$Res> {
  factory _$$PostInfoLoadingStateCopyWith(_$PostInfoLoadingState value,
          $Res Function(_$PostInfoLoadingState) then) =
      __$$PostInfoLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PostInfoLoadingStateCopyWithImpl<$Res>
    extends _$PostInfoStateCopyWithImpl<$Res>
    implements _$$PostInfoLoadingStateCopyWith<$Res> {
  __$$PostInfoLoadingStateCopyWithImpl(_$PostInfoLoadingState _value,
      $Res Function(_$PostInfoLoadingState) _then)
      : super(_value, (v) => _then(v as _$PostInfoLoadingState));

  @override
  _$PostInfoLoadingState get _value => super._value as _$PostInfoLoadingState;
}

/// @nodoc

class _$PostInfoLoadingState implements PostInfoLoadingState {
  const _$PostInfoLoadingState();

  @override
  String toString() {
    return 'PostInfoState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PostInfoLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String? message) error,
    required TResult Function(List<Comment> comments) loaded,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String? message)? error,
    TResult Function(List<Comment> comments)? loaded,
    TResult Function()? loading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String? message)? error,
    TResult Function(List<Comment> comments)? loaded,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PostInfoInitialState value) initial,
    required TResult Function(PostInfoErrorState value) error,
    required TResult Function(PostInfoLoadedState value) loaded,
    required TResult Function(PostInfoLoadingState value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PostInfoInitialState value)? initial,
    TResult Function(PostInfoErrorState value)? error,
    TResult Function(PostInfoLoadedState value)? loaded,
    TResult Function(PostInfoLoadingState value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostInfoInitialState value)? initial,
    TResult Function(PostInfoErrorState value)? error,
    TResult Function(PostInfoLoadedState value)? loaded,
    TResult Function(PostInfoLoadingState value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class PostInfoLoadingState implements PostInfoState {
  const factory PostInfoLoadingState() = _$PostInfoLoadingState;
}
