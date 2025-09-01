import 'package:get/get.dart';

class MyController extends GetxController{

  static MyController get to => Get.find<MyController>();

  RxInt count = 0.obs;

  void countUp(){
    count.value++;
  }
}







