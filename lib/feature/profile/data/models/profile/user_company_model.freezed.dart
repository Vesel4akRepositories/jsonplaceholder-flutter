// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_company_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserCompanyModel _$UserCompanyModelFromJson(Map<String, dynamic> json) {
  return _UserCompanyModel.fromJson(json);
}

/// @nodoc
mixin _$UserCompanyModel {
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'catchPhrase')
  String get catchPhras => throw _privateConstructorUsedError;
  String get bs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCompanyModelCopyWith<UserCompanyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCompanyModelCopyWith<$Res> {
  factory $UserCompanyModelCopyWith(
          UserCompanyModel value, $Res Function(UserCompanyModel) then) =
      _$UserCompanyModelCopyWithImpl<$Res>;
  $Res call(
      {String name,
      @JsonKey(name: 'catchPhrase') String catchPhras,
      String bs});
}

/// @nodoc
class _$UserCompanyModelCopyWithImpl<$Res>
    implements $UserCompanyModelCopyWith<$Res> {
  _$UserCompanyModelCopyWithImpl(this._value, this._then);

  final UserCompanyModel _value;
  // ignore: unused_field
  final $Res Function(UserCompanyModel) _then;

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
abstract class _$$_UserCompanyModelCopyWith<$Res>
    implements $UserCompanyModelCopyWith<$Res> {
  factory _$$_UserCompanyModelCopyWith(
          _$_UserCompanyModel value, $Res Function(_$_UserCompanyModel) then) =
      __$$_UserCompanyModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      @JsonKey(name: 'catchPhrase') String catchPhras,
      String bs});
}

/// @nodoc
class __$$_UserCompanyModelCopyWithImpl<$Res>
    extends _$UserCompanyModelCopyWithImpl<$Res>
    implements _$$_UserCompanyModelCopyWith<$Res> {
  __$$_UserCompanyModelCopyWithImpl(
      _$_UserCompanyModel _value, $Res Function(_$_UserCompanyModel) _then)
      : super(_value, (v) => _then(v as _$_UserCompanyModel));

  @override
  _$_UserCompanyModel get _value => super._value as _$_UserCompanyModel;

  @override
  $Res call({
    Object? name = freezed,
    Object? catchPhras = freezed,
    Object? bs = freezed,
  }) {
    return _then(_$_UserCompanyModel(
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
@JsonSerializable()
class _$_UserCompanyModel implements _UserCompanyModel {
  const _$_UserCompanyModel(
      {required this.name,
      @JsonKey(name: 'catchPhrase') required this.catchPhras,
      required this.bs});

  factory _$_UserCompanyModel.fromJson(Map<String, dynamic> json) =>
      _$$_UserCompanyModelFromJson(json);

  @override
  final String name;
  @override
  @JsonKey(name: 'catchPhrase')
  final String catchPhras;
  @override
  final String bs;

  @override
  String toString() {
    return 'UserCompanyModel(name: $name, catchPhras: $catchPhras, bs: $bs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserCompanyModel &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.catchPhras, catchPhras) &&
            const DeepCollectionEquality().equals(other.bs, bs));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(catchPhras),
      const DeepCollectionEquality().hash(bs));

  @JsonKey(ignore: true)
  @override
  _$$_UserCompanyModelCopyWith<_$_UserCompanyModel> get copyWith =>
      __$$_UserCompanyModelCopyWithImpl<_$_UserCompanyModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserCompanyModelToJson(
      this,
    );
  }
}

abstract class _UserCompanyModel implements UserCompanyModel {
  const factory _UserCompanyModel(
      {required final String name,
      @JsonKey(name: 'catchPhrase') required final String catchPhras,
      required final String bs}) = _$_UserCompanyModel;

  factory _UserCompanyModel.fromJson(Map<String, dynamic> json) =
      _$_UserCompanyModel.fromJson;

  @override
  String get name;
  @override
  @JsonKey(name: 'catchPhrase')
  String get catchPhras;
  @override
  String get bs;
  @override
  @JsonKey(ignore: true)
  _$$_UserCompanyModelCopyWith<_$_UserCompanyModel> get copyWith =>
      throw _privateConstructorUsedError;
}
