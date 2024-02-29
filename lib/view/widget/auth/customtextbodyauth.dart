import 'package:flutter/material.dart';

class CustomTextBodyAuth extends StatelessWidget {
  const CustomTextBodyAuth({super.key, required this.body});
  final String body;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 45),
      child:  Text(
        body,
        style: TextStyle(
            fontSize: 15, color: Colors.black54, fontWeight: FontWeight.w100),
        textAlign: TextAlign.center,
      ),
    );
  }
}
