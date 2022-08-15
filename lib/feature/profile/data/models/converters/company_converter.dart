import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jsonplaceholder_bloc/feature/profile/data/models/profile/user_company_model.dart';

class UserCompanyConverter
    implements JsonConverter<UserCompanyModel, Map<String, dynamic>> {
  const UserCompanyConverter();

  @override
  UserCompanyModel fromJson(Map<String, dynamic> json) {
    return UserCompanyModel.fromJson(json);
  }

  @override
  Map<String, dynamic> toJson(UserCompanyModel companyModel) =>
      companyModel.toJson();
}
