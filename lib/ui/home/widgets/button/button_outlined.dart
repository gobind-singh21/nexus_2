import 'package:flutter/material.dart';

class ButtonOutlined extends StatelessWidget {
  final Color backgroundColor, labelColor, borderColor;
  final String label;
  final double height, width, borderRadius, borderWidth;
  const ButtonOutlined({
    super.key,
    required this.label,
    required this.height,
    required this.width,
    required this.borderRadius,
    required this.backgroundColor,
    required this.labelColor,
    required this.borderColor,
    required this.borderWidth,
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
        border: Border.all(
          color: borderColor,
          width: borderWidth,
        ),
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
