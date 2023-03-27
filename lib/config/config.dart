import 'package:flutter/material.dart';

class Config {
  static final colors = _Color();
  static final asset = _Asset();
}

class _Color {
  final primaryColor = Color(0xFFEBC60A);
  final secondaryColor = Color(0xFF4D4C4C);
  final grayColor = Color(0xFFB1B1B1);
  final whithColor = Color(0xffFFFFFF);
  final textColor = Color(0xFF4D4C4C);
  final flouTextColor = Color.fromARGB(87, 77, 76, 76);
  final secondaryTextColor = Color.fromARGB(176, 77, 76, 76);
  final backgroundTextField = Color.fromARGB(87, 217, 217, 217);
  final textTextField = Color(0xffD9D9D9);
  final backgroundTextField2 = Color.fromARGB(57, 235, 198, 10);
  final blockBtn = Color.fromARGB(110, 235, 198, 10);
}

class _Asset {
  final logo = "assets/images/logo.png";
  final logo2 = "assets/images/logo_officuel.png";
  final backgrougImage = "assets/images/background.jpg";
}
