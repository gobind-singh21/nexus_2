import 'package:flutter/material.dart';

class AppBarAction extends StatelessWidget {
  final String label;
  const AppBarAction({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween<double>(
        begin: 255,
        end: 0,
      ),
      duration: const Duration(
        milliseconds: 200,
      ),
      builder: (context, value, child) {
        return Container(
          alignment: Alignment.center,
          margin: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width / 50,
          ),
          height: MediaQuery.of(context).size.height / 20,
          width: MediaQuery.of(context).size.width / 15,
          decoration: BoxDecoration(
            borderRadius:
                BorderRadius.circular(MediaQuery.of(context).size.height),
            border: Border.all(
              color: Color.fromARGB(value.round(), 255, 255, 255),
              width: 2,
            ),
          ),
          child: Text(
            label,
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.width / 90,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
              decorationColor: Color.fromARGB(value.round(), 255, 255, 255),
              decorationThickness: 2,
              letterSpacing: 1.5,
            ),
            textAlign: TextAlign.center,
          ),
        );
      },
    );
  }
}
