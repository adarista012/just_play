import 'package:get/instance_manager.dart';
import 'package:just_play/app/presentation/controllers/splash_controller.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => SplashController(),
      fenix: true,
    );
  }
}
