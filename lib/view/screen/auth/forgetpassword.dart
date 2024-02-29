import 'package:ecommerce/controller/forgetpassword/forgetpassword_controller.dart';
import 'package:ecommerce/core/class/handlingdataview.dart';
import 'package:ecommerce/core/functions/validinput.dart';
import 'package:ecommerce/view/widget/auth/customButtonAuth.dart';
import 'package:ecommerce/view/widget/auth/customtextbodyauth.dart';
import 'package:ecommerce/view/widget/auth/customtextformauth.dart';
import 'package:ecommerce/view/widget/auth/customtexttitleauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ForgetPasswordControllerImp());

    return Scaffold(
        body: GetBuilder<ForgetPasswordControllerImp>(
      builder: (controller) => HandlingDataRequest(statusRequest: controller.statusRequest, widget: Container(
              margin: const EdgeInsets.all(20),
              child: Form(
                key: controller.formstate,
                child: ListView(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.arrow_back_ios_new_rounded,
                              color: Colors.black45,
                              size: 18,
                            )),
                        const SizedBox(
                          width: 80,
                        ),
                        const Text(
                          "Forget Password",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black45,
                              fontWeight: FontWeight.w100,
                              fontSize: 17),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const CustomTextTitleAuth(text: 'Check email'),
                    const SizedBox(
                      height: 10,
                    ),
                    const CustomTextBodyAuth(
                        body:
                            'Please enter your  email address to \n  recieve a verification code'),
                    const SizedBox(
                      height: 40,
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
                    const SizedBox(
                      height: 20,
                    ),
                    CustomButtonAuth(
                      text: 'Continue',
                      backgroundColor:
                          const MaterialStatePropertyAll(Color(0xffE76035)),
                      onPressed: () {
                        controller.checkemail();
                      },
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                  ],
                ),
              ),
            ),)
    ));
  }
}
