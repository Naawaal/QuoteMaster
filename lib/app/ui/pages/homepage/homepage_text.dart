import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomepageText extends StatelessWidget {
  const HomepageText({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      alignment: Alignment.center,
      duration: 5.seconds,
      decoration: BoxDecoration(
        color: const Color(0xffeaf4f4),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: AnimatedTextKit(
        animatedTexts: [
          TypewriterAnimatedText(
            "Hello I'm \n Nawal \n Flutter FrontEnd Dev",
            textStyle: const TextStyle(fontSize: 20.0, letterSpacing: 2.0),
            speed: const Duration(milliseconds: 200),
          ),
        ],
        totalRepeatCount: 4,
        pause: const Duration(milliseconds: 1500),
        displayFullTextOnTap: true,
        stopPauseOnTap: true,
        repeatForever: true,
      ),
    ).paddingAll(8.0).marginAll(5);
  }
}
