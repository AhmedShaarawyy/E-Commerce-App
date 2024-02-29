import 'package:ecommerce/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomButtonAppBar extends StatelessWidget {
  const CustomButtonAppBar({
    super.key,
    required this.textbutton,
    required this.onPressed,
    required this.active,
    required this.assetName,
  });

  final void Function()? onPressed;
  final String assetName;
  final String textbutton;
  final bool? active;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(child: SvgPicture.asset(assetName)),
          // Icon(
          //   icondata,
          //   color: active == true ? AppColor.primary : Colors.black,
          // ),
          Expanded(
            child: Text(
              textbutton,
              style: TextStyle(
                  color: active == true ? AppColor.primary : Colors.black),
            ),
          )
        ],
      ),
    );
  }
}
