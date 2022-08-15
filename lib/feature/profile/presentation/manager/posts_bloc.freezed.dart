// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'posts_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PostsEvent {
  int get userId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int userId) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int userId)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int userId)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PostsFetchEvent value) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PostsFetchEvent value)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PostsFetchEvent value)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostsEventCopyWith<PostsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostsEventCopyWith<$Res> {
  factory $PostsEventCopyWith(
          PostsEvent value, $Res Function(PostsEvent) then) =
      _$PostsEventCopyWithImpl<$Res>;
  $Res call({int userId});
}

/// @nodoc
class _$PostsEventCopyWithImpl<$Res> implements $PostsEventCopyWith<$Res> {
  _$PostsEventCopyWithImpl(this._value, this._then);

  final PostsEvent _value;
  // ignore: unused_field
  final $Res Function(PostsEvent) _then;

  @override
  $Res call({
    Object? userId = freezed,
  }) {
    return _then(_value.copyWith(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_PostsFetchEventCopyWith<$Res>
    implements $PostsEventCopyWith<$Res> {
  factory _$$_PostsFetchEventCopyWith(
          _$_PostsFetchEvent value, $Res Function(_$_PostsFetchEvent) then) =
      __$$_PostsFetchEventCopyWithImpl<$Res>;
  @override
  $Res call({int userId});
}

/// @nodoc
class __$$_PostsFetchEventCopyWithImpl<$Res>
    extends _$PostsEventCopyWithImpl<$Res>
    implements _$$_PostsFetchEventCopyWith<$Res> {
  __$$_PostsFetchEventCopyWithImpl(
      _$_PostsFetchEvent _value, $Res Function(_$_PostsFetchEvent) _then)
      : super(_value, (v) => _then(v as _$_PostsFetchEvent));

  @override
  _$_PostsFetchEvent get _value => super._value as _$_PostsFetchEvent;

  @override
  $Res call({
    Object? userId = freezed,
  }) {
    return _then(_$_PostsFetchEvent(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_PostsFetchEvent implements _PostsFetchEvent {
  const _$_PostsFetchEvent({required this.userId});

  @override
  final int userId;

  @override
  String toString() {
    return 'PostsEvent.fetch(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostsFetchEvent &&
            const DeepCollectionEquality().equals(other.userId, userId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(userId));

  @JsonKey(ignore: true)
  @override
  _$$_PostsFetchEventCopyWith<_$_PostsFetchEvent> get copyWith =>
      __$$_PostsFetchEventCopyWithImpl<_$_PostsFetchEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int userId) fetch,
  }) {
    return fetch(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int userId)? fetch,
  }) {
    return fetch?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int userId)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PostsFetchEvent value) fetch,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PostsFetchEvent value)? fetch,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PostsFetchEvent value)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _PostsFetchEvent implements PostsEvent {
  const factory _PostsFetchEvent({required final int userId}) =
      _$_PostsFetchEvent;

  @override
  int get userId;
  @override
  @JsonKey(ignore: true)
  _$$_PostsFetchEventCopyWith<_$_PostsFetchEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PostsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Post> userPosts) loaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Post> userPosts)? loaded,
    TResult Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Post> userPosts)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PostsInitialState value) initial,
    required TResult Function(PostsLoadingState value) loading,
    required TResult Function(PostsLoadedState value) loaded,
    required TResult Function(PostsErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PostsInitialState value)? initial,
    TResult Function(PostsLoadingState value)? loading,
    TResult Function(PostsLoadedState value)? loaded,
    TResult Function(PostsErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostsInitialState value)? initial,
    TResult Function(PostsLoadingState value)? loading,
    TResult Function(PostsLoadedState value)? loaded,
    TResult Function(PostsErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostsStateCopyWith<$Res> {
  factory $PostsStateCopyWith(
          PostsState value, $Res Function(PostsState) then) =
      _$PostsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PostsStateCopyWithImpl<$Res> implements $PostsStateCopyWith<$Res> {
  _$PostsStateCopyWithImpl(this._value, this._then);

  final PostsState _value;
  // ignore: unused_field
  final $Res Function(PostsState) _then;
}

/// @nodoc
abstract class _$$PostsInitialStateCopyWith<$Res> {
  factory _$$PostsInitialStateCopyWith(
          _$PostsInitialState value, $Res Function(_$PostsInitialState) then) =
      __$$PostsInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PostsInitialStateCopyWithImpl<$Res>
    extends _$PostsStateCopyWithImpl<$Res>
    implements _$$PostsInitialStateCopyWith<$Res> {
  __$$PostsInitialStateCopyWithImpl(
      _$PostsInitialState _value, $Res Function(_$PostsInitialState) _then)
      : super(_value, (v) => _then(v as _$PostsInitialState));

  @override
  _$PostsInitialState get _value => super._value as _$PostsInitialState;
}

/// @nodoc

class _$PostsInitialState implements PostsInitialState {
  const _$PostsInitialState();

  @override
  String toString() {
    return 'PostsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PostsInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Post> userPosts) loaded,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Post> userPosts)? loaded,
    TResult Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Post> userPosts)? loaded,
    TResult Function()? error,
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
    required TResult Function(PostsInitialState value) initial,
    required TResult Function(PostsLoadingState value) loading,
    required TResult Function(PostsLoadedState value) loaded,
    required TResult Function(PostsErrorState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PostsInitialState value)? initial,
    TResult Function(PostsLoadingState value)? loading,
    TResult Function(PostsLoadedState value)? loaded,
    TResult Function(PostsErrorState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostsInitialState value)? initial,
    TResult Function(PostsLoadingState value)? loading,
    TResult Function(PostsLoadedState value)? loaded,
    TResult Function(PostsErrorState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class PostsInitialState implements PostsState {
  const factory PostsInitialState() = _$PostsInitialState;
}

/// @nodoc
abstract class _$$PostsLoadingStateCopyWith<$Res> {
  factory _$$PostsLoadingStateCopyWith(
          _$PostsLoadingState value, $Res Function(_$PostsLoadingState) then) =
      __$$PostsLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PostsLoadingStateCopyWithImpl<$Res>
    extends _$PostsStateCopyWithImpl<$Res>
    implements _$$PostsLoadingStateCopyWith<$Res> {
  __$$PostsLoadingStateCopyWithImpl(
      _$PostsLoadingState _value, $Res Function(_$PostsLoadingState) _then)
      : super(_value, (v) => _then(v as _$PostsLoadingState));

  @override
  _$PostsLoadingState get _value => super._value as _$PostsLoadingState;
}

/// @nodoc

class _$PostsLoadingState implements PostsLoadingState {
  const _$PostsLoadingState();

  @override
  String toString() {
    return 'PostsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PostsLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Post> userPosts) loaded,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Post> userPosts)? loaded,
    TResult Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Post> userPosts)? loaded,
    TResult Function()? error,
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
    required TResult Function(PostsInitialState value) initial,
    required TResult Function(PostsLoadingState value) loading,
    required TResult Function(PostsLoadedState value) loaded,
    required TResult Function(PostsErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PostsInitialState value)? initial,
    TResult Function(PostsLoadingState value)? loading,
    TResult Function(PostsLoadedState value)? loaded,
    TResult Function(PostsErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostsInitialState value)? initial,
    TResult Function(PostsLoadingState value)? loading,
    TResult Function(PostsLoadedState value)? loaded,
    TResult Function(PostsErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class PostsLoadingState implements PostsState {
  const factory PostsLoadingState() = _$PostsLoadingState;
}

/// @nodoc
abstract class _$$PostsLoadedStateCopyWith<$Res> {
  factory _$$PostsLoadedStateCopyWith(
          _$PostsLoadedState value, $Res Function(_$PostsLoadedState) then) =
      __$$PostsLoadedStateCopyWithImpl<$Res>;
  $Res call({List<Post> userPosts});
}

/// @nodoc
class __$$PostsLoadedStateCopyWithImpl<$Res>
    extends _$PostsStateCopyWithImpl<$Res>
    implements _$$PostsLoadedStateCopyWith<$Res> {
  __$$PostsLoadedStateCopyWithImpl(
      _$PostsLoadedState _value, $Res Function(_$PostsLoadedState) _then)
      : super(_value, (v) => _then(v as _$PostsLoadedState));

  @override
  _$PostsLoadedState get _value => super._value as _$PostsLoadedState;

  @override
  $Res call({
    Object? userPosts = freezed,
  }) {
    return _then(_$PostsLoadedState(
      userPosts: userPosts == freezed
          ? _value._userPosts
          : userPosts // ignore: cast_nullable_to_non_nullable
              as List<Post>,
    ));
  }
}

/// @nodoc

class _$PostsLoadedState implements PostsLoadedState {
  const _$PostsLoadedState({required final List<Post> userPosts})
      : _userPosts = userPosts;

  final List<Post> _userPosts;
  @override
  List<Post> get userPosts {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userPosts);
  }

  @override
  String toString() {
    return 'PostsState.loaded(userPosts: $userPosts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostsLoadedState &&
            const DeepCollectionEquality()
                .equals(other._userPosts, _userPosts));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_userPosts));

  @JsonKey(ignore: true)
  @override
  _$$PostsLoadedStateCopyWith<_$PostsLoadedState> get copyWith =>
      __$$PostsLoadedStateCopyWithImpl<_$PostsLoadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Post> userPosts) loaded,
    required TResult Function() error,
  }) {
    return loaded(userPosts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Post> userPosts)? loaded,
    TResult Function()? error,
  }) {
    return loaded?.call(userPosts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Post> userPosts)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(userPosts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PostsInitialState value) initial,
    required TResult Function(PostsLoadingState value) loading,
    required TResult Function(PostsLoadedState value) loaded,
    required TResult Function(PostsErrorState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PostsInitialState value)? initial,
    TResult Function(PostsLoadingState value)? loading,
    TResult Function(PostsLoadedState value)? loaded,
    TResult Function(PostsErrorState value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostsInitialState value)? initial,
    TResult Function(PostsLoadingState value)? loading,
    TResult Function(PostsLoadedState value)? loaded,
    TResult Function(PostsErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class PostsLoadedState implements PostsState {
  const factory PostsLoadedState({required final List<Post> userPosts}) =
      _$PostsLoadedState;

  List<Post> get userPosts;
  @JsonKey(ignore: true)
  _$$PostsLoadedStateCopyWith<_$PostsLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PostsErrorStateCopyWith<$Res> {
  factory _$$PostsErrorStateCopyWith(
          _$PostsErrorState value, $Res Function(_$PostsErrorState) then) =
      __$$PostsErrorStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PostsErrorStateCopyWithImpl<$Res>
    extends _$PostsStateCopyWithImpl<$Res>
    implements _$$PostsErrorStateCopyWith<$Res> {
  __$$PostsErrorStateCopyWithImpl(
      _$PostsErrorState _value, $Res Function(_$PostsErrorState) _then)
      : super(_value, (v) => _then(v as _$PostsErrorState));

  @override
  _$PostsErrorState get _value => super._value as _$PostsErrorState;
}

/// @nodoc

class _$PostsErrorState implements PostsErrorState {
  const _$PostsErrorState();

  @override
  String toString() {
    return 'PostsState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PostsErrorState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Post> userPosts) loaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Post> userPosts)? loaded,
    TResult Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Post> userPosts)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PostsInitialState value) initial,
    required TResult Function(PostsLoadingState value) loading,
    required TResult Function(PostsLoadedState value) loaded,
    required TResult Function(PostsErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PostsInitialState value)? initial,
    TResult Function(PostsLoadingState value)? loading,
    TResult Function(PostsLoadedState value)? loaded,
    TResult Function(PostsErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostsInitialState value)? initial,
    TResult Function(PostsLoadingState value)? loading,
    TResult Function(PostsLoadedState value)? loaded,
    TResult Function(PostsErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class PostsErrorState implements PostsState {
  const factory PostsErrorState() = _$PostsErrorState;
}
