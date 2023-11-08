import 'package:get/get.dart';
import 'package:just_play/app/presentation/controllers/personal_settings.dart';

class PersonalSettingsBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(
      PersonalSettingsController(),
    );
  }
}
