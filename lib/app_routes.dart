import 'package:get/get.dart';
import 'package:live_kit/screen/live_screen/binding.dart';
import 'package:live_kit/screen/live_screen/view.dart';
import 'package:live_kit/screen/main_screen/binding.dart';
import 'package:live_kit/screen/main_screen/view.dart';
import 'package:live_kit/screen/splash/binding.dart';
import 'package:live_kit/screen/splash/view.dart';

class AppRoutes {
  static String splashPage = '/splash';
  static String mainPage = '/main_screen';
  static String livePage = '/live_screen';
}

final getPages = [
  GetPage(
    name: AppRoutes.splashPage,
    page: () => SplashPage(),
    binding: SplashBinding(),
  ),
  GetPage(
    name: AppRoutes.mainPage,
    page: () => MainScreenPage(),
    binding: MainScreenBinding(),
  ),
  GetPage(
    name: AppRoutes.livePage,
    page: () => LiveScreenPage(),
    binding: LiveScreenBinding(),
  ),
];
