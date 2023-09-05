import 'package:flutter/material.dart';

class CollegeMaterialScreen extends StatelessWidget {
  final String collegeName;
  final int year;
  const CollegeMaterialScreen({
    super.key,
    required this.collegeName,
    required this.year,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Material Screen $collegeName $year"),
      ),
    );
  }
}
