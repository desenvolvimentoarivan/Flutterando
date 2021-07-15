import 'package:flutter/cupertino.dart';
import 'package:herois_favoritos/model/hero_model.dart';

class HerosController extends ChangeNotifier {
  List<HeroModel> heros = [
    HeroModel(name: 'Thor'),
    HeroModel(name: 'Hulk'),
    HeroModel(name: 'Batman'),
    HeroModel(name: 'Super Man'),
  ];

  chechFavorite(HeroModel heroModel) {
    heroModel.isFavorit = !heroModel.isFavorit;
    notifyListeners();
  }
}
