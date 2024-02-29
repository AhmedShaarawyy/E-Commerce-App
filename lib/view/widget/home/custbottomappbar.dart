import 'package:ecommerce/controller/homescreen_controller.dart';
import 'package:ecommerce/view/widget/home/custombuttonappbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustBottomAppBar extends StatelessWidget {
  const CustBottomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeScreenControllerImp>(
      builder: (controller) => BottomAppBar(
        height: 60,
        shape: CircularNotchedRectangle(),
        notchMargin: 15,
        child: Row(
          children: [
            ...List.generate(controller.listPages.length + 1, (index) {
              int i = index > 2 ? index - 1 : index;
              return index == 2
                  ? const Spacer()
                  : CustomButtonAppBar(
                      textbutton: controller.titleButtonAppBar[i],
                      assetName: 'assets/icons/User Icon.svg',
                      onPressed: () => controller.changePage(i),
                      active: controller.currentPage == i ? true : false,
                    );
            })
          ],
        ),
      ),
    );
  }
}
