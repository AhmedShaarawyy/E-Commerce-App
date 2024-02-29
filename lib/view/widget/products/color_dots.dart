import 'package:ecommerce/controller/productdetails_controller.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ColorDot extends GetView<ProductDetailsControllerImp> {
  ColorDot({super.key, this.index, required this.color});
  final Color color;
  final int? index;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 2),
      padding: EdgeInsets.all(8),
      height: 40,
      width: 40,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
              color: controller.colors[index!]['active'] == "1"
                  ? AppColor.primary
                  : Colors.transparent,
              width: 1.5)),
      child: DecoratedBox(
          decoration: BoxDecoration(color: color, shape: BoxShape.circle)),
    );
  }
}
