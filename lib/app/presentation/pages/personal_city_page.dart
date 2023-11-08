import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:just_play/app/core/colors/app_colors.dart';
import 'package:just_play/app/core/theme/app_text_styles.dart';
import 'package:just_play/app/presentation/controllers/personal_city_controller.dart';

class PersonalCityPage extends StatelessWidget {
  const PersonalCityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GetBuilder(
            init: PersonalCityController(),
            builder: (controller) {
              return Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: SizedBox(
                      width: double.infinity,
                      child: Text(
                        "Choose your city",
                        style: AppTextStyles.title.copyWith(
                          color: AppColors.black,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 6,
                    child: controller.isLoading
                        ? Center(
                            child: CircularProgressIndicator(
                              color: AppColors.redAccent,
                            ),
                          )
                        : SizedBox(
                            width: double.infinity,
                            height: double.infinity,
                            child: ListView(
                              children: controller.list,
                            ),
                          ),
                  ),
                ],
              );
            }),
      ),
    ));
  }
}
