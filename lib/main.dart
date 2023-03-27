import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yaya_food/views/SplashScreen.dart';
import 'package:yaya_food/views/first_page.dart';
import 'package:yaya_food/widgets/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "Montserrat",
        primarySwatch: Colors.blue,
      ),
      home: const SplashWidget(
        nextPage: FirstPage(),
        child: SplashScreen(),
      ),
    );
  }
}
