import 'package:flutter/material.dart';
import 'package:yaya_food/config/config.dart';
import 'package:yaya_food/models/slide.dart';

class SlideItem extends StatelessWidget {
  final int index;
  SlideItem(this.index);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(slideList[index].imageUrl),
        SizedBox(
          height: 20,
        ),
        Text(
          slideList[index].title,
          style: TextStyle(
              fontSize: 18,
              color: Config.colors.textColor,
              fontWeight: FontWeight.w700),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          slideList[index].description,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
