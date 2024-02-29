import 'package:ecommerce/controller/auth/login_controller.dart';
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

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => LoginControllerImp());
    return Scaffold(
        body: GetBuilder<LoginControllerImp>(
      builder: (controller) => HandlingDataRequest(statusRequest: controller.statusRequest! , widget: 
      
      Container(
        margin: EdgeInsets.all(20),
        child: Form(
          key: controller.formstate,
          child: ListView(
            children: [
              CustomHeader(text: 'Sign In'),
              const SizedBox(
                height: 20,
              ),
              const CustomTextTitleAuth(text: 'Welcome Back'),
              const SizedBox(
                height: 10,
              ),
              const CustomTextBodyAuth(
                  body:
                      'Sign in with your email and password \n or continue with social media'),
              SizedBox(
                height: 80,
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
                
              ),
            GetBuilder<LoginControllerImp>(builder:(controller) =>   CustomTextFormAuth(
                isNumber: false,
                valid: (val) {
                  return validInput(val!, 5, 30, 'password');
                },
                hintText: 'Enter your password',
                labelText: 'Password',
                iconData: Icons.lock_outline,
                obscureText: controller.isShowPassword,
                onTapSuffixIcon: () {
                  controller.showPassword();
                },
                mycontroller: controller.password,
              ),),
              Row(
                children: [
                  Checkbox(
                    activeColor: Color(0xffE76035),
                    value: false,
                    onChanged: (value) {},
                  ),
                  Text(
                    'Remember me',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Spacer(),
                  InkWell(
                    onTap: () {
                      controller.goToForgetPassword();
                    },
                    child: Text(
                      'Forgot Password',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.grey,
                          color: Colors.grey),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              CustomButtonAuth(
                text: 'Login',
                backgroundColor: MaterialStatePropertyAll(Color(0xffE76035)),
                onPressed: () {
                  controller.login();
                },
              ),
              SizedBox(
                height: 60,
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
                textone: "Don't have an account?",
                texttwo: " Sign Up",
                onTap: () {
                  controller.goToSignUp();
                },
              )
            ],
          ),
        ),
      ),)
    ));
  }
}
