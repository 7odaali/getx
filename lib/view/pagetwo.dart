import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getxcourse/view/pagefour.dart';
import 'package:getxcourse/view/pageone.dart';
import 'package:getxcourse/view/pagethree.dart';

import '../controller/homecontroller.dart';

class Pagetwo extends StatefulWidget {
  const Pagetwo({super.key});

  @override
  State<Pagetwo> createState() => _PagetwoState();
}

class _PagetwoState extends State<Pagetwo> {

  final HomeController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(  backgroundColor: Colors.blue,
        title: const Text("page two"),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Center(
                child:
                    Text(
                      "${controller.count1}",
                      style: TextStyle(fontSize: 40),
                    ),
                ),
           ]
        ),
      ),
    );
  }
}
