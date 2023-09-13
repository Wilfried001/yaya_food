import 'package:flutter/material.dart';
import 'package:yaya_food/config/config.dart';
import 'package:yaya_food/config/function.dart';
import 'package:yaya_food/models/partenaire_model.dart';
import 'package:yaya_food/views/partenaire/partenaire-page.dart';
import 'package:yaya_food/widgets/partenaire.dart';
import 'package:yaya_food/widgets/textField.dart';

class PartenaireListe extends StatelessWidget {
  const PartenaireListe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 30, left: 5, right: 5, bottom: 15),
        child: Column(
          children: [
            CtextField(
              prefixIcon: Icon(
                Icons.search,
              ),
              raduis: 10,
              hint: "Recherches...",
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Text(
                      'La liste de nos partenaires',
                      style: TextStyle(
                        color: Config.colors.secondaryColor,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: List.generate(partenaireList.length, (index) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: InkWell(
                            onTap: () {
                              route(
                                context,
                                PartenairePage(
                                  partenairesModal: partenaireList[index],
                                ),
                              );
                            },
                            child: PartenaireItem(
                              index: index,
                              partenairesModal: partenaireList[index],
                            ),
                          ),
                        );
                      }),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
