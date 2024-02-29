import 'package:ecommerce/controller/home_controller.dart';
import 'package:ecommerce/core/functions/translatedatabase.dart';
import 'package:ecommerce/data/model/categoriesmodel.dart';
import 'package:ecommerce/linkapi.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class ListCategories extends GetView<HomeControllerImp> {
  const ListCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 100,
        child: ListView.separated(
          itemCount: controller.categories.length,
          scrollDirection: Axis.horizontal,
          separatorBuilder: (context, index) {
            return SizedBox(
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

class Categories extends GetView<HomeControllerImp> {
  const Categories({super.key, required this.categoriesModel, required this.i});
  final CategoriesModel categoriesModel;
  final int i;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        controller.goToItems(
            controller.categories, i, categoriesModel.categoriesId!);
      },
      child: Column(
        children: [
          Container(
              height: 60,
              width: 60,
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: Color(0xFFFFECDF),
                  borderRadius: BorderRadius.circular(20)),
              child: SvgPicture.network(
                  "${ApiLink.imageCategories}/${categoriesModel.categoriesImage}")),
          Text(
            "${translateDataBase(categoriesModel.categoriesNameAr, categoriesModel.categoriesName)}",
            style: const TextStyle(fontSize: 13, color: Colors.black87),
          )
        ],
      ),
    );
  }
}
