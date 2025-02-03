import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../model/product_model.dart';

class ProductController extends GetxController {
  var isLoading = true.obs;
  var productList = <ProductModel>[].obs;

  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  Future<void> fetchProducts() async {
    try {
      isLoading.value = true;
      const String apiUrl = "https://fakestoreapi.com/products";

      final response = await http.get(Uri.parse(apiUrl));
      print(response.body);
      if (response.statusCode == 200) {
        final List<dynamic> jsonData = json.decode(response.body);
        print(" تم تحليل JSON بنجاح. عدد العناصر: ${jsonData.length}");

        final List<ProductModel> fetchedProducts = jsonData.map((item) {
          final ProductModel product = ProductModel.fromJson(item);
          print("تم إنشاء كائن ProductModel: ${product.title}");

          return product;
        }).toList();
        productList.value = fetchedProducts;
      } else {
        Get.snackbar(
            "خطأ", "فشل تحميل البيانات (رمز الحالة: ${response.statusCode})");
      }
    } catch (e) {
      final String errorMessage = "حدث خطأ أثناء تحميل البيانات: $e";
      Get.snackbar("خطأ", errorMessage);
    } finally {
      isLoading.value = false;
    }
  }
}
