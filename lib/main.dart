import 'package:bmi_calculator/View/Screens/calculator_screen.dart';
import 'package:bmi_calculator/View/Screens/register_screen.dart';
import 'package:bmi_calculator/View/Screens/results_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Color unselectedContainer = Colors.black12;
Color selectedContainer = Colors.black54;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const BMICalculatorApp());
}

class BMICalculatorApp extends StatelessWidget {
  const BMICalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/calculator_page",
      routes: {
        "/login_signup_page": (context) => const LoginSignUpScreen(),
        "/calculator_page": (context) => const CalculatorScreen(),
        "/results_page": (context) => const ResultsScreen()
      },
    );
  }
}
