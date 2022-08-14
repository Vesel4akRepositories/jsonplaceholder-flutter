// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_address_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserAddressModel _$$_UserAddressModelFromJson(Map<String, dynamic> json) =>
    _$_UserAddressModel(
      street: json['street'] as String,
      suite: json['suite'] as String,
      city: json['city'] as String,
      zipcode: json['zipcode'] as String,
      geo: const UserAddressGeoConverter()
          .fromJson(json['geo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UserAddressModelToJson(_$_UserAddressModel instance) =>
    <String, dynamic>{
      'street': instance.street,
      'suite': instance.suite,
      'city': instance.city,
      'zipcode': instance.zipcode,
      'geo': const UserAddressGeoConverter().toJson(instance.geo),
    };
