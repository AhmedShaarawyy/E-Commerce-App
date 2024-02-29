import 'package:flutter/material.dart';

class AppColor {
  static const Color grey = Color(0xff515151);
  static const Color primary = Color(0xffE76035);
  static const Color secondColor = Color(0xffc0392b);
  static const Color thirdColor = Color(0xffE76035);

      static Gradient get orangeGradient => LinearGradient(
          colors: [
            Colors.orange.shade300,
            Colors.orange.shade600,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        );
}
