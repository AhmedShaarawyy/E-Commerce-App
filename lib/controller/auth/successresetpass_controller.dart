import 'package:ecommerce/core/constant/routes.dart';
import 'package:get/get.dart';

abstract class SuccessResetPassController extends GetxController {
  goToLogin();
}

class SuccessResetPassControllerImp extends SuccessResetPassController {
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
