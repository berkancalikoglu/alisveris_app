import 'package:alisveris_app/models/categories_model.dart';

import '../services/assets_manager.dart';

class AppConstants {
  static const String imageUrl = 'https://i.ibb.co/8r1Ny2n/20-Nike-Air-Force-1-07.png';

  static List<String> bannersImages = [AssetsManager.banner1, AssetsManager.banner2];

  static List<CategoriesModel> categoriesList = [
    CategoriesModel(
      id: "Phones",
      image: AssetsManager.mobiles,
      name: "Telefon",
    ),
    CategoriesModel(
      id: "Laptops",
      image: AssetsManager.pc,
      name: "Laptop",
    ),
    CategoriesModel(
      id: "Electronics",
      image: AssetsManager.electronics,
      name: "Elektronik",
    ),
    CategoriesModel(
      id: "Watches",
      image: AssetsManager.watch,
      name: "Saat",
    ),
    CategoriesModel(
      id: "Clothes",
      image: AssetsManager.fashion,
      name: "Giysi",
    ),
    CategoriesModel(
      id: "Shoes",
      image: AssetsManager.shoes,
      name: "Ayakkabı",
    ),
    CategoriesModel(
      id: "Books",
      image: AssetsManager.book,
      name: "Kitap",
    ),
    CategoriesModel(
      id: "Cosmetics",
      image: AssetsManager.cosmetics,
      name: "Kozmetik",
    ),
  ];
}
