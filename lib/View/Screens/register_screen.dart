import "package:bmi_calculator/Controller/constants.dart";
import "package:bmi_calculator/View/Screens/results_screen.dart";
import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";

class LoginSignUpScreen extends StatefulWidget {
  const LoginSignUpScreen({super.key});

  @override
  State<LoginSignUpScreen> createState() => _LoginSignUpScreenState();
}

class _LoginSignUpScreenState extends State<LoginSignUpScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController loginController = TextEditingController();

    @override
    void dispose() {
      loginController.dispose();
      super.dispose();
    }

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        foregroundColor: Colors.white,
        backgroundColor: backgroundColor,
      ),
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Please provide your e-mail to see your results",
                  style: style,
                  textAlign: TextAlign.center,
                ),
              ),
              const Image(
                image: AssetImage("images/register.png"),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                width: MediaQuery.of(context).size.width * 0.7,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                  child: TextField(
                    controller: loginController,
                    decoration: const InputDecoration(
                        hintText: "Your E-mail", border: InputBorder.none),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                height: 10,
              ),
              TextButton(
                onPressed: () {
                  if (loginController.text.isNotEmpty) {
                    Navigator.of(context).pushReplacement(CupertinoPageRoute(
                      builder: (context) => const ResultsScreen(),
                    ));
                  } else {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return CupertinoAlertDialog(
                          actions: [
                            TextButton(
                                onPressed: () => Navigator.pop(context),
                                child: const Text("Okay"))
                          ],
                          content: const Text(
                            "You need to enter \nyour e-mail first",
                            style: TextStyle(fontSize: 18),
                          ),
                        );
                      },
                    );
                  }
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      "Continue",
                      style: style,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
