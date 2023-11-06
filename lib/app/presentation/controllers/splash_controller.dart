import 'package:firebase_auth/firebase_auth.dart';
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
    FirebaseAuth.instance.authStateChanges().listen(
      (User? user) {
        if (user == null) {
          print('User is currently signed out!');
          _routeName = Routes.LOGIN;
        } else {
          print('User is signed in!');
          _routeName = Routes.HOME;
        }
        if (_routeName != null) {
          Get.offAllNamed(_routeName!);
        }
      },
    );
  }
}
