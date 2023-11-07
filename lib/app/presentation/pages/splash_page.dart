import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:just_play/app/core/colors/app_colors.dart';
import 'package:just_play/app/presentation/controllers/splash_controller.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.black,
      body: GetBuilder(
        init: SplashController(),
        builder: (controller) {
          return Center(
            child: Container(
              width: width / 2,
              height: width / 2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(width),
                image: DecorationImage(
                  image: AssetImage(controller.imageUrl),
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
          );
        },
        // const Image(image: AssetImage("images/logo.png")),
      ),
    );
  }
}
