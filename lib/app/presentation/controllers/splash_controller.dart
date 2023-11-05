import 'package:get/get.dart';
import 'package:just_play/app/core/routes/routes.dart';

class SplashController extends GetxController {
  String? _session;
  String? get session => _session;
  String text = "Splash";
  final String _imageUrl = "images/logo.png";
  String get imageUrl => _imageUrl;
  String? _routeName;

  SplashController() {
    _init();
  }

  _init() async {
    await Future.delayed(const Duration(milliseconds: 1240));
    // _session = "session";
    if (_session == null) {
      _routeName = Routes.LOGIN;
    } else {
      _routeName = Routes.HOME;
    }
    if (_routeName != null) {
      Get.offAllNamed(_routeName!);
    }
  }
}
