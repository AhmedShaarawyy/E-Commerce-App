import 'package:ecommerce/controller/items_controller.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/core/functions/translatedatabase.dart';
import 'package:ecommerce/data/model/categoriesmodel.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class ListCategoriesItems extends GetView<ItemsControllerImp> {
  const ListCategoriesItems({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ItemsControllerImp());
    return SizedBox(
        height: 90,
        child: ListView.separated(
          itemCount: controller.categories.length,
          scrollDirection: Axis.horizontal,
          separatorBuilder: (context, index) {
            return const SizedBox(
              width: 10,
            );
          },
          itemBuilder: (context, index) {
            return Categories(
                i: index,
                categoriesModel:
                    CategoriesModel.fromJson(controller.categories[index]));
          },
        ));
  }
}

class Categories extends GetView<ItemsControllerImp> {
  const Categories({super.key, required this.categoriesModel, required this.i});
  final CategoriesModel categoriesModel;
  final int i;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        controller.changeCat(i, categoriesModel.categoriesId!);
      },
      child: Column(
        children: [
          GetBuilder<ItemsControllerImp>(
            builder: (controller) => Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: controller.selectedCat == i
                  ? BoxDecoration(
                      border: Border(
                          bottom:
                              BorderSide(width: 3, color: AppColor.primary)))
                  : null,
              child: Text(
                "${translateDataBase(categoriesModel.categoriesNameAr, categoriesModel.categoriesName)}",
                style: const TextStyle(fontSize: 20, color: Colors.black87),
              ),
            ),
          )
        ],
      ),
    );
  }
}
