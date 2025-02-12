import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxcourse/controller/homecontroller.dart';

class Pageone extends StatelessWidget {
  Pageone({super.key});

  final HomeController controller = Get.find();

/*
  final HomeController controller = Get.put(HomeController(),permanent: true);
*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("page one"),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: IconButton(
                    onPressed: () {
                      controller.incrementOne();
                    },
                    icon: const Icon(
                      Icons.add,
                      size: 40,
                    ),
                  ),
                ),
                Center(
                    child: GetBuilder<HomeController>(
                  builder: (controller) => Text(
                    "${controller.count1}",
                    style: const TextStyle(fontSize: 20),
                  ),
                )),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: IconButton(
                    onPressed: () {
                      controller.decrementOne();
                    },
                    icon: const Icon(
                      Icons.remove,
                      size: 40,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
