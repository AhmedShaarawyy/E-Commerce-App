import 'package:ecommerce/controller/forgetpassword/verifycode_controller.dart';
import 'package:ecommerce/view/widget/auth/customButtonAuth.dart';
import 'package:ecommerce/view/widget/auth/customtextbodyauth.dart';
import 'package:ecommerce/view/widget/auth/customtexttitleauth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

class VerifyCode extends StatelessWidget {
  const VerifyCode({super.key});

  @override
  Widget build(BuildContext context) {
    VerifyCodeControllerImp controller = Get.put(VerifyCodeControllerImp());

    return Scaffold(
        body: Container(
      margin: EdgeInsets.all(20),
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
                "Verification code",
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
          const CustomTextTitleAuth(text: 'Verify your email'),
          const SizedBox(
            height: 10,
          ),
          const CustomTextBodyAuth(
              body: 'Please enter the digit code \n Sent to +20********008'),
          SizedBox(
            height: 40,
          ),
          OtpTextField(
            fieldWidth: 50.0,
            borderRadius: BorderRadius.circular(20),
            numberOfFields: 5,
            borderColor: Color(0xFF512DA8),
            //set to true to show as box or false to show as dash
            showFieldAsBox: true,
            //runs when a code is typed in
            onCodeChanged: (String code) {
              //handle validation or checks here
            },
            //runs when every textfield is filled
            onSubmit: (String verificationCode) {
              controller.goToResetPassword(verificationCode);
            }, // end onSubmit
          ),
          SizedBox(
            height: 20,
          ),
          CustomButtonAuth(
            text: 'Continue',
            backgroundColor: MaterialStatePropertyAll(Color(0xffE76035)),
          ),
          SizedBox(
            height: 40,
          ),
        ],
      ),
    ));
  }
}
