import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:quotemaster/app/ui/global_widgets/image_widget.dart';

class MobileScreen extends StatelessWidget {
  const MobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
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

  //Todo: Making Lottie Animation Widget //
  Widget lottieAnimationWidget() {
    return Lottie.asset(
      'assets/lottie/loading.json',
      animate: true,
      repeat: true,
      height: 100,
      width: 100,
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
        height: 100,
        width: 100,
      ),
    );
  }
}
