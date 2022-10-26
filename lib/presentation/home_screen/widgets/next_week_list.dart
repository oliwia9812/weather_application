import 'package:flutter/material.dart';
import 'package:weather/models/daily_weather_model.dart';
import 'package:weather/presentation/widgets/custom_flexible_widget.dart';
import 'package:weather/styles/app_colors.dart';

class NextWeekList extends StatelessWidget {
  final List<DailyForecastModel> data;
  const NextWeekList({required this.data, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 200.0,
      child: Card(
        color: AppColors.primary,
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Row(
          children: List.generate(7, (index) {
            return CustomFlexibleWidget(
              icon:
                  'https://developer.foreca.com/static/images/symbols/${data[index].symbol}.png',
              maxTemp: '${data[index].maxTemp}',
              minTemp: '${data[index].minTemp}',
              time: data[index].date!,
              verticalPadding: 36.0,
            );
          }),
        ),
      ),
    );
  }
}
