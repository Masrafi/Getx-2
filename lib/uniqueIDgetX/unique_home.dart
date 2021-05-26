import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'my_controller_first.dart';

class UniqueHome extends StatelessWidget {
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
                id: 'textCount',
                builder: (controller) {
                  return Text(
                    "The value is ${controller.count}",
                    style: TextStyle(fontSize: 25),
                  );
                },
              ),
              GetBuilder<MyControllerFirst>(
                builder: (controller) {
                  return Text(
                    "The value is ${controller.count}",
                    style: TextStyle(fontSize: 25),
                  );
                },
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RaisedButton(
                    child: Text("Increment"),
                    onPressed: () {
                      myControllerFirst.increment();
                    },
                  ),
                  RaisedButton(
                    child: Text("Increment"),
                    onPressed: () {
                      myControllerFirst.decrement();
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
