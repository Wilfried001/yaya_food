import 'package:flutter/material.dart';
import 'package:yaya_food/config/config.dart';

class SlideDots extends StatelessWidget {
  bool isActive;
  SlideDots(this.isActive);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal: 10),
      height: isActive ? 12 : 8,
      width: isActive ? 12 : 8,
      decoration: BoxDecoration(
        color: isActive ? Config.colors.primaryColor : Config.colors.grayColor,
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
    );
  }
}
