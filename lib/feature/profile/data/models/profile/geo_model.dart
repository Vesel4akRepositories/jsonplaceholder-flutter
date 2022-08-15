import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jsonplaceholder_bloc/feature/profile/domain/entities/profile/geo.dart';

part 'geo_model.freezed.dart';

part 'geo_model.g.dart';

@freezed
class GeoModel with _$GeoModel {
  const factory GeoModel({
    required String lat,
    required String lng,
  }) = _GeoModel;

  factory GeoModel.fromJson(Map<String, dynamic> json) =>
      _$GeoModelFromJson(json);
}

extension GeoModelX on GeoModel {
  Geo toEntity() => Geo(
        lat: lat,
        lng: lng,
      );
}
