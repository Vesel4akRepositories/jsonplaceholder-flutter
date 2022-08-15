import 'package:freezed_annotation/freezed_annotation.dart';

part 'geo.freezed.dart';

@freezed
class Geo with _$Geo {
  const factory Geo({
    required String lat,
    required String lng,
  }) = _Geo;
}
