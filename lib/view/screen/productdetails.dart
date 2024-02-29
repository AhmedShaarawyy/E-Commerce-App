import 'package:ecommerce/controller/productdetails_controller.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/view/widget/auth/customButtonAuth.dart';
import 'package:ecommerce/view/widget/products/colors_and_counters.dart';
import 'package:ecommerce/view/widget/products/products_description.dart';
import 'package:ecommerce/view/widget/products/products_image.dart';
import 'package:ecommerce/view/widget/products/rounded_container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(ProductDetailsControllerImp());
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            const ProductsImage(),
            const SizedBox(
              height: 150,
            ),
            RoundedContainer(
                color: Color.fromARGB(255, 243, 241, 241),
                child: ProductsDescription('25 \$')),
            RoundedContainer(
                color: const Color(0xfff6f7f9),
                child: Column(
                  children: [
                    ColorsAndCounters(
                      count: '1',
                    ),
                    RoundedContainer(
                        color: Colors.transparent,
                        child: CustomButtonAuth(
                          text: 'Add to Cart',
                          backgroundColor:
                              const MaterialStatePropertyAll(AppColor.primary),
                        ))
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
