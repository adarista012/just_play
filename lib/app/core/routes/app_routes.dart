import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:just_play/app/core/routes/routes.dart';
import 'package:just_play/app/presentation/bindings/home_binding.dart';
import 'package:just_play/app/presentation/bindings/login_binding.dart';
import 'package:just_play/app/presentation/bindings/personal_city_binding.dart';
import 'package:just_play/app/presentation/bindings/personal_settings_bindings.dart';
import 'package:just_play/app/presentation/bindings/splash_binding.dart';
import 'package:just_play/app/presentation/pages/home_page.dart';
import 'package:just_play/app/presentation/pages/login_page.dart';
import 'package:just_play/app/presentation/pages/personal_city_page.dart';
import 'package:just_play/app/presentation/pages/personal_settings.dart';
import 'package:just_play/app/presentation/pages/splash_page.dart';

final appRoutes = [
  GetPage(
    name: Routes.SPLASH,
    page: () => const SplashPage(),
    preventDuplicates: true,
    binding: SplashBinding(),
  ),
  GetPage(
    name: Routes.HOME,
    page: () => const HomePage(),
    transition: Transition.circularReveal,
    binding: HomeBinding(),
    transitionDuration: const Duration(milliseconds: 1240),
  ),
  GetPage(
    name: Routes.LOGIN,
    page: () => const LoginPage(),
    binding: LoginBinding(),
    preventDuplicates: true,
    transition: Transition.circularReveal,
    transitionDuration: const Duration(milliseconds: 1240),
  ),
  GetPage(
    name: Routes.PERSONAL_SETTINGS,
    page: () => const PersonalSettingsPage(),
    binding: PersonalSettingsBinding(),
    preventDuplicates: true,
    transition: Transition.circularReveal,
    transitionDuration: const Duration(milliseconds: 124),
  ),
  GetPage(
    name: Routes.PERSONAL_CITY,
    page: () => const PersonalCityPage(),
    binding: PersonalCityBinding(),
    preventDuplicates: true,
    transition: Transition.downToUp,
    transitionDuration: const Duration(milliseconds: 124),
  ),
];
