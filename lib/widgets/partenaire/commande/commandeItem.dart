import 'package:flutter/material.dart';
import 'package:yaya_food/config/config.dart';
import 'package:yaya_food/config/function.dart';

class PartenaireCommandeItemState extends StatefulWidget {
  const PartenaireCommandeItemState({super.key});

  @override
  State<PartenaireCommandeItemState> createState() =>
      _PartenaireCommandeItemStateState();
}

class _PartenaireCommandeItemStateState
    extends State<PartenaireCommandeItemState> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width(context),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  alignment: AlignmentDirectional.centerStart,
                  child: Text(
                    "x 99",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: Container(
                  alignment: AlignmentDirectional.centerStart,
                  child: Text(
                    "Escargots Sautés + Attiéké",
                    style: TextStyle(),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  alignment: AlignmentDirectional.centerEnd,
                  child: Text(
                    "1 000 €",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Config.colors.secondaryColor,
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 25,
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
        ],
      ),
    );
  }
}
