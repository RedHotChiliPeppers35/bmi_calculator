import "package:bmi_calculator/Controller/constants.dart";
import "package:bmi_calculator/main.dart";
import "package:flutter/material.dart";

class GenderRow extends StatefulWidget {
  GenderRow({
    super.key,
  });

  @override
  State<GenderRow> createState() => _GenderRowState();
}

class _GenderRowState extends State<GenderRow> {
  int selectedIndex = 1;

  void select(int containerIndex) {
    setState(() {
      selectedIndex = containerIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.9,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              select(1);
              setState(() {
                calc.gender = "Male";
              });
            },
            child: Container(
              width: MediaQuery.of(context).size.width * 0.4,
              height: MediaQuery.of(context).size.height * 0.2,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: selectedIndex == 1
                      ? selectedContainer
                      : unselectedContainer),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Female",
                      style: boldStyle,
                    ),
                    const Flexible(
                      child: Icon(
                        Icons.female,
                        color: Colors.white,
                        size: 100,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              select(2);
              setState(() {
                calc.gender = "Male";
              });
            },
            child: Container(
              width: MediaQuery.of(context).size.width * 0.4,
              height: MediaQuery.of(context).size.height * 0.2,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: selectedIndex == 2
                      ? selectedContainer
                      : unselectedContainer),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Male",
                      style: boldStyle,
                    ),
                    const Flexible(
                      child: Icon(
                        Icons.male,
                        color: Colors.white,
                        size: 100,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
