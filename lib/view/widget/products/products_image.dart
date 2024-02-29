import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce/controller/productdetails_controller.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/linkapi.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductsImage extends GetView<ProductDetailsControllerImp> {
  const ProductsImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 200,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  AppColor.primary,
                  Colors.orange.shade600,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),
        ),
        Positioned(
          top: 80,
          right: Get.width / 8,
          left: Get.width / 8,
          child: Hero(
            tag: '${controller.itemsModel.itemsId}',
            child: Center(
              child: CachedNetworkImage(
                imageUrl: ApiLink.imageItems +
                    '/' +
                    controller.itemsModel.itemsImage!,
                fit: BoxFit.cover,
                //  height: 250,
              ),
            ),
          ),
        )
      ],
    );
  }
}
