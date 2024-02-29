import 'package:ecommerce/data/model/itemsmodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ProductDetailsController extends GetxController {}

class ProductDetailsControllerImp extends ProductDetailsController {
  late ItemsModel itemsModel;

  List<Map<String, dynamic>> colors = [
    {"color": const Color(0xFFF6625E), "active": "0"},
    {"color": const Color(0xFF836DB8), "active": "0"},
    {"color": const Color(0xFFDECB9C), "active": "0"},
    {"color": Colors.white, "active": "1"},
  ];

  initialData() {
    itemsModel = Get.arguments['itemsmodel'];
  }

  @override
  void onInit() {
    initialData();
    super.onInit();
  }
}
