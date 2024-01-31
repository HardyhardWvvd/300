import 'package:flutter/material.dart';
import 'package:introflutter/constants.dart';
import 'package:introflutter/custombodywidget1.dart';
import 'package:introflutter/customtextfield.dart';

void main() {
  runApp(const MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController userNameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Trial"),
        backgroundColor: primaryColor,
        foregroundColor: appWhiteColor,
        automaticallyImplyLeading: true,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(50, 30, 50, 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/swas.png"),
              ],
            ),
            const SizedBox(height: 20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                customtitleText(
                  label: "Login Screen",
                  labelColor: primaryColor,
                  labelFontSize: 25,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const customtitleText(label: "Username"),
            customTextField(userFieldController: userNameController),
            const customtitleText(label: "Password"),
            customTextField(userFieldController: passwordController)
          ],
        ),
      ),
    );
  }
}
