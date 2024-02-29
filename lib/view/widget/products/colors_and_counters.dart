import 'package:ecommerce/controller/productdetails_controller.dart';
import 'package:ecommerce/view/widget/products/color_dots.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ColorsAndCounters extends GetView<ProductDetailsControllerImp> {
  const ColorsAndCounters(
      {super.key, this.onAdd, this.onRemove, required this.count});
  final void Function()? onAdd;
  final void Function()? onRemove;
  final String count;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            ...List.generate(
              controller.colors.length,
              (index) => ColorDot(color: controller.colors[index]["color"],index:index ,),
            ),
            const Spacer(),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.only(bottom: 0),
                width: 50,
                height: 30,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 0.2),
                    borderRadius: BorderRadius.circular(6)),
                child: Text(
                 count,
                  style: const TextStyle(fontSize: 20, height: 1.1),
                )),
            const Spacer(),
            CircleAvatar(
              backgroundColor: Colors.white,
              child: IconButton(
                  onPressed: onRemove,
                  icon: Icon(
                    Icons.remove,
                    color: Colors.black,
                  )),
            ),
            const SizedBox(
              width: 5,
            ),
            CircleAvatar(
              backgroundColor: Colors.white,
              child: IconButton(
                  onPressed: onAdd,
                  icon: Icon(
                    Icons.add,
                    color: Colors.black,
                  )),
            )
          ],
        ));
  }
}
