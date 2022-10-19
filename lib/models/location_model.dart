import 'package:json_annotation/json_annotation.dart';

part 'location_model.g.dart';

@JsonSerializable()
class LocationModel {
  final int id;
  final String name;
  final double lon;
  final double lat;

  LocationModel({
    required this.id,
    required this.name,
    required this.lon,
    required this.lat,
  });
}
