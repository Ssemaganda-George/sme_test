import 'package:flutter/material.dart';
import 'package:charify/utils/constants.dart'; // Import SvgPicture from flutter_svg package
import 'package:charify/screens/welcome_screen.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => WelcomeScreen()),
      );
    });

    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Center(
        child: Image.asset(
          "assets/images/charify.png", // Update the path to your PNG image
          height: 150.0,
        ),
      ),
    );
  }
}
