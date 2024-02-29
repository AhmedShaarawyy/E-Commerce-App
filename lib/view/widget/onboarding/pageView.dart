import 'package:ecommerce/controller/onboarding/onboarding_controller.dart';

import 'package:ecommerce/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class customPageView extends GetView<OnBoardingControllerImp> {
  customPageView({super.key, });
  //PageController controller;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        onPageChanged: (value) {
          print(value);
          controller.onPageChanged(value);
        },
        controller: controller.pageController,
        itemCount: onBoardingList.length,
        itemBuilder: (context, i) => Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Text(onBoardingList[i].title!,
                    style: Theme.of(context).textTheme.headlineMedium),
                SizedBox(
                  height: 80,
                ),
                Image.asset(
                  onBoardingList[i].image!,
                  width: 200,
                  height: 200,
                  fit: BoxFit.fill,
                ),
                SizedBox(
                  height: 80,
                ),
                Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: Text(
                    onBoardingList[i].body!,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                )
              ],
            ));
  }
}
