import 'dart:async';
import 'package:flutter/material.dart';
import 'package:yaya_food/config/function.dart';

class SplashWidget extends StatelessWidget {
  const SplashWidget(
      {super.key,
      this.time = 200,
      required this.child,
      required this.nextPage});
  final int time;
  final Widget child, nextPage;

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: time), () {
      route(context, nextPage, close: true);
    });
    return child;
  }
}
