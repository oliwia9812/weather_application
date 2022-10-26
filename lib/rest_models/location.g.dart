// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchLocation _$SearchLocationFromJson(Map<String, dynamic> json) =>
    SearchLocation(
      locations: (json['locations'] as List<dynamic>?)
          ?.map((e) => Locations.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SearchLocationToJson(SearchLocation instance) =>
    <String, dynamic>{
      'locations': instance.locations,
    };

Locations _$LocationsFromJson(Map<String, dynamic> json) => Locations(
      id: json['id'] as int?,
      name: json['name'] as String?,
      country: json['country'] as String?,
      timezone: json['timezone'] as String?,
      language: json['language'] as String?,
      adminArea: json['adminArea'] as String?,
      adminArea2: json['adminArea2'] as String?,
      adminArea3: json['adminArea3'] as String?,
      lon: (json['lon'] as num?)?.toDouble(),
      lat: (json['lat'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$LocationsToJson(Locations instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'country': instance.country,
      'timezone': instance.timezone,
      'language': instance.language,
      'adminArea': instance.adminArea,
      'adminArea2': instance.adminArea2,
      'adminArea3': instance.adminArea3,
      'lon': instance.lon,
      'lat': instance.lat,
    };
