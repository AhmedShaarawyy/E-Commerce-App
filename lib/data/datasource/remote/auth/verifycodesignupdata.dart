import 'package:ecommerce/core/class/crud.dart';
import 'package:ecommerce/linkapi.dart';

class VerifyCodeSignUpData {
  Crud crud;
  VerifyCodeSignUpData(this.crud);

  postData( String email, String verifyCode) async {
    var response = await crud.postData(ApiLink.verifyCodeSignUp, {
      "email": email,
      "verifycode": verifyCode
    
      
    });
   return response.fold((l) => l, (r) => r);
  }
}
