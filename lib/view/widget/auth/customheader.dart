
import 'package:flutter/material.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({
    super.key, required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Colors.black45,
              size: 18,
            )),
        const SizedBox(
          width: 110,
        ),
         Text(
          text,
          style: TextStyle(
              color: Colors.black45, fontWeight: FontWeight.w100, fontSize: 17),
        ),
      ],
    );
  }
}
