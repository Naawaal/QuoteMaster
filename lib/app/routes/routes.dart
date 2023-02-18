import 'package:get/get.dart';
import 'package:quotemaster/app/routes/routes_name.dart';
import 'package:quotemaster/app/ui/pages/homepage/homepage_screen.dart';
import 'package:quotemaster/app/ui/pages/splash_screen/splash_screen.dart';

class Routes {
  //Todo: Navigating Screen Using RoutesName as ID  //
  static appRoutes() => [
        GetPage(
          name: RoutesName.spalshScreen,
          page: () => const SplashScreen(),
          transition: Transition.cupertino,
        ),
        GetPage(
          name: RoutesName.homepageScreen,
          page: () => const HomepageScreen(),
        ),
      ];
}
