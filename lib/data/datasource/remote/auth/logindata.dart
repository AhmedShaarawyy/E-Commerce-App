import 'package:ecommerce/core/class/crud.dart';
import 'package:ecommerce/linkapi.dart';

class LoginData {
  Crud crud;
  LoginData(this.crud);

  postData( String email, String password) async {
    var response = await crud.postData(ApiLink.login, {
      "email" : email,
      "password" : password,
      
      
    });
   return response.fold((l) => l, (r) => r);
  }
}
