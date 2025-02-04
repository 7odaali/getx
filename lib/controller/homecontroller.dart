import 'package:get/get.dart';

class HomeController extends GetxController{

  int count1=0;
/*
  int count2=0;
*/

  void incrementOne(){
    count1++;
     update();
  }
  /*void incrementTwo(){
    count2++;
     update();
  }*/
  void decrementOne(){
    count1--;
   update();
  }
  /*void decrementTwo(){
    count2--;
   update();
  }
  int get sum=> count1+count2;*/
  @override
  void onInit() {
    super.onInit();
    print("Controller Initialized");
  }

  @override
  void onReady() {
    super.onReady();
    print("Controller is ready");
  }
  @override
  void onClose() {
    print("Controller disposed");
    super.onClose();
  }
}