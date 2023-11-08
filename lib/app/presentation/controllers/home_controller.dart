import 'package:get/get.dart';
import 'package:just_play/app/data/repositories/auth_repository_impl.dart';

class HomeController extends GetxController {
  final AuthRepositoryImpl auth = Get.find();

  String? _sport;
  String? _city;

  String? get sport => _sport;
  String? get city => _city;

  HomeController() {
    _sport = Get.arguments[0];
    _city = Get.arguments[1];
  }

  void signOut() {
    auth.signOut();
  }
}
