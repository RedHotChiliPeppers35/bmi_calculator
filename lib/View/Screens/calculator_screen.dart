import "package:bmi_calculator/View/Widgets/gender_widget.dart";
import "package:bmi_calculator/View/Widgets/height_slider.dart";
import "package:bmi_calculator/View/Widgets/weight_age_widget.dart";
import "package:flutter/material.dart";
import "../../Controller/constants.dart";

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GenderRow(),
                SliderBar(),
                const IncreaseDecreaseRow(),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.redAccent),
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        calc.calculateBMI();
                      });
                      Navigator.pushNamed(context, "/login_signup_page");
                    },
                    child: Text(
                      "Calculate",
                      style: boldStyle,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
