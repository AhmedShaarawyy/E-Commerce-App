import 'package:flutter/material.dart';

class CustomButtonAuth extends StatelessWidget {
  CustomButtonAuth(
      {super.key, required this.text, this.onPressed, this.backgroundColor});
final String text;
final  MaterialStateProperty<Color?>? backgroundColor;
final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.circular(25.0), // Adjust the radius as needed
            ),
          ),
          minimumSize: MaterialStateProperty.all(const Size(200, 60.0)),
          backgroundColor: backgroundColor),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 18.0,
        ),
      ),
    );
  }
}
