import 'package:flutter/material.dart';

class CustomTextSignUporSignIn extends StatelessWidget {
  CustomTextSignUporSignIn(
      {super.key, required this.textone, required this.texttwo, this.onTap});
  final String textone;
  final String texttwo;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          textone,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w200),
        ),
        InkWell(
          onTap: onTap,
          child: Text(
            texttwo,
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color(0xffE76035)),
          ),
        )
      ],
    );
  }
}
