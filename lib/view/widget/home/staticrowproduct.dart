import 'package:flutter/material.dart';

class StaticRowProduct extends StatelessWidget {
  const StaticRowProduct(
      {super.key,
      required this.title,
      required this.brand,
      required this.imageAssetPath});
  final String title;
  final String brand;
  final String imageAssetPath;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 0),
      child: SizedBox(
        height: 100,
        width: 240,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Stack(
            children: [
              Image.asset(imageAssetPath
                  //fit: BoxFit.cover,
                  ),
              Container(
                height: 100,
                width: 242,
                decoration: BoxDecoration(
                  // borderRadius: BorderRadius.circular(15),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      const Color(0xff343434).withOpacity(0.4),
                      const Color(0xff343434).withOpacity(0.15),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
                child: Text.rich(
                  TextSpan(
                    style: const TextStyle(color: Colors.white),
                    children: [
                      TextSpan(
                        text: title,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      TextSpan(
                        text: brand,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
