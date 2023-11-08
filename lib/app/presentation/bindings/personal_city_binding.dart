import 'package:get/get.dart';
import 'package:just_play/app/presentation/controllers/personal_city_controller.dart';

class PersonalCityBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(
      PersonalCityController(),
    );
  }
}
