import 'package:get/get.dart';

class MyControllerFirst extends GetxController {
  var count = 0;
  void increment() {
    count++;
    update(['textCount']);
  }

  void decrement() {
    count--;
    update(['textCount']);
  }
}
