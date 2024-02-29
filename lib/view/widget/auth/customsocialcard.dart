import 'package:flutter/material.dart';

class SocialCard extends StatelessWidget {
   SocialCard({super.key, required this.image,this.onTap});
  final String image;
  final void Function()? onTap;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap ,
      child: Container(
          padding: EdgeInsets.all(12),
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: Color(0xFFF5f6f9),
            shape: BoxShape.circle,
          ),
          child: Image.asset(image)),
    );
  }
}
