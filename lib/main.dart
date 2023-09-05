import 'package:flutter/material.dart';
import 'package:nexus_2/routes/routes.dart';
import 'package:nexus_2/ui/college/college_material_screen.dart';
import 'package:nexus_2/ui/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nexus',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.grey),
        useMaterial3: true,
        fontFamily: 'Montserrat',
      ),
      home: HomeScreen(),
      initialRoute: Routes.homeRoute,
      routes: {
        Routes.homeRoute: (context) => HomeScreen(),
      },
      onGenerateRoute: (settings) {
        List<String> routeParts = settings.name!.split('/');
        String collegeName = routeParts[2];
        int year = int.tryParse(routeParts[3]) ?? 1;
        return MaterialPageRoute(
          builder: (context) =>
              CollegeMaterialScreen(collegeName: collegeName, year: year),
        );
      },
    );
  }
}
