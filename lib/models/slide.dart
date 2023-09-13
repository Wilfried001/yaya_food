import 'package:yaya_food/config/config.dart';

class Slide {
  final String imageUrl;
  final String title;
  final String description;

  Slide({
    required this.imageUrl,
    required this.title,
    required this.description,
  });
}

final slideList = [
  Slide(
    imageUrl: Config.asset.imageSlide1,
    title: 'Un petit creux ?',
    description:
        'Yaya vous livre votre repas directement dans votre bar préféré',
  ),
  Slide(
    imageUrl: Config.asset.imageSlide2,
    title: 'Scanner le QR code',
    description:
        'Utiliser votre smartphone pour flasher le QR code sur votre table et découvrez la liste des restaurants sélectionnés par l\'établissement où vous êtes.',
  ),
  Slide(
    imageUrl: Config.asset.imageSlide1,
    title: 'Choississez votre repas',
    description:
        'Découvrez les menus de chaque restaurant et faites votre sélection.',
  ),
  Slide(
    imageUrl: Config.asset.imageSlide1,
    title: 'Paiement simplifié ',
    description:
        'Réglé directement avec votre application, partagez la note avec vos convives ou grand prince régalez tout le monde !',
  ),
  Slide(
    imageUrl: Config.asset.imageSlide1,
    title: 'Choississez votre repas',
    description:
        'Découvrez les menus de chaque restaurant et faites votre sélection.',
  ),
  Slide(
    imageUrl: Config.asset.imageSlide1,
    title: ' Recommandez une tournée',
    description: 'Votre repas est bientôt servi !',
  ),
];
