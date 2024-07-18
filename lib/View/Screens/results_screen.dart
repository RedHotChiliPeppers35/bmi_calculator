import 'dart:developer';

import 'package:bmi_calculator/Controller/constants.dart';
import 'package:flutter/material.dart';

class ResultsScreen extends StatefulWidget {
  const ResultsScreen({super.key});

  @override
  State<ResultsScreen> createState() => _ResultsScreenState();
}

class _ResultsScreenState extends State<ResultsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 100,
                ),
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: calc.getColor()),
                  child: Column(
                    children: [
                      Text(
                        "Your BMI result is",
                        style: style,
                      ),
                      Text(
                        calc.bmi!,
                        style: style3,
                      ),
                      Text(
                        calc.getResults(),
                        style: style2,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  calc.getSuggestions(),
                  style: style,
                  textAlign: TextAlign.center,
                ),
                TextButton(
                  onPressed: () {
                    calc.restart();
                    Navigator.pushReplacementNamed(context, "/");
                  },
                  child: Container(
                      decoration: BoxDecoration(
                          color: Colors.redAccent,
                          borderRadius: BorderRadius.circular(20)),
                      width: MediaQuery.of(context).size.width,
                      height: 75,
                      child: Center(
                        child: Text(
                          "Re-Calculate",
                          style: style,
                        ),
                      )),
                ),
                const SizedBox(
                  height: 25,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
