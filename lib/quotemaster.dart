import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quotemaster/app/routes/routes.dart';
import 'package:quotemaster/app/ui/pages/splash_screen/splash_screen.dart';

import 'package:quotemaster/app/ui/theme/fonts.dart';

class QuoteMaster extends StatelessWidget {
  const QuoteMaster({super.key});

  @override
  Widget build(BuildContext context) {
    //Todo: Importing GetMaterialApp From GetX //
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quote Master',
      themeMode: ThemeMode.system,
      home: const SplashScreen(),
      theme: ThemeData(
        fontFamily: Fonts.primaryfont,
      ),
      getPages: Routes.appRoutes(),
    );
  }
}
