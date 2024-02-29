import 'package:flutter/material.dart';

class CustomTextFormAuth extends StatelessWidget {
  CustomTextFormAuth(
      {super.key,
      required this.hintText,
      required this.labelText,
      required this.iconData,
      required this.mycontroller,
      required this.valid,
       this.obscureText, required this.isNumber, this.onTapSuffixIcon});
  final String hintText;
  final String labelText;
  final IconData iconData;
  final TextEditingController? mycontroller;
 final  String? Function(String?) valid;
  final bool isNumber;
  final bool? obscureText;
 final  void Function()? onTapSuffixIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 35),
      child: TextFormField(
        keyboardType: isNumber ? TextInputType.phone : TextInputType.text,
        validator: valid,
        obscureText: obscureText == null || obscureText == false ? false : true,
        controller: mycontroller,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 1, horizontal: 30),
          label: Container(
              margin: EdgeInsets.symmetric(horizontal: 9),
              child: Text(
                labelText,
              )),
          labelStyle: TextStyle(color: Colors.grey),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          hintText: hintText,
          hintStyle: TextStyle(fontSize: 14),
          suffixIcon: InkWell(
            onTap: onTapSuffixIcon,
            child: Icon(
              iconData,
              color: Colors.grey,
            ),
          ),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(
                // Change the color to your desired color
                ),
          ),
        ),
      ),
    );
  }
}
