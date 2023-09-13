import 'package:flutter/material.dart';
import 'package:yaya_food/config/config.dart';
import 'package:yaya_food/config/function.dart';
import 'package:yaya_food/models/partenaire_model.dart';

class PartenaireItem extends StatefulWidget {
  final int index;
  final PartenairesModal partenairesModal;

  PartenaireItem({
    Key? key, // Ajout de la clé Key
    required this.index,
    required this.partenairesModal,
  }) : super(key: key);

  @override
  State<PartenaireItem> createState() => _PartenaireItemState();
}

class _PartenaireItemState extends State<PartenaireItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 370,
      width: width(context),
      decoration: BoxDecoration(
        color: Config.colors.whithColor,
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(134, 117, 117, 117),
            spreadRadius: 1,
            blurRadius: 4,
          ),
        ],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 15,
                  width: 15,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: widget.partenairesModal.etatRestaurant == "Ouvert"
                        ? Colors.green
                        : Colors.orange,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  widget.partenairesModal.etatRestaurant,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: widget.partenairesModal.etatRestaurant == "Ouvert"
                        ? Colors.green
                        : Colors.orange,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
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
                      ),
                      image: DecorationImage(
                        image: AssetImage(widget.partenairesModal.imageUrl),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:
                          widget.partenairesModal.categories.map((category) {
                        return Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Config.colors.whithColor,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: _buildIconForCategory(category),
                        );
                      }).toList(),
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
                    widget.partenairesModal.name,
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
                    children:
                        widget.partenairesModal.categories.map((category) {
                      return Container(
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
                          category,
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Config.colors.secondaryColor,
                          ),
                        ),
                      );
                    }).toList(),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildIconForCategory(String category) {
    IconData iconData;
    if (category == 'Dejeuner') {
      iconData = Icons.local_dining;
    } else if (category == 'Frites') {
      iconData = Icons.fastfood;
    } else if (category == 'Dinner') {
      iconData = Icons.restaurant;
    } else {
      iconData =
          Icons.category; // Icône par défaut si la catégorie n'est pas reconnue
    }

    return Icon(
      iconData,
      size: 25,
      color: Config.colors
          .secondaryColor, // Changez la couleur de l'icône selon vos préférences.
    );
  }
}
