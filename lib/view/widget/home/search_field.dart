
import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
