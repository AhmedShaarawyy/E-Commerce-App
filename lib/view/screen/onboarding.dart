import 'package:ecommerce/controller/onboarding/onboarding_controller.dart';
import 'package:ecommerce/core/constant/routes.dart';
import 'package:ecommerce/view/widget/onboarding/continueButton.dart';
import 'package:ecommerce/view/widget/onboarding/dotIndicator.dart';
import 'package:ecommerce/view/widget/onboarding/pageView.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoarding extends StatelessWidget {
  // final _controller = PageController();
  // int _continueCounter = 0;

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return Scaffold(
        body: SafeArea(
            child: Column(
      children: [
        Expanded(
            flex: 3,
            child: Stack(
              children: [
                customPageView(
                    //controller: _controller
                    ),
              ],
            )),
        Expanded(
            flex: 1,
            child: Column(
              children: [
                DotIndicator(
                    //  controller: _controller,
                    ),
                SizedBox(
                  height: 30,
                ),
                ContinueButton(),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: InkWell(
                    onTap: () {
                      Get.offAllNamed(AppRoutes.login);
                    },
                    child: Text('Skip',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w800)),
                  ),
                ),
              ],
            ))
      ],
    )));
  }
}
