import 'package:ecommerce/controller/home_controller.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class DiscountCard extends GetView<HomeControllerImp> {
  const DiscountCard({super.key, required this.body, required this.title});
  final String body, title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15),
      child: Stack(children: [
        Container(
          alignment: Alignment.center,
          height: 120,
          decoration: BoxDecoration(
              color: AppColor.primary, borderRadius: BorderRadius.circular(20)),
          child: ListTile(
            title: Text(title,
                style: const TextStyle(color: Colors.white, fontSize: 20)),
            subtitle: Text(body,
                style: const TextStyle(color: Colors.white, fontSize: 30)),
          ),
        ),
        Positioned(
            top: -10,
            right: controller.lang == 'en' ? -10 : null,
            left: controller.lang == 'ar' ? -10 : null,
            child: const CircleAvatar(
              radius: 70,
              backgroundColor: Color.fromARGB(255, 219, 92, 14),
            ))
      ]),
    );
  }
}
