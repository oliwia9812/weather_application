import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:weather/models/daily_weather_model.dart';
import 'package:weather/styles/app_colors.dart';
import 'package:weather/styles/app_text_styles.dart';

class NextWeekChart extends StatelessWidget {
  final List<DailyForecastModel> data;
  const NextWeekChart({required this.data, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16.0),
      height: 200.0,
      child: LineChart(
        LineChartData(
          minX: 0,
          maxX: 6,
          minY: 0,
          maxY: 35,
          titlesData: FlTitlesData(
            show: true,
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                interval: 1,
                showTitles: true,
                reservedSize: 30,
                getTitlesWidget: bottomTitleWidgets,
              ),
            ),
            leftTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: false,
              ),
            ),
            topTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: false,
              ),
            ),
            rightTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                getTitlesWidget: rightTitleWidgets,
                interval: 1,
                reservedSize: 42,
              ),
            ),
          ),
          borderData: FlBorderData(
            show: true,
            border: Border.all(
              color: AppColors.secondary.withOpacity(0.5),
            ),
          ),
          gridData: FlGridData(
            getDrawingHorizontalLine: (value) {
              return FlLine(
                color: AppColors.secondary.withOpacity(0.5),
                strokeWidth: 1,
              );
            },
            getDrawingVerticalLine: (value) {
              return FlLine(
                color: AppColors.secondary.withOpacity(0.5),
                strokeWidth: 1,
                dashArray: [2, 2],
              );
            },
          ),
          lineBarsData: [
            LineChartBarData(
              dotData: FlDotData(
                show: false,
              ),
              isCurved: true,
              color: AppColors.violet,
              barWidth: 2,
              belowBarData: BarAreaData(
                show: true,
                color: AppColors.violet.withOpacity(0.35),
                applyCutOffY: true,
                cutOffY: 0,
              ),
              spots: [
                FlSpot(0, double.parse(data[0].maxTemp!.toString())),
                FlSpot(1, double.parse(data[1].maxTemp!.toString())),
                FlSpot(2, double.parse(data[2].maxTemp!.toString())),
                FlSpot(3, double.parse(data[3].maxTemp!.toString())),
                FlSpot(4, double.parse(data[4].maxTemp!.toString())),
                FlSpot(5, double.parse(data[5].maxTemp!.toString())),
                FlSpot(6, double.parse(data[6].maxTemp!.toString())),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    Widget text;
    switch (value.toInt()) {
      case 0:
        text = Text(data[0].date!, style: AppTextStyles.chartTitle);
        break;
      case 1:
        text = Text(data[1].date!, style: AppTextStyles.chartTitle);
        break;
      case 2:
        text = Text(data[2].date!, style: AppTextStyles.chartTitle);
        break;
      case 3:
        text = Text(data[3].date!, style: AppTextStyles.chartTitle);
        break;
      case 4:
        text = Text(data[4].date!, style: AppTextStyles.chartTitle);
        break;
      case 5:
        text = Text(data[5].date!, style: AppTextStyles.chartTitle);
        break;
      case 6:
        text = Text(data[6].date!, style: AppTextStyles.chartTitle);
        break;
      default:
        text = const Text('', style: AppTextStyles.chartTitle);
        break;
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: text,
    );
  }

  Widget rightTitleWidgets(double value, TitleMeta meta) {
    Widget text;
    switch (value.toInt()) {
      case 0:
        text = const Text('0°', style: AppTextStyles.chartTitle);
        break;
      case 5:
        text = const Text('5°', style: AppTextStyles.chartTitle);
        break;
      case 10:
        text = const Text('10°', style: AppTextStyles.chartTitle);
        break;
      case 15:
        text = const Text('15°', style: AppTextStyles.chartTitle);
        break;
      case 20:
        text = const Text('20°', style: AppTextStyles.chartTitle);
        break;
      case 25:
        text = const Text('25°', style: AppTextStyles.chartTitle);
        break;
      case 30:
        text = const Text('30°', style: AppTextStyles.chartTitle);
        break;
      case 35:
        text = const Text('35°', style: AppTextStyles.chartTitle);
        break;
      default:
        text = const Text('', style: AppTextStyles.chartTitle);
        break;
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: text,
    );
  }
}
