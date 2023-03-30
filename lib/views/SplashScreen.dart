import 'package:flutter/material.dart';
import 'package:yaya_food/config/config.dart';
import 'package:yaya_food/config/function.dart';
import 'package:yaya_food/widgets/textField.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Container(
              height: height(context),
              width: width(context),
              decoration: BoxDecoration(
                image: DecorationImage(
                    colorFilter: ColorFilter.mode(
                      Color.fromARGB(255, 255, 255, 255).withOpacity(0.05),
                      BlendMode.modulate,
                    ),
                    image: AssetImage(
                      Config.asset.backgrougImage,
                    ),
                    fit: BoxFit.cover),
                color: Colors.white.withOpacity(1),
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 10,
                  ),
                  Container(
                    height: 250,
                    width: 250,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(Config.asset.logo),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Text(
                    'changement...',
                    style: TextStyle(
                        color: Config.colors.primaryColor,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
