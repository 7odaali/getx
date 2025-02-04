import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getxcourse/view/pagefour.dart';
import 'package:getxcourse/view/pageone.dart';
import 'package:getxcourse/view/pagetwo.dart';

class Pagethree extends StatefulWidget {
  const Pagethree({super.key});

  @override
  State<Pagethree> createState() => _PagethreeState();
}

class _PagethreeState extends State<Pagethree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(  backgroundColor: Colors.blue,
        title: const Text("page three"),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child:MaterialButton(color: Colors.red,textColor: Colors.white,
                  onPressed: (){
                    Get.to(Pageone());
                  },
                  child:const Text("Page One")
              ),
            ),
            Center(
              child:MaterialButton(color: Colors.red,textColor: Colors.white,
                  onPressed: (){
                    Get.to(const Pagetwo());
                  },
                  child:const Text("Page Two")
              ),
            ),
            Center(
              child: MaterialButton(
                  color: Colors.red,
                  textColor: Colors.white,
                  onPressed: () {
                    Get.to( Pagefour());
                  },
                  child: const Text("Page four")),
            ),
            Center(
              child:MaterialButton(color: Colors.red,textColor: Colors.white,
                  onPressed: (){
                    Get.back();
                  },
                  child:const Text("Back")
              ),
            ),
          ],
        ),
      ),
    );
  }
}
