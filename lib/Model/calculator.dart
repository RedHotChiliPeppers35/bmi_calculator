import 'package:flutter/material.dart';

class CalculatorBrain {
  int height = 170;
  int weight = 60;
  int age = 30;
  String gender = "Female";

  String? bmi;
  double? bmiChecker;

  int changeHeight(int thatHeight) {
    height = thatHeight;
    return height;
  }

  int changeWeight(int thatWeight) {
    weight = thatWeight;
    return weight;
  }

  String changeGender(String thatGender) {
    gender = thatGender;
    return gender;
  }

  int changeAge(int thatAge) {
    age = thatAge;
    return age;
  }

  String getResults() {
    if (bmiChecker! > 30) {
      return "Obesity";
    } else if (bmiChecker! > 25) {
      return "Overweight";
    } else if (bmiChecker! > 18.5) {
      return "Normal";
    } else {
      return "Underweight";
    }
  }

  Color getColor() {
    if (bmiChecker! > 30) {
      return Colors.red;
    } else if (bmiChecker! > 25) {
      return Colors.orange;
    } else if (bmiChecker! > 18.5) {
      return Colors.green;
    } else {
      return Colors.orange;
    }
  }

  String getSuggestions() {
    if (bmiChecker! > 30) {
      return "Obesity level could cause: \n-High blood pressure\n-Higher levels of LDL cholesterol, which is widely considered bad cholesterol, lower levels of HDL cholesterol, considered to be good cholesterol in moderation, and high levels of triglycerides\n-Type II diabetes\n-Coronary heart disease\n-Stroke\n-Gallbladder disease\n-Osteoarthritis, a type of joint disease caused by breakdown of joint cartilage\n-Sleep apnea and breathing problems\n-Certain cancers (endometrial, breast, colon, kidney, gallbladder, liver)\n-Low quality of life\n-Mental illnesses such as clinical depression, anxiety, and others\n-Body pains and difficulty with certain physical functions\n-Generally, an increased risk of mortality compared to those with a healthy BMI";
    } else if (bmiChecker! > 25) {
      return "You have a higher than normal body weight. Try to exercise more.";
    } else if (bmiChecker! > 18.5) {
      return "You have a normal body weight. Good job!";
    } else {
      return "You have a lower than normal body weight. You can eat a bit more";
    }
  }

  void restart() {
    height = 170;
    weight = 60;
    age = 30;
    gender = "Female";
    bmi;
    bmiChecker;
  }

  void calculateBMI() {
    bmiChecker = (weight / (height * height * 0.01 * 0.01));
    bmi = bmiChecker?.toStringAsFixed(2);
  }
}
