import 'package:weather/models/current_weather_model.dart';
import 'package:weather/models/daily_weather_model.dart';
import 'package:weather/models/hourly_weather_model.dart';
import 'package:weather/models/location_model.dart';
import 'package:weather/rest_models/current_weather.dart';
import 'package:weather/rest_models/daily_weather.dart';
import 'package:weather/rest_models/hourly_weather.dart';
import 'package:weather/rest_models/location.dart';

extension LocationMapper on Location {
  LocationModel mapToLocationModel() => LocationModel(
        id: id,
        name: name,
        lon: lon,
        lat: lat,
      );
}

extension CurrentWeatherMapper on CurrentWeather {
  CurrentWeatherModel mapToCurrentWeatherModel() => CurrentWeatherModel(
        feelsLikeTemp: feelsLikeTemp,
        symbol: symbol,
        symbolPhrase: symbolPhrase,
        temperature: temperature,
        time: DateTime.parse(time),
      );
}

extension DailyWeatherMapper on DailyWeather {
  DailyWeatherModel mapToDailyWeatherModel() => DailyWeatherModel(
        date: DateTime.parse(date),
        symbol: symbol,
        maxTemp: maxTemp,
        minTemp: minTemp,
      );
}

extension HourlyWeatherMapper on HourlyWeather {
  HourlyWeatherModel mapToHourlyWeatherModel() => HourlyWeatherModel(
        symbol: symbol,
        temperature: temperature,
        time: DateTime.parse(time),
      );
}
