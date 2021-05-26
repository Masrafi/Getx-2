import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'my_controller_first.dart';

class ControlletHome extends StatelessWidget {
  MyControllerFirst myControllerFirst =
      Get.put(MyControllerFirst()); //init: MyController(), use na krle

  @override
  Widget build(BuildContext context) {
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
              GetBuilder<MyControllerFirst>(
                //initState: (data) => myControllerFirst.increment(),
                //dispose: (_) => myControllerFirst.cleanUpTast(),
                builder: (controller) {
                  return Text(
                    "The value is ${controller.count}",
                    style: TextStyle(fontSize: 25),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
