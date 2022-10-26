import 'package:weather/models/current_weather_model.dart';
import 'package:weather/models/daily_weather_model.dart';
import 'package:weather/models/hourly_weather_model.dart';
import 'package:weather/models/location_model.dart';
import 'package:weather/rest_models/current_weather.dart';
import 'package:weather/rest_models/daily_weather.dart';
import 'package:weather/rest_models/hourly_weather.dart';
import 'package:weather/rest_models/location.dart';
import 'package:intl/intl.dart';

extension LocationMapper on SearchLocation {
  LocationModel mapToLocationModel() => LocationModel(
        id: locations![0].id,
        name: locations![0].name,
        lon: locations![0].lon,
        lat: locations![0].lat,
      );
}

extension CurrentWeatherMapper on CurrentWeather {
  CurrentWeatherModel mapToCurrentWeatherModel() => CurrentWeatherModel(
        feelsLikeTemp: current?.feelsLikeTemp?.toInt(),
        symbol: current?.symbol,
        symbolPhrase: current?.symbolPhrase,
        temperature: current?.temperature?.toInt(),
        time: DateTime.parse(current!.time!),
      );
}

extension DailyForecastMapper on ForecastDaily {
  DailyForecastModel mapToDailyWeatherModel() => DailyForecastModel(
        // date: DateTime.parse(date!),
        date: DateFormat.E().format(DateTime.parse(date!)).toString(),
        symbol: symbol,
        maxTemp: maxTemp?.toInt(),
        minTemp: minTemp?.toInt(),
      );
}

extension HourlyWeatherMapper on ForecastHourly {
  HourlyForecastModel mapToHourlyWeatherModel() => HourlyForecastModel(
        symbol: symbol,
        temperature: temperature?.toInt(),
        time: DateTime.parse(time!).toLocal().hour,
      );
}
