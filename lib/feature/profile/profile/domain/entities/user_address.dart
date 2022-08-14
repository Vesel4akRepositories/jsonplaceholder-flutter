import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jsonplaceholder_bloc/feature/profile/profile/domain/entities/geo.dart';

part 'user_address.freezed.dart';

@freezed
class UserAddress with _$UserAddress {
  const factory UserAddress(
      {required final String street,
      required final String suite,
      required final String city,
      required final String zipcode,
      required final Geo geo}) = _UserAddress;
}
