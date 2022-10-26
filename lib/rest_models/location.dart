import 'package:json_annotation/json_annotation.dart';

part 'location.g.dart';

@JsonSerializable()
class SearchLocation {
  List<Locations>? locations;

  SearchLocation({
    required this.locations,
  });

  factory SearchLocation.fromJson(Map<String, dynamic> json) =>
      _$SearchLocationFromJson(json);

  Map<String, dynamic> toJson() => _$SearchLocationToJson(this);
}

@JsonSerializable()
class Locations {
  int? id;
  String? name;
  String? country;
  String? timezone;
  String? language;
  String? adminArea;
  String? adminArea2;
  String? adminArea3;
  double? lon;
  double? lat;

  Locations({
    this.id,
    this.name,
    this.country,
    this.timezone,
    this.language,
    this.adminArea,
    this.adminArea2,
    this.adminArea3,
    this.lon,
    this.lat,
  });

  factory Locations.fromJson(Map<String, dynamic> json) =>
      _$LocationsFromJson(json);

  Map<String, dynamic> toJson() => _$LocationsToJson(this);
}
