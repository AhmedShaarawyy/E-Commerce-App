import 'package:ecommerce/core/services/service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocalController extends GetxController {
  Locale? language;

  MyServices myServices = Get.find();

  changeLang(langcode) {
    Locale locale = Locale(langcode);
    myServices.sharedPreferences.setString('lang', langcode);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    String? sharedPrefLanguage = myServices.sharedPreferences.getString('lang');
    if (sharedPrefLanguage == 'ar') {
      language = const Locale('ar');
    } else if (sharedPrefLanguage == 'en') {
      language = const Locale('en');
    } else {
     language = Locale(Get.deviceLocale!.languageCode);
    }
    super.onInit();
  }
}
