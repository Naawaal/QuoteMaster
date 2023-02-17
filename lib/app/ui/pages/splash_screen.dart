import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:quotemaster/app/ui/global_widgets/image_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final currentWidth = Get.width;
  final currentHeight = Get.height;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (GetPlatform.isDesktop) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    imageWidget(),
                    lottieAnimationWidget(),
                  ],
                ),
              ],
            );
          } else {
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    imageWidget(),
                    lottieAnimationWidget(),
                  ],
                ),
              ],
            );
          }
        },
      ),
    );
  }

//Todo: Making Lottie Animation Widget //
  Widget lottieAnimationWidget() {
    return Lottie.asset(
      'assets/lottie/loading.json',
      animate: true,
      repeat: true,
      height: 80,
      width: 80,
    );
  }

  //Todo: Making Image Widget //
  Widget imageWidget() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        shape: BoxShape.circle,
      ),
      child: const ImageWidget(
        imagePath: 'assets/png/quote.png',
        height: 200,
        width: 200,
      ),
    );
  }
}
