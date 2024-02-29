import 'package:ecommerce/controller/onboarding/onboarding_controller.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContinueButton extends GetView<OnBoardingControllerImp> {
  ContinueButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.circular(10.0), // Adjust the radius as needed
            ),
          ),
          minimumSize: MaterialStateProperty.all(Size(320, 48.0)),
          backgroundColor: MaterialStatePropertyAll(AppColor.primary),
        ),
        onPressed: () {
          controller.next();
        },
        child: Text(
          'Continue',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ));
  }
}
