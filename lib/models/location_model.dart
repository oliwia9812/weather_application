import 'package:json_annotation/json_annotation.dart';

part 'location_model.g.dart';

@JsonSerializable()
class LocationModel {
  int? id;
  String? name;
  double? lon;
  double? lat;

  LocationModel({
    required this.id,
    required this.name,
    required this.lon,
    required this.lat,
  });

  factory LocationModel.fromJson(Map<String, dynamic> json) =>
      _$LocationModelFromJson(json);

  Map<String, dynamic> toJson() => _$LocationModelToJson(this);
}
