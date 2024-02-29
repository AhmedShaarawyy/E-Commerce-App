import 'package:ecommerce/controller/auth/successsignup_controller.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/core/constant/imageasset.dart';
import 'package:ecommerce/view/widget/auth/customButtonAuth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SucessSignUp extends StatelessWidget {
  const SucessSignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SuccessSignupControllerImp controller =
        Get.put(SuccessSignupControllerImp());
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(0),
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    " Success",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black45,
                      fontWeight: FontWeight.w100,
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 60,
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.4,
                      child: Image.asset(
                        AppImageAssets.successLogin,
                        fit: BoxFit.contain,
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      "Successfuly registered",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 70),
                      child: CustomButtonAuth(
                        text: 'Back to Login',
                        backgroundColor:
                            MaterialStatePropertyAll(AppColor.primary),
                        onPressed: () {
                          controller.goToLogin();
                        },
                      ),
                    ),
                    const SizedBox(height: 16),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
