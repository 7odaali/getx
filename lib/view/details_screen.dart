import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../model/product_model.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ProductModel? product = Get.arguments;
    if (product == null) {
      return Scaffold(
        appBar: AppBar(title: const Text("Product details")),
        body: const Center(
          child: Text("no data"),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(title: Text(product.title ?? "Product details")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  product.image ?? "",
                  height: 250,
                  width: double.infinity,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              product.title ?? "بدون عنوان",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "السعر: \$${product.price?.toStringAsFixed(2) ?? "0.00"}",
              style: const TextStyle(
                fontSize: 18,
                color: Colors.green,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              product.description ?? "لا يوجد وصف",
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                const Icon(Icons.star, color: Colors.amber),
                Text(
                    " ${product.rating?.rate?.toStringAsFixed(1) ?? "0.0"} (${product.rating?.count ?? 0} مراجعة)"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
