import 'package:ecommerce/core/class/crud.dart';
import 'package:ecommerce/linkapi.dart';

class ItemsData {
  Crud crud;
  ItemsData(this.crud);

  getData(String id) async {
    var response = await crud.postData(ApiLink.itempage, {
      'id' : id.toString()
    });
   return response.fold((l) => l, (r) => r);
  }
}
