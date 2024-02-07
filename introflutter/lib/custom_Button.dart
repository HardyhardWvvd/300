// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:introflutter/constants.dart';
import 'package:introflutter/custombodywidget1.dart';

class customButton extends StatelessWidget {
  final Color buttoncolor;
  final String buttonlabel;
  const customButton({
    super.key,
    required this.buttoncolor,
    required this.buttonlabel,
    required this.passwordController,
    required this.userNameController,
  });

  final TextEditingController userNameController;
  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        print("Button Clicked $(userNameController.text)");
      },
      child: customtitleText(
        label: buttonlabel,
        labelColor: appWhiteColor,
      ),
      style: ElevatedButton.styleFrom(backgroundColor: primaryColor, elevation: 10, padding: const EdgeInsets.all(15)),
      
    );
  }
}