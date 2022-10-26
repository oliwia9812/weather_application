import 'package:flutter/material.dart';
import 'package:weather/styles/app_colors.dart';

typedef BoolCallback = void Function(bool showChart);

class CustomToggleButtons extends StatefulWidget {
  final BoolCallback callback;
  const CustomToggleButtons({required this.callback, super.key});

  @override
  State<CustomToggleButtons> createState() => _CustomToggleButtonsState();
}

class _CustomToggleButtonsState extends State<CustomToggleButtons> {
  late List<bool> _selections;
  bool changeShowChart = false;

  @override
  void initState() {
    _selections = [false, true];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ToggleButtons(
      borderColor: Colors.transparent,
      color: AppColors.secondary,
      fillColor: Colors.transparent,
      isSelected: _selections,
      selectedBorderColor: Colors.transparent,
      selectedColor: AppColors.violet,
      splashColor: Colors.transparent,
      children: [
        _buildButton(Icons.bar_chart),
        _buildButton(Icons.list),
      ],
      onPressed: (int index) {
        setState(() {
          for (int i = 0; i < _selections.length; i++) {
            _selections[i] = i == index;
          }

          switch (index) {
            case 0:
              changeShowChart = true;
              break;
            case 1:
              changeShowChart = false;
              break;
            default:
          }
          widget.callback(changeShowChart);
        });
      },
    );
  }

  Widget _buildButton(IconData icon) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: AppColors.primary,
      ),
      child: Icon(
        icon,
      ),
    );
  }
}
