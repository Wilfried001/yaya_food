import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yaya_food/config/config.dart';

class SelectMoyenPayementYayaFood extends StatelessWidget {
  const SelectMoyenPayementYayaFood({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _showBottomSheet();
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.centerLeft,
              child: Icon(
                Icons.credit_card,
                size: 30,
                color: Config.colors.secondaryColor,
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "Sélectionnez un moyen de payement",
                style: TextStyle(
                  fontSize: 18,
                  color: Config.colors.grayColor,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Icon(
              Icons.arrow_right,
              size: 30,
              color: Config.colors.grayColor,
            ),
          )
        ],
      ),
    );
  }
}

void _showBottomSheet() {
  Get.bottomSheet(
    Padding(
      padding: EdgeInsets.all(8.0),
      child: Wrap(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 30, bottom: 10),
            child: Text(
              "Choisir un moyen de paiement",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: Config.colors.secondaryColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 70,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Icon(
                      Icons.payments_rounded,
                      size: 30,
                      color: Config.colors.secondaryColor,
                    ),
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Payer en espèces",
                      style: TextStyle(
                        fontSize: 18,
                        color: Config.colors.grayColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 35,
            child: Divider(),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 30),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Icon(
                      Icons.add_card,
                      size: 30,
                      color: Config.colors.secondaryColor,
                    ),
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Ajouter une nouvelle carte",
                      style: TextStyle(
                        fontSize: 18,
                        color: Config.colors.grayColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ),
    backgroundColor: Colors.white,
    elevation: 5.0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
  );
}
