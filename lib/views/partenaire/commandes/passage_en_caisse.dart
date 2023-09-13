import 'package:flutter/material.dart';
import 'package:yaya_food/config/config.dart';
import 'package:yaya_food/config/function.dart';
import 'package:yaya_food/widgets/button.dart';
import 'package:yaya_food/widgets/methode_payement/selection_moyen_payement_yayaFood.dart';
import 'package:yaya_food/widgets/partenaire/commande/commandeItem.dart';

class PassageEnCaisse extends StatefulWidget {
  const PassageEnCaisse({super.key});

  @override
  State<PassageEnCaisse> createState() => _PassageEnCaisseState();
}

class _PassageEnCaisseState extends State<PassageEnCaisse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: CButton(
        title: "Valider ma commande",
        width: width(context) * 0.92,
        onPressed: () {
          route(
            context,
            PassageEnCaisse(),
          );
        },
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Config.colors.secondaryColor,
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          "Passage en caisse",
          style: TextStyle(
            fontSize: 16,
            color: Config.colors.secondaryColor,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Votre commande",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text("4 Produits de cher le nom du bar")
              ],
            ),
            SizedBox(
              height: 40,
            ),
            PartenaireCommandeItemState(),
            SizedBox(
              height: 35,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Moyen de paiement ",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                SelectMoyenPayementYayaFood()
              ],
            ),
          ],
        ),
      ),
    );
  }
}
