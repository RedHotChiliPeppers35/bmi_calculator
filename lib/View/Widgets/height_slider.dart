import 'package:bmi_calculator/Controller/constants.dart';
import 'package:bmi_calculator/main.dart';
import 'package:flutter/material.dart';

class SliderBar extends StatefulWidget {
  SliderBar({
    super.key,
  });

  @override
  State<SliderBar> createState() => _SliderBarState();
}

class _SliderBarState extends State<SliderBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width * 0.9,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: unselectedContainer,
        ),
        height: MediaQuery.of(context).size.height * 0.2,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Height: ${calc.height.toInt().toString()}cm",
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            Slider(
              label: calc.height.toString(),
              thumbColor: Colors.redAccent,
              min: 130,
              max: 215,
              value: calc.height.toDouble(),
              onChanged: (value) {
                setState(() {
                  calc.height = value.toInt();
                });
              },
            ),
          ],
        ));
  }
}
