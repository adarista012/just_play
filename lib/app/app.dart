import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:just_play/app/core/routes/app_routes.dart';
import 'package:just_play/app/core/routes/routes.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Just Play",
      debugShowCheckedModeBanner: false,
      navigatorKey: Get.key,
      navigatorObservers: [GetObserver()],
      getPages: appRoutes,
      initialRoute: Routes.SPLASH,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
