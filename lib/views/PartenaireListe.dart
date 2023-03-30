import 'package:flutter/material.dart';
import 'package:yaya_food/config/config.dart';
import 'package:yaya_food/config/function.dart';
import 'package:yaya_food/widgets/textField.dart';

class PartenaireListe extends StatelessWidget {
  const PartenaireListe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            const EdgeInsets.only(top: 30, left: 15, right: 15, bottom: 15),
        child: Column(
          children: [
            Row(
              children: <Widget>[
                Expanded(
                    flex: 5,
                    child: CtextField(
                      prefixIcon: Icon(
                        Icons.search,
                      ),
                      raduis: 10,
                      hint: "Recherches...",
                    )),
                SizedBox(width: 5),
                Expanded(
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Config.colors.backgroundTextField,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(Icons.filter_alt_outlined),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'La liste de nos partenaires',
              style: TextStyle(
                color: Config.colors.secondaryColor,
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 310,
              width: width(context),
              decoration: BoxDecoration(
                color: Config.colors.whithColor,
                boxShadow: [
                  BoxShadow(
                      color: Color.fromARGB(134, 117, 117, 117),
                      spreadRadius: 1,
                      blurRadius: 15),
                ],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 180,
                      decoration: BoxDecoration(
                        color: Config.colors.primaryColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: width(context) * 0.65,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(5),
                                topRight: Radius.circular(20),
                                bottomLeft: Radius.circular(5),
                                bottomRight: Radius.circular(20),
                              ), //BorderRadius.Only
                              image: DecorationImage(
                                image: AssetImage(Config.asset.pokawa),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              children: [
                                Container(
                                  height: 55,
                                  width: 55,
                                  decoration: BoxDecoration(
                                      color: Config.colors.whithColor,
                                      borderRadius: BorderRadius.circular(5)),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Pokawa - Poké Hawaïen 🍍- Grenoble",
                            style: TextStyle(
                              fontSize: 16,
                              color: Config.colors.secondaryColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                alignment: Alignment.center,
                                height: 50,
                                width: width(context) * 0.26,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Config.colors.whithColor,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromARGB(134, 117, 117, 117),
                                      spreadRadius: 0,
                                      blurRadius: 10,
                                    ),
                                  ],
                                ),
                                child: Text(
                                  "Dejeuner",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                height: 50,
                                width: width(context) * 0.26,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Config.colors.whithColor,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromARGB(134, 117, 117, 117),
                                      spreadRadius: 0,
                                      blurRadius: 10,
                                    ),
                                  ],
                                ),
                                child: Text(
                                  "Frites",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                height: 50,
                                width: width(context) * 0.26,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Config.colors.whithColor,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromARGB(134, 117, 117, 117),
                                      spreadRadius: 0,
                                      blurRadius: 10,
                                    ),
                                  ],
                                ),
                                child: Text(
                                  "Dinner",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
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
