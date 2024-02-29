class ApiLink {
  //=======================Server==========================//
  static const String server = "http://192.168.1.21/ecommerce";
  static const String test = "$server/test.php";
  static const String imageStatic = "$server/upload";
  static const String imageCategories = "$server/upload/categories";
  static const String imageItems = "$server/upload/items";

  //=======================Auth=============================//
  static const String signUp = "$server/auth/signup.php";
  static const String login = "$server/auth/login.php";
  static const String verifyCodeSignUp = "$server/auth/verifycode.php";
  //====================Forget Password =====================//
  static const String checkEmail = "$server/forgetpassword/checkemail.php";
  static const String resetPassword =
      "$server/forgetpassword/resetpassword.php";
  static const String verifyCodeForgetPassword =
      "$server/forgetpassword/verifycode.php";
  //====================== Home ========================//
  static const String homepage = "$server/home.php";
   //====================== Items ========================//
  static const String itempage = "$server/items/items.php";
}
