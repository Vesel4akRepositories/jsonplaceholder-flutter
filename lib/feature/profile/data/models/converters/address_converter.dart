import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jsonplaceholder_bloc/feature/profile/data/models/profile/user_address_model.dart';

class UserAddressConverter implements JsonConverter<UserAddressModel, Map<String, dynamic>> {
  const UserAddressConverter();

  @override
  UserAddressModel fromJson(Map<String, dynamic> json) {
   return UserAddressModel.fromJson(json);
  }

  @override
  Map<String, dynamic> toJson(UserAddressModel addressModel) => addressModel.toJson();
}