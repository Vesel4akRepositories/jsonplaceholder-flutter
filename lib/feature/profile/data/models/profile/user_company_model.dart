import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jsonplaceholder_bloc/feature/profile/domain/entities/profile/user_company.dart';

part 'user_company_model.freezed.dart';

part 'user_company_model.g.dart';

@freezed
class UserCompanyModel with _$UserCompanyModel {
  const factory UserCompanyModel({
    required final String name,
    @JsonKey(name: 'catchPhrase') required final String catchPhras,
    required final String bs,
  }) = _UserCompanyModel;

  factory UserCompanyModel.fromJson(Map<String, dynamic> json) =>
      _$UserCompanyModelFromJson(json);
}

extension UserCompanyModelX on UserCompanyModel {
  UserCompany toEntity() => UserCompany(
        bs: bs,
        name: name,
        catchPhras: catchPhras,
      );
}
