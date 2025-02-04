import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxcourse/view/details_screen.dart';
import 'package:getxcourse/view/favorite_screen.dart';
import 'package:getxcourse/view/home.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeScreen(), // الشاشة الأولى عند فتح التطبيق
    getPages: [
      GetPage(name: '/', page: () => HomeScreen()),
      GetPage(name: '/details', page: () => DetailsScreen()),
      GetPage(name: '/favorites', page: () => FavoriteScreen()),
    ],
  ));
}

/*
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_common/get_reset.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:getxcourse/local/local_controller.dart';
import 'package:getxcourse/view/home.dart';
import 'package:getxcourse/view/pageone.dart';
import 'package:getxcourse/view/pagetwo.dart';

import 'local/local.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
Get.put(MyLocaleController());
    return GetMaterialApp(locale: Get.deviceLocale,
      translations: MyLocale(),
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}



*/
/*getPages: [
        GetPage(name:'/pageone',page: ()=>Pageone()),
        GetPage(name:'/pagetwo',page: ()=>Pagetwo()),
      ],*/
