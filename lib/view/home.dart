/*
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxcourse/controller/homecontroller.dart';
import 'package:getxcourse/local/local_controller.dart';
import 'package:getxcourse/view/pagefour.dart';
import 'package:getxcourse/view/pageone.dart';
import 'package:getxcourse/view/pagethree.dart';
import 'package:getxcourse/view/pagetwo.dart';

class Home extends StatelessWidget {
  Home({super.key});

  final  controller = Get.lazyPut(()=>HomeController(),fenix: true);

  @override
  Widget build(BuildContext context) {
    MyLocaleController controllerLang=Get.find();
    return Scaffold(
      appBar: AppBar(
        title:  Text("1".tr),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: MaterialButton(
                  color: Colors.red,
                  textColor: Colors.white,
                  onPressed: () {
                    controllerLang.changeLang("ar");
                  },
                  child:  Text("2".tr)),
            ),
            Center(
              child: MaterialButton(
                  color: Colors.red,
                  textColor: Colors.white,
                  onPressed: () {
                    controllerLang.changeLang("en");
                  },
                  child:  Text("3".tr)),
            ),
           */
/* Center(
              child: MaterialButton(
                  color: Colors.red,
                  textColor: Colors.white,
                  onPressed: () {
                    Get.to(()=>const Pagethree());
                  },
                  child: const Text("Page three")),
            ),
            Center(
              child: MaterialButton(
                  color: Colors.red,
                  textColor: Colors.white,
                  onPressed: () {
                    Get.to(()=> Pagefour());
                  },
                  child: const Text("Page four")),
            ),*/ /*

          ],
        ),
      ),
    );
  }
}
*/

/*
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/product_controller.dart';
import 'details_screen.dart';

class HomeScreen extends StatelessWidget {
  final ProductController productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Products"),
      ),
      body: Obx(() {
        if (productController.isLoading.value) {
          return const Center(child: CircularProgressIndicator());
        }
        return GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.85,
          ),
          itemCount: productController.productList.length,
          itemBuilder: (context, index) {
            var product = productController.productList[index];
            return Card(
              margin: const EdgeInsets.all(8),
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.network(product.image ?? "",
                          width: double.infinity,
                          height: 120,
                          fit: BoxFit.fill),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: const Icon(
                            Icons.favorite_border,
                            color: Colors.red,
                          ),
                          onPressed: () {
                            // ستضيف هنا الدالة لإضافة المنتج إلى المفضلة إذا رغبت.
                          },
                        ),
                        MaterialButton(
                          height: 50,
                          color: Colors.blue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          onPressed: () {
                            Get.toNamed('/details', arguments: product);
                          },
                          child: const Text(
                            "Product details",
                            style: TextStyle(color: Colors.white),
                          ),
                        )
                      ],
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
}*/
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/product_controller.dart';
import '../controller/favorite_controller.dart';


class HomeScreen extends StatelessWidget {
  final ProductController productController = Get.put(ProductController());
  final FavoriteController favoriteController = Get.put(FavoriteController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Products"),
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite),
            onPressed: () {
              Get.toNamed("/favorites");
            },
          ),
        ],
      ),
      body: Obx(() {
        if (productController.isLoading.value) {
          return const Center(child: CircularProgressIndicator());
        }

        return GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.85,
          ),
          itemCount: productController.productList.length,
          itemBuilder: (context, index) {
            var product = productController.productList[index];
            return Card(
              margin: const EdgeInsets.all(8),
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.network(product.image ?? "",
                          width: double.infinity,
                          height: 120,
                          fit: BoxFit.cover),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Obx(() {
                          bool isFavorite = favoriteController.favoriteProducts.any((item) => item.id == product.id);
                          return IconButton(
                            icon: Icon(
                              isFavorite ? Icons.favorite : Icons.favorite_border,
                              color: Colors.red,
                            ),
                            onPressed: () {
                              if (isFavorite) {
                                favoriteController.removeFromFavorites(product);
                              } else {
                                favoriteController.addToFavorites(product);
                              }
                            },
                          );
                        }),
                        MaterialButton(
                          height: 50,
                          color: Colors.blue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          onPressed: () {
                            Get.toNamed('/details', arguments: product);
                          },
                          child: const Text(
                            "Product details",
                            style: TextStyle(color: Colors.white),
                          ),
                        )
                      ],
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


