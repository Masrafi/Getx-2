import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_part2/simpleStatemanagement/my_controller_first.dart';
import 'package:getx_part2/simpleStatemanagement/my_controller_second.dart';

class ImpleHome extends StatelessWidget {
  MyCOntrollerSecond myControllerSecond =
      Get.put(MyCOntrollerSecond()); //init: MyController(), use na krle

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Simple State Management"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //two way. 1. declear init: MyController(),
              //2. Get.put(MyController());

              // First way

              GetBuilder<MyControllerFirst>(
                init: MyControllerFirst(),
                builder: (controller) {
                  return Text(
                    "The value is ${controller.count}",
                    style: TextStyle(fontSize: 25),
                  );
                },
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RaisedButton(
                    child: Text("Increment"),
                    onPressed: () {
                      Get.find<MyControllerFirst>().increment();
                    },
                  ),
                  RaisedButton(
                    child: Text("decrement"),
                    onPressed: () {
                      Get.find<MyControllerFirst>().decrement();
                    },
                  ),
                ],
              ),

              // second way

              SizedBox(
                height: 30,
              ),
              GetBuilder<MyCOntrollerSecond>(
                builder: (controller) {
                  return Text(
                    //"The value is ${controller.count}",
                    "The value is ${myControllerSecond.count}",
                    style: TextStyle(fontSize: 25),
                  );
                },
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RaisedButton(
                    child: Text("Increment"),
                    onPressed: () {
                      myControllerSecond.increment();
                    },
                  ),
                  RaisedButton(
                    child: Text("decrement"),
                    onPressed: () {
                      myControllerSecond.decrement();
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
