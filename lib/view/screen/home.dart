import 'package:ecommerce/controller/home_controller.dart';
import 'package:ecommerce/core/class/handlingdataview.dart';
import 'package:ecommerce/core/constant/imageasset.dart';
import 'package:ecommerce/view/widget/customsearchappbar.dart';
import 'package:ecommerce/view/widget/home/discount_card.dart';
import 'package:ecommerce/view/widget/home/listcategories.dart';
import 'package:ecommerce/view/widget/home/listitems.dart';
import 'package:ecommerce/view/widget/home/seemorebar.dart';
import 'package:ecommerce/view/widget/home/staticrowproduct.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(HomeControllerImp());
    return GetBuilder<HomeControllerImp>(
        builder: (controller) => HandlingDataView(
            statusRequest: controller.statusRequest!,
            widget: Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: ListView(children: const [
                  SizedBox(
                    height: 20,
                  ),
                  CustomSearchAppBar(),
                  DiscountCard(
                    title: 'A Winter Surprise',
                    body: 'Cashback 90%',
                  ),
                  ListCategories(),
                  SizedBox(
                    height: 0,
                  ),
                  SeeMoreBar(title: 'Special for you'),
                  SizedBox(
                    height: 10,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        StaticRowProduct(
                            title: 'Smart phone\n',
                            brand: '18 brands',
                            imageAssetPath: AppImageAssets.banner),
                        SizedBox(
                          width: 8,
                        ),
                        StaticRowProduct(
                            title: 'Fashion\n',
                            brand: '22 brands',
                            imageAssetPath: AppImageAssets.banner2)
                      ],
                    ),
                  ),
                  SeeMoreBar(title: 'Product for you'),
                  SizedBox(
                    height: 10,
                  ),
                  ListItems()
                ]))));
  }
}
