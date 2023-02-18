import 'package:flutter/material.dart';
import 'package:quotemaster/app/ui/pages/homepage/homepage_content.dart';
import 'package:quotemaster/app/ui/pages/homepage/homepage_text.dart';
import 'package:quotemaster/app/ui/theme/colors.dart';

class HomepageScreen extends StatelessWidget {
  const HomepageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.bgColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const HomepageText(),
            const SizedBox(
              height: 5.0,
            ),
            homepageContetnt(),
          ],
        ),
      ),
    );
  }

  Widget homepageContetnt() {
    return Wrap(
      children: const [
        HomepageContent(),
        HomepageContent(),
        HomepageContent(),
        HomepageContent(),
        HomepageContent(),
        HomepageContent(),
        HomepageContent(),
      ],
    );
  }
}
