import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/homecontroller.dart';

class Pagefour extends StatefulWidget {
  Pagefour({super.key});

  final HomeController extcontroller = Get.put(HomeController());

  @override
  State<Pagefour> createState() => _PagefourState();
}

class _PagefourState extends State<Pagefour> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Page Four"),
      ),
      body: ListView(
        children: [
          Center(
            child: GetBuilder<HomeController>(
              builder: (controller) {
                return Text("${controller.count1}");
              },
            ),
          ),
          Center(
            child: GetBuilder<HomeController>(
              builder: (controller) {
                return Text("${controller.count1}");
              },
            ),
          ),
          Center(
            child: GetBuilder<HomeController>(
              builder: (controller) {
                return Text("${controller.count1}");
              },
            ),
          ),
          Center(
            child: MaterialButton(
              color: Colors.red,
              textColor: Colors.white,
              onPressed: () {
                widget.extcontroller.incrementOne();
              },
              child: const Text("ADD ONE"),
            ),
          ),
          Center(
            child: MaterialButton(
              color: Colors.red,
              textColor: Colors.white,
              onPressed: () {
                widget.extcontroller.incrementOne();
              },
              child: const Text("ADD TWO"),
            ),
          ),
        ],
      ),
    );
  }
}
