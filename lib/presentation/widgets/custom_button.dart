import 'package:flutter/material.dart';
import 'package:weather/styles/app_decorations.dart';

class CustomButton extends StatefulWidget {
  final VoidCallback callback;
  final IconData icon;

  const CustomButton({
    required this.callback,
    required this.icon,
    super.key,
  });

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 42.0,
      width: 42.0,
      child: ElevatedButton(
        style: AppDecorations.buttonStyle,
        onPressed: () {
          setState(() {
            widget.callback();
          });
        },
        child: Icon(widget.icon),
      ),
    );
  }
}
