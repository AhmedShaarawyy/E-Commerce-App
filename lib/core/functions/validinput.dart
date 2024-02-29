import 'package:get/get.dart';

validInput(String val,int min,int max,String type){

if(type == 'username'){
  if(!GetUtils.isUsername(val)){
    return ' Invalid username';
  }

if(type == 'email'){
  if(!GetUtils.isEmail(val)){
    return 'Invalid email';
  }
}
if(type == 'phone'){
  if(!GetUtils.isPhoneNumber(val)){
    return 'Invalid phone number';
  }
}    

}

if(val.isEmpty){
  return 'Field is empty';
}
if(val.length < min){
  return "Can't be less than $min";
}
if(val.length > max){
  return "Can't be greater than $max";
}
}