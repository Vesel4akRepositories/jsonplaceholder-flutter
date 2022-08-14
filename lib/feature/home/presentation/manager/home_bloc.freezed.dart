// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String user) userSelect,
    required TResult Function() fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String user)? userSelect,
    TResult Function()? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String user)? userSelect,
    TResult Function()? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserSelectEvent value) userSelect,
    required TResult Function(_UsersFetchEvent value) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UserSelectEvent value)? userSelect,
    TResult Function(_UsersFetchEvent value)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserSelectEvent value)? userSelect,
    TResult Function(_UsersFetchEvent value)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res> implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  final HomeEvent _value;
  // ignore: unused_field
  final $Res Function(HomeEvent) _then;
}

/// @nodoc
abstract class _$$_UserSelectEventCopyWith<$Res> {
  factory _$$_UserSelectEventCopyWith(
          _$_UserSelectEvent value, $Res Function(_$_UserSelectEvent) then) =
      __$$_UserSelectEventCopyWithImpl<$Res>;
  $Res call({String user});
}

/// @nodoc
class __$$_UserSelectEventCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res>
    implements _$$_UserSelectEventCopyWith<$Res> {
  __$$_UserSelectEventCopyWithImpl(
      _$_UserSelectEvent _value, $Res Function(_$_UserSelectEvent) _then)
      : super(_value, (v) => _then(v as _$_UserSelectEvent));

  @override
  _$_UserSelectEvent get _value => super._value as _$_UserSelectEvent;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$_UserSelectEvent(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UserSelectEvent implements _UserSelectEvent {
  const _$_UserSelectEvent({required this.user});

  @override
  final String user;

  @override
  String toString() {
    return 'HomeEvent.userSelect(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserSelectEvent &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$$_UserSelectEventCopyWith<_$_UserSelectEvent> get copyWith =>
      __$$_UserSelectEventCopyWithImpl<_$_UserSelectEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String user) userSelect,
    required TResult Function() fetch,
  }) {
    return userSelect(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String user)? userSelect,
    TResult Function()? fetch,
  }) {
    return userSelect?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String user)? userSelect,
    TResult Function()? fetch,
    required TResult orElse(),
  }) {
    if (userSelect != null) {
      return userSelect(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserSelectEvent value) userSelect,
    required TResult Function(_UsersFetchEvent value) fetch,
  }) {
    return userSelect(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UserSelectEvent value)? userSelect,
    TResult Function(_UsersFetchEvent value)? fetch,
  }) {
    return userSelect?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserSelectEvent value)? userSelect,
    TResult Function(_UsersFetchEvent value)? fetch,
    required TResult orElse(),
  }) {
    if (userSelect != null) {
      return userSelect(this);
    }
    return orElse();
  }
}

abstract class _UserSelectEvent implements HomeEvent {
  const factory _UserSelectEvent({required final String user}) =
      _$_UserSelectEvent;

  String get user;
  @JsonKey(ignore: true)
  _$$_UserSelectEventCopyWith<_$_UserSelectEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UsersFetchEventCopyWith<$Res> {
  factory _$$_UsersFetchEventCopyWith(
          _$_UsersFetchEvent value, $Res Function(_$_UsersFetchEvent) then) =
      __$$_UsersFetchEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UsersFetchEventCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res>
    implements _$$_UsersFetchEventCopyWith<$Res> {
  __$$_UsersFetchEventCopyWithImpl(
      _$_UsersFetchEvent _value, $Res Function(_$_UsersFetchEvent) _then)
      : super(_value, (v) => _then(v as _$_UsersFetchEvent));

  @override
  _$_UsersFetchEvent get _value => super._value as _$_UsersFetchEvent;
}

/// @nodoc

class _$_UsersFetchEvent implements _UsersFetchEvent {
  const _$_UsersFetchEvent();

  @override
  String toString() {
    return 'HomeEvent.fetch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UsersFetchEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String user) userSelect,
    required TResult Function() fetch,
  }) {
    return fetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String user)? userSelect,
    TResult Function()? fetch,
  }) {
    return fetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String user)? userSelect,
    TResult Function()? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserSelectEvent value) userSelect,
    required TResult Function(_UsersFetchEvent value) fetch,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UserSelectEvent value)? userSelect,
    TResult Function(_UsersFetchEvent value)? fetch,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserSelectEvent value)? userSelect,
    TResult Function(_UsersFetchEvent value)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _UsersFetchEvent implements HomeEvent {
  const factory _UsersFetchEvent() = _$_UsersFetchEvent;
}

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<User> users) loaded,
    required TResult Function(String? message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<User> users)? loaded,
    TResult Function(String? message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<User> users)? loaded,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialHomeState value) initial,
    required TResult Function(HomeLoadingState value) loading,
    required TResult Function(HomeLoadedState value) loaded,
    required TResult Function(HomeErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialHomeState value)? initial,
    TResult Function(HomeLoadingState value)? loading,
    TResult Function(HomeLoadedState value)? loaded,
    TResult Function(HomeErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialHomeState value)? initial,
    TResult Function(HomeLoadingState value)? loading,
    TResult Function(HomeLoadedState value)? loaded,
    TResult Function(HomeErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;
}

