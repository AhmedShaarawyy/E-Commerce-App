import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<void> alertExitApp() {
   Get.defaultDialog(
      title: "Warning",
      middleText: "Are you sure you want to exit this application",
      actions: [
        ElevatedButton(
          onPressed: () {
            exit(0);
          },
          child: Text('Confirm'),
        ),
        ElevatedButton(
          onPressed: () {
            Get.back();
          },
          child: Text('Cancel'),
        )
      ]);
  return Future.value(true);
}
