import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/bloc/bloc/weather_bloc.dart';
import 'package:weather/models/current_weather_model.dart';
import 'package:weather/models/daily_weather_model.dart';
import 'package:weather/models/hourly_weather_model.dart';
import 'package:weather/models/weather_model.dart';
import 'package:weather/presentation/home_screen/widgets/custom_toggle_buttons.dart';
import 'package:weather/presentation/home_screen/widgets/next_week_chart.dart';
import 'package:weather/presentation/home_screen/widgets/next_week_list.dart';
import 'package:weather/presentation/search_screen/search_screen.dart';
import 'package:weather/presentation/widgets/custom_button.dart';
import 'package:weather/presentation/widgets/custom_flexible_widget.dart';
import 'package:weather/styles/app_colors.dart';
import 'package:weather/styles/app_text_styles.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _showChart = false;

  @override
  void initState() {
    BlocProvider.of<WeatherBloc>(context).add(GetWeatherByCurrentLocation());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherBloc, WeatherState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: AppColors.background,
          body: SafeArea(
            minimum:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 64.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (state is WeatherLoading) _buildLoading(),
                if (state is WeatherLoaded) ...[
                  _getHeader(context, state.weatherModel),
                  _getCurrentWeather(state.weatherModel),
                  _getHourlyWeather(state.weatherModel),
                  _getWeeklyWeather(state.weatherModel),
                ]
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildLoading() {
    return const Center(
      child: CircularProgressIndicator(
        color: AppColors.primary,
      ),
    );
  }

  Widget _getHeader(BuildContext context, WeatherModel weatherModel) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          weatherModel.cityName ?? '-',
          style: AppTextStyles.titleLarge,
        ),
        CustomButton(
          callback: () {
            Navigator.of(context)
                .push(
                  MaterialPageRoute(
                    builder: ((context) => const SearchScreen()),
                  ),
                )
                .then((_) => setState(() {
                      _showChart = false;
                    }));
          },
          icon: Icons.menu_rounded,
        ),
      ],
    );
  }

  Widget _getCurrentWeather(WeatherModel weatherModel) {
    final CurrentWeatherModel currentWeather =
        weatherModel.currentWeatherModel!;
    return Padding(
      padding: const EdgeInsets.only(top: 46.0, bottom: 36.0),
      child: Column(
        children: [
          Image.network(
            'https://developer.foreca.com/static/images/symbols/${currentWeather.symbol}.png',
            width: 70.0,
          ),
          const SizedBox(
            height: 16.0,
          ),
          Text(
            '${currentWeather.temperature!}°',
            style: AppTextStyles.titleXLarge,
          ),
          const SizedBox(
            height: 8.0,
          ),
          Text(
            '${currentWeather.symbolPhrase} | feels like ${currentWeather.feelsLikeTemp}°',
            style: AppTextStyles.subtitle,
          ),
        ],
      ),
    );
  }

  Widget _getHourlyWeather(WeatherModel weatherModel) {
    final List<HourlyForecastModel> hourlyWeather =
        weatherModel.hourlyForecastModel!;
    return Row(
      children: List.generate(5, (index) {
        return CustomFlexibleWidget(
          icon:
              'https://developer.foreca.com/static/images/symbols/${hourlyWeather[index].symbol}.png',
          maxTemp: hourlyWeather[index].temperature.toString(),
          time: hourlyWeather[index].time.toString(),
          verticalPadding: 18.0,
        );
      }),
    );
  }

  Widget _getWeeklyWeather(WeatherModel weatherModel) {
    final List<DailyForecastModel> weeklyWeather =
        weatherModel.dailyForecastModel!;
    return Padding(
      padding: const EdgeInsets.only(top: 30.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Next week',
                style: AppTextStyles.titleMedium,
              ),
              CustomToggleButtons(
                callback: (changeShowChart) {
                  setState(() {
                    _showChart = changeShowChart;
                  });
                },
              ),
            ],
          ),
          const SizedBox(
            height: 16.0,
          ),
          if (_showChart) ...[
            NextWeekChart(data: weeklyWeather),
          ] else ...[
            NextWeekList(data: weeklyWeather),
          ]
        ],
      ),
    );
  }
}
