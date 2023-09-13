import 'package:flutter/material.dart';
import 'package:yaya_food/config/config.dart';

class SlideDots extends StatelessWidget {
  bool isActive;
  SlideDots(this.isActive, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        margin: const EdgeInsets.symmetric(horizontal: 10),
        height: isActive ? 8 : 10,
        width: isActive ? 18 : 10,
        decoration: BoxDecoration(
          color:
              isActive ? Config.colors.primaryColor : Config.colors.grayColor,
          borderRadius: const BorderRadius.all(Radius.circular(12)),
        ),
      ),
    );
  }
}