/// @nodoc
abstract class _$$InitialHomeStateCopyWith<$Res> {
  factory _$$InitialHomeStateCopyWith(
          _$InitialHomeState value, $Res Function(_$InitialHomeState) then) =
      __$$InitialHomeStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialHomeStateCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res>
    implements _$$InitialHomeStateCopyWith<$Res> {
  __$$InitialHomeStateCopyWithImpl(
      _$InitialHomeState _value, $Res Function(_$InitialHomeState) _then)
      : super(_value, (v) => _then(v as _$InitialHomeState));

  @override
  _$InitialHomeState get _value => super._value as _$InitialHomeState;
}

/// @nodoc

class _$InitialHomeState implements InitialHomeState {
  const _$InitialHomeState();

  @override
  String toString() {
    return 'HomeState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialHomeState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<User> users) loaded,
    required TResult Function(String? message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<User> users)? loaded,
    TResult Function(String? message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<User> users)? loaded,
    TResult Function(String? message)? error,
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
    required TResult Function(InitialHomeState value) initial,
    required TResult Function(HomeLoadingState value) loading,
    required TResult Function(HomeLoadedState value) loaded,
    required TResult Function(HomeErrorState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialHomeState value)? initial,
    TResult Function(HomeLoadingState value)? loading,
    TResult Function(HomeLoadedState value)? loaded,
    TResult Function(HomeErrorState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialHomeState value)? initial,
    TResult Function(HomeLoadingState value)? loading,
    TResult Function(HomeLoadedState value)? loaded,
    TResult Function(HomeErrorState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialHomeState implements HomeState {
  const factory InitialHomeState() = _$InitialHomeState;
}

/// @nodoc
abstract class _$$HomeLoadingStateCopyWith<$Res> {
  factory _$$HomeLoadingStateCopyWith(
          _$HomeLoadingState value, $Res Function(_$HomeLoadingState) then) =
      __$$HomeLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeLoadingStateCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res>
    implements _$$HomeLoadingStateCopyWith<$Res> {
  __$$HomeLoadingStateCopyWithImpl(
      _$HomeLoadingState _value, $Res Function(_$HomeLoadingState) _then)
      : super(_value, (v) => _then(v as _$HomeLoadingState));

  @override
  _$HomeLoadingState get _value => super._value as _$HomeLoadingState;
}

/// @nodoc

class _$HomeLoadingState implements HomeLoadingState {
  const _$HomeLoadingState();

  @override
  String toString() {
    return 'HomeState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HomeLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<User> users) loaded,
    required TResult Function(String? message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<User> users)? loaded,
    TResult Function(String? message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<User> users)? loaded,
    TResult Function(String? message)? error,
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
    required TResult Function(InitialHomeState value) initial,
    required TResult Function(HomeLoadingState value) loading,
    required TResult Function(HomeLoadedState value) loaded,
    required TResult Function(HomeErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialHomeState value)? initial,
    TResult Function(HomeLoadingState value)? loading,
    TResult Function(HomeLoadedState value)? loaded,
    TResult Function(HomeErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialHomeState value)? initial,
    TResult Function(HomeLoadingState value)? loading,
    TResult Function(HomeLoadedState value)? loaded,
    TResult Function(HomeErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class HomeLoadingState implements HomeState {
  const factory HomeLoadingState() = _$HomeLoadingState;
}

/// @nodoc
abstract class _$$HomeLoadedStateCopyWith<$Res> {
  factory _$$HomeLoadedStateCopyWith(
          _$HomeLoadedState value, $Res Function(_$HomeLoadedState) then) =
      __$$HomeLoadedStateCopyWithImpl<$Res>;
  $Res call({List<User> users});
}

/// @nodoc
class __$$HomeLoadedStateCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res>
    implements _$$HomeLoadedStateCopyWith<$Res> {
  __$$HomeLoadedStateCopyWithImpl(
      _$HomeLoadedState _value, $Res Function(_$HomeLoadedState) _then)
      : super(_value, (v) => _then(v as _$HomeLoadedState));

  @override
  _$HomeLoadedState get _value => super._value as _$HomeLoadedState;

  @override
  $Res call({
    Object? users = freezed,
  }) {
    return _then(_$HomeLoadedState(
      users: users == freezed
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
    ));
  }
}

/// @nodoc

class _$HomeLoadedState implements HomeLoadedState {
  const _$HomeLoadedState({required final List<User> users}) : _users = users;

  final List<User> _users;
  @override
  List<User> get users {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  String toString() {
    return 'HomeState.loaded(users: $users)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeLoadedState &&
            const DeepCollectionEquality().equals(other._users, _users));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_users));

  @JsonKey(ignore: true)
  @override
  _$$HomeLoadedStateCopyWith<_$HomeLoadedState> get copyWith =>
      __$$HomeLoadedStateCopyWithImpl<_$HomeLoadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<User> users) loaded,
    required TResult Function(String? message) error,
  }) {
    return loaded(users);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<User> users)? loaded,
    TResult Function(String? message)? error,
  }) {
    return loaded?.call(users);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<User> users)? loaded,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(users);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialHomeState value) initial,
    required TResult Function(HomeLoadingState value) loading,
    required TResult Function(HomeLoadedState value) loaded,
    required TResult Function(HomeErrorState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialHomeState value)? initial,
    TResult Function(HomeLoadingState value)? loading,
    TResult Function(HomeLoadedState value)? loaded,
    TResult Function(HomeErrorState value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialHomeState value)? initial,
    TResult Function(HomeLoadingState value)? loading,
    TResult Function(HomeLoadedState value)? loaded,
    TResult Function(HomeErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class HomeLoadedState implements HomeState {
  const factory HomeLoadedState({required final List<User> users}) =
      _$HomeLoadedState;

  List<User> get users;
  @JsonKey(ignore: true)
  _$$HomeLoadedStateCopyWith<_$HomeLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HomeErrorStateCopyWith<$Res> {
  factory _$$HomeErrorStateCopyWith(
          _$HomeErrorState value, $Res Function(_$HomeErrorState) then) =
      __$$HomeErrorStateCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class __$$HomeErrorStateCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$$HomeErrorStateCopyWith<$Res> {
  __$$HomeErrorStateCopyWithImpl(
      _$HomeErrorState _value, $Res Function(_$HomeErrorState) _then)
      : super(_value, (v) => _then(v as _$HomeErrorState));

  @override
  _$HomeErrorState get _value => super._value as _$HomeErrorState;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$HomeErrorState(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$HomeErrorState implements HomeErrorState {
  const _$HomeErrorState({this.message = 'Произошла ошибка'});

  @override
  @JsonKey()
  final String? message;

  @override
  String toString() {
    return 'HomeState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeErrorState &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$HomeErrorStateCopyWith<_$HomeErrorState> get copyWith =>
      __$$HomeErrorStateCopyWithImpl<_$HomeErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<User> users) loaded,
    required TResult Function(String? message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<User> users)? loaded,
    TResult Function(String? message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<User> users)? loaded,
    TResult Function(String? message)? error,
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
    required TResult Function(InitialHomeState value) initial,
    required TResult Function(HomeLoadingState value) loading,
    required TResult Function(HomeLoadedState value) loaded,
    required TResult Function(HomeErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialHomeState value)? initial,
    TResult Function(HomeLoadingState value)? loading,
    TResult Function(HomeLoadedState value)? loaded,
    TResult Function(HomeErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialHomeState value)? initial,
    TResult Function(HomeLoadingState value)? loading,
    TResult Function(HomeLoadedState value)? loaded,
    TResult Function(HomeErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class HomeErrorState implements HomeState {
  const factory HomeErrorState({final String? message}) = _$HomeErrorState;

  String? get message;
  @JsonKey(ignore: true)
  _$$HomeErrorStateCopyWith<_$HomeErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}
