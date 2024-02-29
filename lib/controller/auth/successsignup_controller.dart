import 'package:ecommerce/core/constant/routes.dart';
import 'package:get/get.dart';

abstract class SuccessSignupController extends GetxController {
  goToLogin();
}

class SuccessSignupControllerImp extends SuccessSignupController {
  @override
  goToLogin() {
    Get.offAllNamed(AppRoutes.login);
  }
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
}
