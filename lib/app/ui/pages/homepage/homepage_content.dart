import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomepageContent extends StatelessWidget {
  const HomepageContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Color(0xff76c893),
            Color(0xff52b69a),
          ],
        ),
        borderRadius: BorderRadius.circular(10),
      ),
    ).marginOnly(left: 5, bottom: 5).paddingAll(8.0);
  }
}
