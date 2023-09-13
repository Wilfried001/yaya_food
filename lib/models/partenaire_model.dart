import 'package:yaya_food/config/config.dart';

class PartenairesModal {
  final String imageUrl;
  final String name;
  final List<String> categories;
  final String etatRestaurant;

  PartenairesModal({
    required this.imageUrl,
    required this.name,
    required this.categories,
    required this.etatRestaurant,
  });
}

final List<String> allCategories1 = ['Dejeuner', 'Frite', 'Dinner'];
final List<String> allCategories2 = ['Dejeuner', 'Frite', 'Dinner'];
final List<String> allCategories3 = ['Dejeuner', 'Frite', 'Dinner'];

final partenaireList = [
  PartenairesModal(
    imageUrl: Config.asset.pokawa,
    name: 'Pokawa 1 - Poké Hawaïen 🍍- Grenoble',
    categories: allCategories1,
    etatRestaurant: 'Fermer',
  ),
  PartenairesModal(
    imageUrl: Config.asset.image,
    name: 'Pokawa 2 - Poké Hawaïen 🍍- Grenoble',
    categories: allCategories1,
    etatRestaurant: 'Ouvert',
  ),
  PartenairesModal(
    imageUrl: Config.asset.cesar,
    name: 'Pokawa 3 - Poké Hawaïen 🍍- Grenoble',
    categories: allCategories1,
    etatRestaurant: 'Ouvert',
  ),
  PartenairesModal(
    imageUrl: Config.asset.image,
    name: 'Pokawa 4 - Poké Hawaïen 🍍- Grenoble',
    categories: allCategories1,
    etatRestaurant: 'Fermer',
  ),
];
