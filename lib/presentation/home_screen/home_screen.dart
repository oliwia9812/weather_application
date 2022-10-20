import 'package:flutter/material.dart';
import 'package:weather/presentation/home_screen/widgets/custom_toggle_buttons.dart';
import 'package:weather/presentation/widgets/custom_button.dart';
import 'package:weather/presentation/widgets/custom_flexible_widget.dart';
import 'package:weather/styles/app_colors.dart';
import 'package:weather/styles/app_text_styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        minimum: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 64.0),
        child: Column(
          children: [
            _getHeader(),
            _getCurrentWeather(),
            _getHourlyWeather(),
            _getWeeklyWeather(),
          ],
        ),
      ),
    );
  }

  Widget _getHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          "London",
          style: AppTextStyles.titleLarge,
        ),
        CustomButton(
          callback: () => print('Show menu'),
          icon: Icons.menu_rounded,
        ),
      ],
    );
  }

  Widget _getCurrentWeather() {
    return Padding(
      padding: const EdgeInsets.only(top: 56.0, bottom: 56.0),
      child: Column(
        children: [
          Image.network(
            'https://developer.foreca.com/static/images/symbols/d000.png',
            width: 104.0,
          ),
          const SizedBox(
            height: 16.0,
          ),
          const Text(
            '12°',
            style: AppTextStyles.titleXLarge,
          ),
          const Text(
            'Partly cloud | feels like 9°C',
            style: AppTextStyles.subtitle,
          ),
        ],
      ),
    );
  }

  Widget _getHourlyWeather() {
    return Row(
      children: List.generate(5, (index) {
        return const CustomFlexibleWidget(
          icon: 'https://developer.foreca.com/static/images/symbols/d100.png',
          temp: '4°',
          time: '12',
          verticalPadding: 16.0,
        );
      }),
    );
  }

  Widget _getWeeklyWeather() {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Next week',
                style: AppTextStyles.titleMedium,
              ),
              CustomToggleButtons(),
            ],
          ),
          const SizedBox(
            height: 12.0,
          ),
          SizedBox(
            width: double.infinity,
            height: 135.0,
            child: Card(
              color: AppColors.primary,
              margin: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Row(
                children: List.generate(7, (index) {
                  return const CustomFlexibleWidget(
                    icon:
                        'https://developer.foreca.com/static/images/symbols/d400.png',
                    temp: '4°',
                    time: 'Mon',
                    verticalPadding: 18.0,
                  );
                }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
