import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/favorite_controller.dart';

class FavoriteScreen extends StatelessWidget {
  final FavoriteController favoriteController = Get.find<FavoriteController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Favorites"),
      ),
      body: Obx(() {
        if (favoriteController.favoriteProducts.isEmpty) {
          return const Center(child: Text("لا توجد منتجات في المفضلة"));
        }

        return ListView.builder(
          itemCount: favoriteController.favoriteProducts.length,
          itemBuilder: (context, index) {
            var product = favoriteController.favoriteProducts[index];
            return Card(
              margin: const EdgeInsets.all(8),
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.network(product.image ?? "",
                          width: 100, height: 100, fit: BoxFit.cover),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            product.title ?? "بدون عنوان",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 8),
                          Text(
                              "\$${product.price?.toStringAsFixed(2) ?? "0.00"}"),
                        ],
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.remove_circle, color: Colors.red),
                      onPressed: () {
                        favoriteController.removeFromFavorites(product);
                      },
                    ),
                    IconButton(
                      icon: const Icon(Icons.info),
                      onPressed: () {
                        Get.toNamed('/details', arguments: product);
                      },
                    ),
                  ],
                ),
              ),
            );
          },
        );
      }),
    );
  }
}
