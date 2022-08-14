import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jsonplaceholder_bloc/feature/profile/profile/data/models/converters/address_converter.dart';
import 'package:jsonplaceholder_bloc/feature/profile/profile/data/models/converters/company_converter.dart';
import 'package:jsonplaceholder_bloc/feature/profile/profile/data/models/user_address_model.dart';
import 'package:jsonplaceholder_bloc/feature/profile/profile/data/models/user_company_model.dart';
import 'package:jsonplaceholder_bloc/feature/profile/profile/domain/entities/user_profile.dart';

part 'user_profile_model.freezed.dart';

part 'user_profile_model.g.dart';

@freezed
class UserProfileModel with _$UserProfileModel {
  @JsonSerializable(explicitToJson: true)
  const factory UserProfileModel({
    required int id,
    required String name,
    required String username,
    required String email,
    required String phone,
    required String website,
    @UserAddressConverter() required UserAddressModel address,
    @UserCompanyConverter() required UserCompanyModel company,
  }) = _UserProfileModel;

  factory UserProfileModel.fromJson(Map<String, dynamic> json) =>
      _$UserProfileModelFromJson(json);
}

extension UserProfileModelX on UserProfileModel {
  UserProfile toEntity() => UserProfile(
        id: id,
        name: name,
        username: username,
        phone: phone,
        website: website,
        company: company.toEntity(),
        email: email,
        address: address.toEntity(),
      );
}
