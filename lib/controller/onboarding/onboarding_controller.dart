import 'package:ecommerce/core/constant/routes.dart';
import 'package:ecommerce/core/services/service.dart';
import 'package:ecommerce/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class OnBoardingController extends GetxController {
  next();
  onPageChanged(int index);
}

class OnBoardingControllerImp extends OnBoardingController {
  int currentPage = 0;
  late PageController pageController;
  MyServices myServices = Get.find();

  @override
  next() {
    currentPage++;

    if (currentPage > onBoardingList.length - 1) {
      myServices.sharedPreferences.setString('step', '1');
      Get.offAllNamed(AppRoutes.login);
    } else {
      pageController.animateToPage(currentPage,
          duration: const Duration(milliseconds: 900), curve: Curves.easeInOut);
    }
  }

  @override
  onPageChanged(int index) {
    currentPage = index;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}
