import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_part2/service/service.dart';

class ServiceHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Service"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RaisedButton(
                child: Text("Increment"),
                onPressed: () {
                  Get.find<Service>().incrementCounter();
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
