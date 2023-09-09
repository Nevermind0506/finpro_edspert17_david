import 'package:finpro_edspert17_david/presentation/screen/auth/login_screen.dart';
import 'package:finpro_edspert17_david/presentation/router/routes.dart';
import 'package:finpro_edspert17_david/presentation/screen/home/home_binding.dart';
import 'package:finpro_edspert17_david/presentation/screen/home/home_page.dart';
import 'package:finpro_edspert17_david/presentation/splash_screen.dart';
import 'package:get/get_navigation/get_navigation.dart';

class Pages {
  static final getAllPages = [
    GetPage(
      name: Routes.splashScreen,
      page: () => SplashScreen(),
    ),
    GetPage(
      name: Routes.loginScreen,
      page: () => LoginScreen(),
    ),
    GetPage(
      name: Routes.homeScreen,
      page: () => MyHomePage(),
      binding: HomeBinding(),
    ),
  ];
}
