import 'package:flutter/material.dart';
import 'package:yaya_food/config/config.dart';
import 'package:yaya_food/config/function.dart';

class PlatPartenaireItem extends StatefulWidget {
  const PlatPartenaireItem({super.key});

  @override
  State<PlatPartenaireItem> createState() => _PlatPartenaireItemState();
}

class _PlatPartenaireItemState extends State<PlatPartenaireItem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 200,
          width: width(context),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage(
                Config.asset.cesar,
              ),
              fit: BoxFit.contain,
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "Légumes grillés☀️",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Config.colors.secondaryColor,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "Tomates / Champignons /Aubergines",
          style: TextStyle(
            color: Config.colors.secondaryColor,
            fontSize: 12,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '2 Commentaires',
              style: TextStyle(
                fontSize: 12,
                color: Config.colors.secondaryColor,
              ),
            ),
            Text(
              "5.00 €",
              style: TextStyle(
                  color: Config.colors.primaryColor,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Config.colors.backgroundTextField2),
              child: Icon(
                Icons.add,
                color: Config.colors.primaryColor,
              ),
            ),
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Config.colors.backgroundTextField2),
              child: Icon(
                Icons.remove,
                color: Config.colors.primaryColor,
              ),
            ),
          ],
        ),
        Divider(
          height: 50,
        )
      ],
    );
  }
}
