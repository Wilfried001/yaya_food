import 'package:flutter/material.dart';
import 'package:yaya_food/config/config.dart';
import 'package:yaya_food/config/function.dart';
import 'package:yaya_food/models/partenaire_model.dart';
import 'package:yaya_food/views/partenaire/commandes/passage_en_caisse.dart';
import 'package:yaya_food/widgets/button.dart';
import 'package:yaya_food/widgets/filtreCategorie.dart';
import 'package:yaya_food/widgets/partenaire/plat/platPartenaireItem.dart';

class PartenairePage extends StatefulWidget {
  final PartenairesModal partenairesModal;

  const PartenairePage({
    super.key,
    required this.partenairesModal,
  });

  @override
  State<PartenairePage> createState() => _PartenairePageState();
}

class _PartenairePageState extends State<PartenairePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: CButton(
        title: "Commander",
        width: width(context) * 0.92,
        onPressed: () {
          route(
            context,
            PassageEnCaisse(),
          );
        },
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(
          color: Config.colors.secondaryColor,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 15, right: 5),
            child: InkWell(
              onTap: () {
                // route(context, NotificationsPage());
              },
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: Icon(
                      Icons.shopping_basket_outlined,
                      color: Config.colors.secondaryColor,
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Container(
                      height: 16,
                      width: 16,
                      decoration: BoxDecoration(
                        color: Config.colors.secondaryColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        "1",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 10,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
        title: Text(
          widget.partenairesModal.name,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: Config.colors.secondaryColor,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: width(context) * 0.8,
                    child: Text(
                      widget.partenairesModal.name,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Config.colors.secondaryColor,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Config.colors.secondaryColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.favorite,
                              size: 30,
                              color: Config.colors.whithColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: FiltreCetegorieFood(),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  PlatPartenaireItem(),
                  PlatPartenaireItem()
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
