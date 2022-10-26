import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/bloc/bloc/weather_bloc.dart';
import 'package:weather/presentation/search_screen/widgets/text_field_widget.dart';
import 'package:weather/presentation/widgets/custom_button.dart';
import 'package:weather/presentation/widgets/separator.dart';
import 'package:weather/styles/app_colors.dart';
import 'package:weather/styles/app_text_styles.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.background,
      body: SafeArea(
        minimum: const EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 64.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomButton(
              callback: () {
                BlocProvider.of<WeatherBloc>(context)
                    .add(GetWeatherByCurrentLocation());
                Navigator.pop(context);
              },
              icon: Icons.arrow_back_ios_new,
            ),
            const Separator(
              height: 32.0,
            ),
            const Text(
              'Search location:',
              style: AppTextStyles.titleLarge,
            ),
            const Separator(
              height: 16.0,
            ),
            const TextFieldWidget(),
            _checkIfCityExist(),
          ],
        ),
      ),
    );
  }

  Widget _checkIfCityExist() {
    return BlocConsumer<WeatherBloc, WeatherState>(builder: ((context, state) {
      if (state is WeatherNotFound) return _buildNotFound();
      return const SizedBox.shrink();
    }), listener: ((context, state) {
      if (state is WeatherLoaded) {
        Navigator.pop(context);
      }
    }));
  }

  Widget _buildNotFound() {
    return Center(
      child: SizedBox(
        height: 400.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(
              Icons.search,
              color: AppColors.secondary,
              size: 48.0,
            ),
            Separator(
              height: 12.0,
            ),
            Text(
              'Result not found',
              style: AppTextStyles.subtitle,
            ),
          ],
        ),
      ),
    );
  }
}
