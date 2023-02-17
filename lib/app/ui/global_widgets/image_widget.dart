import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  final String imagePath;
  final double height;
  final double width;
  const ImageWidget(
      {super.key,
      required this.imagePath,
      required this.height,
      required this.width});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imagePath,
      fit: BoxFit.cover,
      height: height,
      width: width,
    );
  }
}
