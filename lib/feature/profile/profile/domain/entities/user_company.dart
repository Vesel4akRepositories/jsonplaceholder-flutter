
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_company.freezed.dart';
@freezed
class UserCompany with _$UserCompany {
  const factory UserCompany ({
    required final String name,
    required final String catchPhras,
    required final String bs,
  }) = _UserCompany;
}

