import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'my_controller_first.dart';

class WorkersHome extends StatelessWidget {
  MyControllerFirst myControllerFirst =
      Get.put(MyControllerFirst()); //init: MyController(), use na krle

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Workerse"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RaisedButton(
                child: Text("Increment"),
                onPressed: () {
                  myControllerFirst.increment();
                },
              ),
              Padding(
                padding: EdgeInsets.all(16),
                child: TextField(
                  onChanged: (val) {
                    myControllerFirst.increment();
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
