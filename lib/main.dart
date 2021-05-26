import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_part2/service/service.dart';
import 'package:getx_part2/service/service_home.dart';
import 'package:getx_part2/simpleStatemanagement/simple_home.dart';
import 'package:getx_part2/uniqueIDgetX/unique_home.dart';
import 'package:getx_part2/worketsGetX/workers_home.dart';

import 'controllerLifecycleMethod/controller_home.dart';
import 'dependencyInjection/dependency_home.dart';
import 'intennationalizationGetX/inter_home.dart';

void main() {
  runApp(DependencyHome());
}

//Service
/*Future<void> main() async {
  await initServices();
  runApp(ServiceHome());
}

Future<void> initServices() async {
  print("starting services ...");
  await Get.putAsync<Service>(() async => await Service());
  print("All services stasted ...");
}*/
