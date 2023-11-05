import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:just_play/app/core/routes/routes.dart';
import 'package:just_play/app/presentation/pages/home_page.dart';
import 'package:just_play/app/presentation/pages/login_page.dart';
import 'package:just_play/app/presentation/pages/splash_page.dart';

final appRoutes = [
  GetPage(
    name: Routes.SPLASH,
    page: () => const SplashPage(),
    transition: Transition.fadeIn,
  ),
  GetPage(
    name: Routes.HOME,
    page: () => const HomePage(),
    transition: Transition.fadeIn,
  ),
  GetPage(
    name: Routes.LOGIN,
    page: () => const LoginPage(),
    transition: Transition.fadeIn,
  ),
];
