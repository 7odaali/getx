import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import '../model/product_model.dart';

class FavoriteController extends GetxController {
  var favoriteProducts = <ProductModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    _loadFavorites();
  }

  Future<void> _loadFavorites() async {
    final prefs = await SharedPreferences.getInstance();
    final String? favoriteData = prefs.getString('favoriteProducts');

    if (favoriteData != null) {
      final List<dynamic> jsonList = json.decode(favoriteData);
      favoriteProducts.value = jsonList.map((item) => ProductModel.fromJson(item)).toList();
    }
  }

  Future<void> addToFavorites(ProductModel product) async {
    final prefs = await SharedPreferences.getInstance();

    if (!favoriteProducts.any((item) => item.id == product.id)) {
      favoriteProducts.add(product);

      final String favoriteJson = json.encode(favoriteProducts.map((item) => item.toJson()).toList());
      await prefs.setString('favoriteProducts', favoriteJson);
    }
  }

  Future<void> removeFromFavorites(ProductModel product) async {
    final prefs = await SharedPreferences.getInstance();

    favoriteProducts.removeWhere((item) => item.id == product.id);

    final String favoriteJson = json.encode(favoriteProducts.map((item) => item.toJson()).toList());
    await prefs.setString('favoriteProducts', favoriteJson);
  }
}
