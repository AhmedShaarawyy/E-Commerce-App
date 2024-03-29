import 'package:ecommerce/core/class/statusrequest.dart';
import 'package:ecommerce/core/constant/routes.dart';
import 'package:ecommerce/core/functions/handlingdatacontroller.dart';
import 'package:ecommerce/data/datasource/remote/forgetpassword/verifycode.dart';
import 'package:get/get.dart';

abstract class VerifyCodeController extends GetxController {
  checkCode();
  goToResetPassword(verifycode);
}

class VerifyCodeControllerImp extends VerifyCodeController {
  VerifyCodeForgetPasswordData verifyCodeForgetPasswordData =
      VerifyCodeForgetPasswordData(Get.find());

  String? email;
  StatusRequest statusRequest = StatusRequest.none;

  @override
  checkCode() {}

  @override
  goToResetPassword(verifycode) async {
    statusRequest = StatusRequest.loading;
    update();
    var response =
        await verifyCodeForgetPasswordData.postData(email!, verifycode);
    print("===================== Controller $response");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == 'success') {
        // data.addAll(response['data']);
        Get.offNamed(AppRoutes.resetPassword, arguments: {
          'email': email,
        });
      } else {
        Get.defaultDialog(
            title: "Warning", middleText: "Verify code is incorrect");
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  @override
  void onInit() {
    email = Get.arguments["email"];
    super.onInit();
  }
}
