import 'package:ecommerce/core/constant/routes.dart';
import 'package:ecommerce/core/middleware/mymiddleware.dart';
import 'package:ecommerce/view/screen/auth/forgetpassword.dart';
import 'package:ecommerce/view/screen/auth/login.dart';
import 'package:ecommerce/view/screen/auth/resetpassword.dart';
import 'package:ecommerce/view/screen/auth/signup.dart';
import 'package:ecommerce/view/screen/auth/success_reset.dart';
import 'package:ecommerce/view/screen/auth/success_signup.dart';
import 'package:ecommerce/view/screen/auth/verifycode.dart';
import 'package:ecommerce/view/screen/auth/verifycodesignup.dart';
import 'package:ecommerce/view/screen/homescreen.dart';
import 'package:ecommerce/view/screen/items.dart';
import 'package:ecommerce/view/screen/language.dart';
import 'package:ecommerce/view/screen/onboarding.dart';
import 'package:ecommerce/view/screen/productdetails.dart';
import 'package:get/get.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(name: '/', page: () => Language(), middlewares: [MyMiddleware()]),
  // GetPage(
  //   name: '/',
  //   page: () => const ProductDetails(),
  // ),

  GetPage(
    name: AppRoutes.login,
    page: () => const LoginPage(),
  ),
  GetPage(
    name: AppRoutes.signup,
    page: () => const SignUpPage(),
  ),
  GetPage(
    name: AppRoutes.forgetPassword,
    page: () => const ForgetPassword(),
  ),
  GetPage(
    name: AppRoutes.verifyCode,
    page: () => const VerifyCode(),
  ),
  GetPage(
    name: AppRoutes.verifyCodeSignUp,
    page: () => const VerifyCodeSignUp(),
  ),
  GetPage(
    name: AppRoutes.resetPassword,
    page: () => const ResetPassword(),
  ),
  GetPage(
    name: AppRoutes.successSignUp,
    page: () => const SucessSignUp(),
  ),
  GetPage(
    name: AppRoutes.successResetPassword,
    page: () => const SuccessResetPassword(),
  ),
  // OnBoarding
  GetPage(
    name: AppRoutes.onboarding,
    page: () => OnBoarding(),
  ),
  //Home
  GetPage(
    name: AppRoutes.homepage,
    page: () => const HomeScreen(),
  ),
  //Items
  GetPage(
    name: AppRoutes.itemspage,
    page: () => const ItemsPage(),
  ),
  //Product Details
  GetPage(
    name: AppRoutes.productdetails,
    page: () => const ProductDetails(),
  ),
];
