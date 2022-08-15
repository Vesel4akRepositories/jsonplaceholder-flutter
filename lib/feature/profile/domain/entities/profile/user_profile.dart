import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jsonplaceholder_bloc/feature/profile/domain/entities/profile/user_address.dart';
import 'package:jsonplaceholder_bloc/feature/profile/domain/entities/profile/user_company.dart';

part 'user_profile.freezed.dart';

@freezed
class UserProfile with _$UserProfile {
  const factory UserProfile({
    required int id,
    required String name,
    required String username,
    required String email,
    required String phone,
    required String website,
    required UserAddress address,
    required UserCompany company,
  }) = _UserProfile;
}
