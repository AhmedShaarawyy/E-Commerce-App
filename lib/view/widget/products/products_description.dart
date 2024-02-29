import 'package:ecommerce/controller/productdetails_controller.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/core/constant/imageasset.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class ProductsDescription extends GetView<ProductDetailsControllerImp> {
  const ProductsDescription(this.price, {super.key});
  final String price;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            '${controller.itemsModel.itemsName}',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                price,
                style: const TextStyle(
                    color: AppColor.primary,
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    height: 1.1),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                padding: EdgeInsets.all(15),
                width: 65,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20)),
                    color: Color(0xffFEE1E2)),
                child: SvgPicture.asset(
                  AppImageAssets.heart,
                  colorFilter:
                      ColorFilter.mode(Color(0xffFF3D44), BlendMode.srcIn),
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(left: 20, right: 64),
          child: Text(
            '${controller.itemsModel.itemsDesc} ${controller.itemsModel.itemsDesc}',
            maxLines: 3,
            style: TextStyle(fontWeight: FontWeight.w400),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            children: [
              Text('See More Details',
                  style: TextStyle(
                      color: AppColor.primary, fontWeight: FontWeight.w600)),
              SizedBox(
                width: 5,
              ),
              Icon(
                Icons.arrow_forward_ios,
                size: 12,
                color: AppColor.primary,
              )
            ],
          ),
        )
      ],
    );
  }
}
