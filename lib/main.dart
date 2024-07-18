import 'package:bmi_calculator/View/Screens/calculator_screen.dart';
import 'package:bmi_calculator/View/Screens/results_screen.dart';
import 'package:flutter/material.dart';

Color unselectedContainer = Colors.black12;
Color selectedContainer = Colors.black54;
void main() {
  runApp(BMICalculatorApp());
}

class BMICalculatorApp extends StatelessWidget {
  const BMICalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => CalculatorScreen(),
        "/results": (context) => ResultsScreen()
      },
    );
  }
}
