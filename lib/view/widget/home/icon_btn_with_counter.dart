
import 'package:ecommerce/core/constant/color.dart';
import 'package:flutter/material.dart';

class IconBtnWithCounter extends StatelessWidget {
  final IconData? icon;
  final String counter;
  IconBtnWithCounter({super.key, this.icon, required this.counter});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        CircleAvatar(
          radius: 23,
          backgroundColor: Colors.grey[300],
          child: IconButton(
              onPressed: () {},
              icon: Icon(
                icon,
                color: Colors.black87,
              )),
        ),
        Positioned(
          top: -3,
          right: 0,
          child: CircleAvatar(
            radius: 8,
            backgroundColor: AppColor.primary,
            child: Center(
              child: Text("$counter",
                  style:
                      TextStyle(fontSize: 10, color: Colors.white, height: 1)),
            ),
          ),
        )
      ],
    );
  }
}
