import 'package:bmi_calculator/Controller/constants.dart';
import 'package:flutter/material.dart';

class IncreaseDecreaseRow extends StatefulWidget {
  const IncreaseDecreaseRow({super.key});

  @override
  State<IncreaseDecreaseRow> createState() => _IncreaseDecreaseRowState();
}

class _IncreaseDecreaseRowState extends State<IncreaseDecreaseRow> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.9,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.4,
            height: MediaQuery.of(context).size.height * 0.2,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.black12),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Weight", style: style),
                  Text(
                    calc.weight.toString(),
                    style: style2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextButton(
                        onPressed: () {
                          setState(() {
                            calc.weight++;
                            calc.changeWeight(calc.weight);
                          });
                        },
                        child: const CircleAvatar(
                          child: Icon(Icons.add),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            calc.weight--;
                          });
                        },
                        child: const CircleAvatar(
                          child: Icon(Icons.remove),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.4,
            height: MediaQuery.of(context).size.height * 0.2,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.black12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Age",
                  style: style,
                ),
                Text(
                  calc.age.toString(),
                  style: style2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextButton(
                        onPressed: () {
                          setState(() {
                            calc.age++;
                          });
                        },
                        child: const CircleAvatar(child: Icon(Icons.add))),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          calc.age--;
                        });
                      },
                      child: const CircleAvatar(
                        child: Icon(Icons.remove),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
