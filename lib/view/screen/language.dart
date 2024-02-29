import 'package:ecommerce/core/constant/routes.dart';
import 'package:ecommerce/core/localization/changeLocal.dart';
import 'package:ecommerce/view/widget/language/custombuttonlang.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Language extends GetView<LocalController> {
  Language({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      margin: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '1'.tr,
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.black, fontSize: 16),
          ),
          CustomButtonLang(
            textButton: 'Arabic'.tr,
            onPressed: () {
              controller.changeLang('ar');
              Get.toNamed(AppRoutes.onboarding);
            },
          ),
          CustomButtonLang(
            textButton: 'English'.tr,
             onPressed: () {
              controller.changeLang('en');
              Get.toNamed(AppRoutes.onboarding);
            },
          ),
        ],
      ),
    ));
  }
}
