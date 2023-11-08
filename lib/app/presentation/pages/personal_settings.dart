import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:just_play/app/core/colors/app_colors.dart';
import 'package:just_play/app/core/theme/app_text_styles.dart';
import 'package:just_play/app/presentation/controllers/personal_settings.dart';
import 'package:just_play/app/widgets/triangule.dart';

class PersonalSettingsPage extends GetView<PersonalSettingsController> {
  const PersonalSettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: SizedBox(
                  width: double.infinity,
                  child: Text(
                    "Choose your sport",
                    style: AppTextStyles.title.copyWith(
                      color: AppColors.white,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 6,
                child: SizedBox(
                  width: double.infinity,
                  child: Stack(
                    alignment: AlignmentDirectional.center,
                    children: [
                      TweenAnimationBuilder(
                        tween: Tween<double>(begin: 0, end: 1),
                        duration: const Duration(seconds: 2),
                        curve: Curves.linear,
                        builder: (_, d, __) {
                          return Positioned(
                            top: -22,
                            child: ClipPath(
                              clipper: Triangule(),
                              child: Container(
                                width: 400,
                                height: 80,
                                decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: <Color>[
                                      AppColors.white.withOpacity(d),
                                      AppColors.white.withOpacity(d),
                                      AppColors.black.withOpacity(d),
                                      AppColors.black.withOpacity(d),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                      TweenAnimationBuilder(
                        tween: Tween<double>(begin: 0, end: 1),
                        duration: const Duration(seconds: 2),
                        curve: Curves.linear,
                        builder: (_, d, __) {
                          return Positioned(
                            top: 38,
                            child: Text(
                              "Basketball",
                              style: AppTextStyles.title.copyWith(
                                color: Colors.amber.shade900.withOpacity(d),
                                fontSize: 24,
                              ),
                            ),
                          );
                        },
                      ),
                      TweenAnimationBuilder(
                        tween: Tween<double>(begin: 0, end: 10),
                        duration: const Duration(seconds: 2),
                        curve: Curves.linear,
                        builder: (_, d, __) {
                          int i = d.round();
                          double s = i % 2 == 0 ? (100 / d) : -(100 / d);
                          return Positioned(
                            top: 62,
                            bottom: (width + s) - 62,
                            child: MaterialButton(
                              shape: const CircleBorder(),
                              padding: EdgeInsets.zero,
                              onPressed: () =>
                                  controller.chooseCity("Basketball"),
                              child: Container(
                                height: 180,
                                width: 180,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("images/basketball.png"),
                                    fit: BoxFit.fitWidth,
                                  ),
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                      TweenAnimationBuilder(
                        tween: Tween<double>(begin: 0, end: 1),
                        duration: const Duration(seconds: 2),
                        curve: Curves.linear,
                        builder: (_, d, __) {
                          return Positioned(
                            top: 290,
                            child: Text(
                              "Soccer",
                              style: AppTextStyles.title.copyWith(
                                color: Colors.green.withOpacity(d),
                                fontSize: 24,
                              ),
                            ),
                          );
                        },
                      ),
                      TweenAnimationBuilder(
                        tween: Tween<double>(begin: 1, end: 12),
                        duration: const Duration(seconds: 2),
                        curve: Curves.linear,
                        builder: (_, d, __) {
                          int i = d.round();
                          return Positioned(
                            bottom: (width / 3) - 32,
                            left:
                                ((width / 4) - (width / (i / 3))) + (width / 4),
                            child: Transform.rotate(
                              angle: i + 0.57,
                              child: MaterialButton(
                                shape: const CircleBorder(),
                                onPressed: () =>
                                    controller.chooseCity("Soccer"),
                                padding: EdgeInsets.zero,
                                child: Container(
                                  height: 180,
                                  width: 180,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("images/soccer.png"),
                                      fit: BoxFit.fitWidth,
                                    ),
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
