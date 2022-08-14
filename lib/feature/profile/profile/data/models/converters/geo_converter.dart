import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jsonplaceholder_bloc/feature/profile/profile/data/models/geo_model.dart';

class UserAddressGeoConverter implements JsonConverter<GeoModel, Map<String, dynamic>> {
  const UserAddressGeoConverter();

  @override
  GeoModel fromJson(Map<String, dynamic> json) {
    return GeoModel.fromJson(json);
  }

  @override
  Map<String, dynamic> toJson(GeoModel geoModel) => geoModel.toJson();
}