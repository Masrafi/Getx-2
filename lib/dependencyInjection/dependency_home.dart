import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'my_controller_first.dart';

class DependencyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // MyControllerFirst myControllerFirst =
    //     Get.put(MyControllerFirst(), tag: 'instancel', permanent: true);

    //Get.lazyPut(() => MyControllerFirst(), tag: 'instancel', fenix: true);

    // Get.create<MyControllerFirst>(() => MyControllerFirst());

    Get.putAsync<MyControllerFirst>(() async => await MyControllerFirst());

    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Controller Lifecycle"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RaisedButton(
                child: Text("Click Me"),
                onPressed: () {
                  //Get.find<MyControllerFirst>(tag: 'instancel');
                  //Get.find<MyControllerFirst>();

                  Get.find<MyControllerFirst>().incrementCounter();
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
