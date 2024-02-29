import 'package:ecommerce/view/widget/home/icon_btn_with_counter.dart';
import 'package:flutter/material.dart';

class CustomSearchAppBar extends StatelessWidget {
  const CustomSearchAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //  margin: EdgeInsets.only(top: 10),
      // padding: const EdgeInsets.symmetric(horizontal: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: MediaQuery.sizeOf(context).width * 0.6,
            child: TextFormField(
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 20, vertical: 9),
                prefixIcon: Icon(Icons.search),
                hintText: 'Search Product',
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(15)),
                filled: true,
                fillColor: Colors.grey[300],
              ),
            ),
          ),
          IconBtnWithCounter(
            icon: Icons.shopping_cart_outlined,
            counter: '0',
          ),
          IconBtnWithCounter(
            icon: Icons.notifications_active_outlined,
            counter: '3',
          )
        ],
      ),
    );
  }
}
