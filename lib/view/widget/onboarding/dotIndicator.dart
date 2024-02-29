import 'package:ecommerce/controller/onboarding/onboarding_controller.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class DotIndicator extends StatelessWidget {
  DotIndicator({
    super.key,
    // required this.controller,
  });
  // PageController controller;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerImp>(
        builder: (controller) => SmoothPageIndicator(
              controller: controller.pageController,
              count:4,
              effect: ExpandingDotsEffect(
                activeDotColor: AppColor.primary,
                dotColor: AppColor.grey,
                dotHeight: 10,
                dotWidth: 10,
                spacing: 6,
              ),
            ));
  }
}
