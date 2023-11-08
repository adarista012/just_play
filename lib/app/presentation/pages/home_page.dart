import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:just_play/app/core/colors/app_colors.dart';
import 'package:just_play/app/core/theme/app_text_styles.dart';
import 'package:just_play/app/presentation/controllers/home_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder(
          init: HomeController(),
          builder: (controller) {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 180.0),
                    Text(
                      "Welcome!",
                      style: AppTextStyles.title,
                    ),
                    const SizedBox(height: 16.0),
                    Text(
                      "Your sport: ${controller.sport}",
                      style: AppTextStyles.title.copyWith(fontSize: 24),
                    ),
                    Text(
                      "Your city: ${controller.city}",
                      style: AppTextStyles.title.copyWith(fontSize: 24),
                    ),
                    const SizedBox(height: 16),
                    MaterialButton(
                      minWidth: double.infinity,
                      height: 40,
                      shape: const StadiumBorder(),
                      color: AppColors.redAccent,
                      onPressed: controller.signOut,
                      child: Text(
                        "Sign out",
                        style: TextStyle(
                          color: AppColors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
