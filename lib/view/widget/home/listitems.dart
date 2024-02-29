import 'package:ecommerce/controller/home_controller.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/data/model/itemsmodel.dart';
import 'package:ecommerce/linkapi.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListItems extends GetView<HomeControllerImp> {
  const ListItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      //width: 230,
      child: ListView.separated(
        separatorBuilder: (context, index) {
          return SizedBox(
            width: 10,
          );
        },
        scrollDirection: Axis.horizontal,
        itemCount: controller.items.length,
        itemBuilder: (context, index) {
          return ItemsHome(itemsModel:ItemsModel.fromJson(controller.items[index]));
        },
      ),
    );
  }
}

class ItemsHome extends StatelessWidget {
  const ItemsHome({super.key, required this.itemsModel});

 final ItemsModel itemsModel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
            width: 140,
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: 1.04,
                  child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: Color(0xFF979797).withOpacity(0.1),
                          borderRadius: BorderRadius.circular(15)),
                      child: Image.network(
                          "${ApiLink.imageItems}/${itemsModel.itemsImage}")),
                ),
                Text(
                  "${itemsModel.itemsName}",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  maxLines: 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$${itemsModel.itemsPrice}",
                      style: TextStyle(
                          color: AppColor.primary,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                      maxLines: 1,
                    ),
                    CircleAvatar(
                      backgroundColor: Color(0xFF979797).withOpacity(0.1),
                      radius: 15,
                      child: IconButton(
                          style: ButtonStyle(
                              iconColor: MaterialStatePropertyAll(
                                  Color(0xFF979797).withOpacity(0.5)),
                              iconSize: MaterialStatePropertyAll(15)),
                          onPressed: () {},
                          icon: Icon(Icons.favorite)),
                    )
                  ],
                ),
              ],
            ),
          );
  }
}