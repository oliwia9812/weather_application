import 'package:flutter/material.dart';

class Separator extends StatelessWidget {
  final double? width;
  final double? height;

  const Separator({
    this.height,
    this.width,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
    );
  }
}
