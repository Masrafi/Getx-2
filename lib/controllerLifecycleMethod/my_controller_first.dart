import 'package:get/get.dart';

class MyControllerFirst extends GetxController {
  var count = 0;
  void increment() async {
    await Future<int>.delayed(Duration(seconds: 5));
    this.count++;
    update();
  }

  void decrement() async {
    await Future<int>.delayed(Duration(seconds: 5));
    count--;
    update();
  }

  void cleanUpTast() {
    print("clean up task");
  }

  //better approchAlhamami buya bill basa vara 7 tarikhe diye dichiache. but dhobo dhobo kre akhno hyni dhuya
  @override
  void onInit() {
    print("Init called");
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
