import 'package:flutter/material.dart';

class ButtonFilled extends StatelessWidget {
  final Color backgroundColor;
  final Color labelColor;
  final String label;
  final double height, width, borderRadius;
  const ButtonFilled({
    super.key,
    required this.label,
    required this.height,
    required this.width,
    required this.borderRadius,
    required this.backgroundColor,
    required this.labelColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: labelColor,
          fontSize: MediaQuery.of(context).size.width / 60,
        ),
      ),
    );
  }
}
