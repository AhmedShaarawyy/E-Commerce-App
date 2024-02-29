import 'package:ecommerce/controller/auth/signup_controller.dart';
import 'package:ecommerce/core/class/handlingdataview.dart';
import 'package:ecommerce/core/constant/imageasset.dart';
import 'package:ecommerce/core/functions/validinput.dart';
import 'package:ecommerce/view/widget/auth/customButtonAuth.dart';
import 'package:ecommerce/view/widget/auth/customheader.dart';
import 'package:ecommerce/view/widget/auth/customsocialcard.dart';
import 'package:ecommerce/view/widget/auth/customtextbodyauth.dart';
import 'package:ecommerce/view/widget/auth/customtextformauth.dart';
import 'package:ecommerce/view/widget/auth/customtextsignUporSignIn.dart';
import 'package:ecommerce/view/widget/auth/customtexttitleauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SignUpControllerImp());

    return Scaffold(
        body: GetBuilder<SignUpControllerImp>(
      builder: (controller) => HandlingDataRequest(statusRequest: controller.statusRequest, widget:  Container(
              margin: const EdgeInsets.all(20),
              child: Form(
                key: controller.formstate,
                child: ListView(
                  children: [
                    const CustomHeader(text: 'Sign Up'),
                    const SizedBox(
                      height: 20,
                    ),
                    const CustomTextTitleAuth(text: 'Register account'),
                    const SizedBox(
                      height: 10,
                    ),
                    const CustomTextBodyAuth(
                        body:
                            'Complete your details or continue \n with social media'),
                    const SizedBox(
                      height: 40,
                    ),
                    CustomTextFormAuth(
                      isNumber: false,
                      valid: (val) {
                        return validInput(val!, 3, 20, 'username');
                      },
                      hintText: 'Enter your username',
                      labelText: 'Username',
                      iconData: Icons.person_2_outlined,
                      mycontroller: controller.username,
                      obscureText: false,
                    ),
                    CustomTextFormAuth(
                      isNumber: false,
                      valid: (val) {
                        return validInput(val!, 5, 100, 'email');
                      },
                      hintText: 'Enter your email',
                      labelText: 'Email',
                      iconData: Icons.email_outlined,
                      mycontroller: controller.email,
                      obscureText: false,
                    ),
                    CustomTextFormAuth(
                        isNumber: true,
                        valid: (val) {
                          return validInput(val!, 5, 11, 'phone');
                        },
                        hintText: 'Enter your phone number',
                        labelText: 'Phone',
                        iconData: Icons.phone_android_outlined,
                        mycontroller: controller.phone,
                        obscureText: false),
                    CustomTextFormAuth(
                      isNumber: false,
                      valid: (val) {
                        return validInput(val!, 5, 30, 'password');
                      },
                      hintText: 'Enter your password',
                      labelText: 'Password',
                      iconData: Icons.lock_outline,
                      obscureText: true,
                      mycontroller: controller.password,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomButtonAuth(
                      text: 'Continue',
                      backgroundColor:
                          const MaterialStatePropertyAll(Color(0xffE76035)),
                      onPressed: () {
                        controller.signUp();
                      },
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SocialCard(image: AppImageAssets.google),
                        SocialCard(image: AppImageAssets.facebook),
                        SocialCard(image: AppImageAssets.twitter),
                      ],
                    ),
                    CustomTextSignUporSignIn(
                      textone: "Already have an account?",
                      texttwo: " Login",
                      onTap: () {
                        controller.goToLogin();
                      },
                    )
                  ],
                ),
              ),
            ),)
    ));
  }
}
