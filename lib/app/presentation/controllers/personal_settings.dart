import 'package:get/get.dart';
import 'package:just_play/app/core/routes/routes.dart';

class PersonalSettingsController extends GetxController {
  void chooseCity(String sport) {
    Get.toNamed(
      Routes.PERSONAL_CITY,
      arguments: sport,
    );
  }
}
