import 'package:ecommerce/core/services/service.dart';
import 'package:get/get.dart';

translateDataBase(columnar, columnen) {
  MyServices myServices = Get.find();

  if (myServices.sharedPreferences.getString('lang') == 'ar') {
    return columnar;
  } else {
    return columnen;
  }
}
