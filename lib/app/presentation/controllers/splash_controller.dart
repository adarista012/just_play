import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:just_play/app/core/routes/routes.dart';
import 'package:just_play/app/data/repositories/auth_repository_impl.dart';

class SplashController extends GetxController {
  String? _session;
  String? get session => _session;
  String text = "Splash";
  final String _imageUrl = "images/logo.png";
  String get imageUrl => _imageUrl;
  String? _routeName;

  final AuthRepositoryImpl auth = Get.find();

  SplashController() {
    _init();
  }

  _init() async {
    await Future.delayed(const Duration(milliseconds: 1240));
    auth.firebaseAuth.authStateChanges().listen(
      (User? user) {
        if (user == null) {
          _routeName = Routes.LOGIN;
        } else {
          _routeName = Routes.PERSONAL_SETTINGS;
        }
        if (_routeName != null) {
          Get.offAllNamed(_routeName!);
        }
      },
    );
  }
}
