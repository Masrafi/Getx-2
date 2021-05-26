import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'message.dart';
import 'my_controller_first.dart';

class InterHome extends StatelessWidget {
  MyControllerFirst myControllerFirst =
      Get.put(MyControllerFirst()); //init: MyController(), use na krle

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Messages(),
      locale: Locale('en', 'US'),
      fallbackLocale: Locale("en", "US"),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Internation"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'hello'.tr,
                style: TextStyle(fontSize: 25, color: Colors.purple),
              ),
              RaisedButton(
                child: Text("Bangla"),
                onPressed: () {
                  myControllerFirst.changeLanguage('bn', 'BD');
                },
              ),
              SizedBox(
                height: 15,
              ),
              RaisedButton(
                child: Text("Hindi"),
                onPressed: () {
                  myControllerFirst.changeLanguage('hi', 'IN');
                },
              ),
              SizedBox(
                height: 15,
              ),
              RaisedButton(
                child: Text("English"),
                onPressed: () {
                  myControllerFirst.changeLanguage('en', 'US');
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
