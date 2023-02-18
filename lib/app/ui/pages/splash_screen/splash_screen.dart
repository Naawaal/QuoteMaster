import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:quotemaster/app/ui/global_widgets/image_widget.dart';
import 'package:quotemaster/app/ui/theme/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer.periodic(3.seconds, (timer) {
      Get.toNamed('/homepageScreen');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.bgColor,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              imageWidget(),
              lottieWidget(),
            ],
          ),
        ],
      ),
    );
  }

  Widget lottieWidget() {
    return Container(
      height: 70,
      width: 80,
      margin: const EdgeInsets.only(bottom: 15),
      child: LottieBuilder.asset(
        'assets/lottie/refresh.json',
        repeat: true,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget imageWidget() {
    return Container(
      margin: const EdgeInsets.only(top: 15),
      child: const ImageWidget(
        imagePath: 'assets/png/quote.png',
        height: 100,
        width: 100,
      ),
    );
  }
}
