import 'package:ecommerce/Bindings/initialbindings.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/core/localization/changeLocal.dart';
import 'package:ecommerce/core/localization/translations.dart';
import 'package:ecommerce/routes.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ecommerce/core/services/service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    LocalController controller = Get.put(LocalController());
    return GetMaterialApp(
        locale: controller.language,
        translations: MyTranslation(),
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          textTheme: TextTheme(
              headlineMedium: TextStyle(
                fontSize: 20,
              ),
              bodyMedium: TextStyle(
                  height: 2,
                  color: AppColor.grey,
                  fontWeight: FontWeight.w800)),
          fontFamily: "IOS",
          primarySwatch: Colors.blue,
        ),
       initialBinding: InitialBindings(),
       // home:  Language(),
        getPages: routes,
        );
  }
}
