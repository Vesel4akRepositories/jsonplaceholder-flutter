// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_company.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserCompany {
  String get name => throw _privateConstructorUsedError;
  String get catchPhras => throw _privateConstructorUsedError;
  String get bs => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserCompanyCopyWith<UserCompany> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCompanyCopyWith<$Res> {
  factory $UserCompanyCopyWith(
          UserCompany value, $Res Function(UserCompany) then) =
      _$UserCompanyCopyWithImpl<$Res>;
  $Res call({String name, String catchPhras, String bs});
}

/// @nodoc
class _$UserCompanyCopyWithImpl<$Res> implements $UserCompanyCopyWith<$Res> {
  _$UserCompanyCopyWithImpl(this._value, this._then);

  final UserCompany _value;
  // ignore: unused_field
  final $Res Function(UserCompany) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? catchPhras = freezed,
    Object? bs = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      catchPhras: catchPhras == freezed
          ? _value.catchPhras
          : catchPhras // ignore: cast_nullable_to_non_nullable
              as String,
      bs: bs == freezed
          ? _value.bs
          : bs // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_UserCompanyCopyWith<$Res>
    implements $UserCompanyCopyWith<$Res> {
  factory _$$_UserCompanyCopyWith(
          _$_UserCompany value, $Res Function(_$_UserCompany) then) =
      __$$_UserCompanyCopyWithImpl<$Res>;
  @override
  $Res call({String name, String catchPhras, String bs});
}

/// @nodoc
class __$$_UserCompanyCopyWithImpl<$Res> extends _$UserCompanyCopyWithImpl<$Res>
    implements _$$_UserCompanyCopyWith<$Res> {
  __$$_UserCompanyCopyWithImpl(
      _$_UserCompany _value, $Res Function(_$_UserCompany) _then)
      : super(_value, (v) => _then(v as _$_UserCompany));

  @override
  _$_UserCompany get _value => super._value as _$_UserCompany;

  @override
  $Res call({
    Object? name = freezed,
    Object? catchPhras = freezed,
    Object? bs = freezed,
  }) {
    return _then(_$_UserCompany(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      catchPhras: catchPhras == freezed
          ? _value.catchPhras
          : catchPhras // ignore: cast_nullable_to_non_nullable
              as String,
      bs: bs == freezed
          ? _value.bs
          : bs // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UserCompany implements _UserCompany {
  const _$_UserCompany(
      {required this.name, required this.catchPhras, required this.bs});

  @override
  final String name;
  @override
  final String catchPhras;
  @override
  final String bs;

  @override
  String toString() {
    return 'UserCompany(name: $name, catchPhras: $catchPhras, bs: $bs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserCompany &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.catchPhras, catchPhras) &&
            const DeepCollectionEquality().equals(other.bs, bs));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(catchPhras),
      const DeepCollectionEquality().hash(bs));

  @JsonKey(ignore: true)
  @override
  _$$_UserCompanyCopyWith<_$_UserCompany> get copyWith =>
      __$$_UserCompanyCopyWithImpl<_$_UserCompany>(this, _$identity);
}

abstract class _UserCompany implements UserCompany {
  const factory _UserCompany(
      {required final String name,
      required final String catchPhras,
      required final String bs}) = _$_UserCompany;

  @override
  String get name;
  @override
  String get catchPhras;
  @override
  String get bs;
  @override
  @JsonKey(ignore: true)
  _$$_UserCompanyCopyWith<_$_UserCompany> get copyWith =>
      throw _privateConstructorUsedError;
}
