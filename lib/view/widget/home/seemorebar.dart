import 'package:flutter/material.dart';

class SeeMoreBar extends StatelessWidget {
  const SeeMoreBar({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black87),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'See more',
          ),
          style: TextButton.styleFrom(foregroundColor: Colors.grey),
        )
      ],
    );
  }
}
