import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce/controller/items_controller.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/core/functions/translatedatabase.dart';
import 'package:ecommerce/data/model/itemsmodel.dart';
import 'package:ecommerce/linkapi.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomListItems extends GetView<ItemsControllerImp> {
  const CustomListItems({super.key, required this.itemsModel});
  final ItemsModel itemsModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        controller.goToProductDetails(itemsModel);
      },
      child: Card(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Hero(
                tag: '${itemsModel.itemsId}',
                child: Center(
                  child: CachedNetworkImage(
                    imageUrl: ApiLink.imageItems + "/" + itemsModel.itemsImage!,
                    height: 100,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Text(
                  "${translateDataBase(itemsModel.itemsNameAr, itemsModel.itemsName)}",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold)),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                const Text("Rating 3.5 ", textAlign: TextAlign.center),
                Container(
                  alignment: Alignment.bottomCenter,
                  height: 22,
                  child: Row(
                    children: [
                      ...List.generate(
                          5,
                          (index) => const Icon(
                                Icons.star,
                                size: 15,
                              ))
                    ],
                  ),
                ),
              ]),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "${itemsModel.itemsPrice} \$",
                    style: TextStyle(
                        color: AppColor.primary,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
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
              )
            ]),
      )),
    );
  }
}
