import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jsonplaceholder_bloc/feature/profile/data/models/converters/geo_converter.dart';
import 'package:jsonplaceholder_bloc/feature/profile/data/models/profile/geo_model.dart';

import '../../../domain/entities/profile/user_address.dart';

part 'user_address_model.freezed.dart';

part 'user_address_model.g.dart';

@freezed
class UserAddressModel with _$UserAddressModel {
  @JsonSerializable(explicitToJson: true)
  const factory UserAddressModel(
          {required final String street,
          required final String suite,
          required final String city,
          required final String zipcode,
          @UserAddressGeoConverter() required final GeoModel geo}) =
      _UserAddressModel;

  factory UserAddressModel.fromJson(Map<String, dynamic> json) =>
      _$UserAddressModelFromJson(json);
}

extension UserAddressModelX on UserAddressModel {
  UserAddress toEntity() => UserAddress(
        suite: suite,
        street: street,
        zipcode: zipcode,
        city: city,
        geo: geo.toEntity(),
      );
}
