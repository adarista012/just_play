import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:just_play/app/core/colors/app_colors.dart';
import 'package:just_play/app/presentation/controllers/login_controller.dart';
import 'package:just_play/app/widgets/my_divider.dart';
import 'package:just_play/app/widgets/my_text_file.dart';

class MyLoginForm extends StatelessWidget {
  const MyLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: LoginController(),
        builder: (controller) {
          return Form(
            child: ListView(
              shrinkWrap: true,
              children: [
                MyTextField(
                  onChanged: controller.emailOnChanged,
                  isPassword: false,
                  label: "Email address",
                  errorText: controller.emailError,
                ),
                MyTextField(
                  onChanged: controller.passwordOnChanged,
                  isPassword: true,
                  label: "Password",
                  errorText: controller.passwordError,
                ),
                const SizedBox(height: 8.0),
                controller.isLoading
                    ? Center(
                        child:
                            CircularProgressIndicator(color: AppColors.black),
                      )
                    : MaterialButton(
                        height: 54,
                        color: Colors.black,
                        onPressed: controller.login,
                        shape: const StadiumBorder(),
                        child: const Text(
                          "Log In",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                const SizedBox(height: 16.0),
                const MyDivider(),
                const SizedBox(height: 16.0),
                controller.isLoadingGoogle
                    ? Center(
                        child: CircularProgressIndicator(
                            color: AppColors.redAccent),
                      )
                    : MaterialButton(
                        height: 54,
                        color: AppColors.redAccent,
                        shape: const StadiumBorder(),
                        onPressed: controller.googleLogin,
                        child: Text(
                          "Log in with Google",
                          style: TextStyle(
                            color: AppColors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                          ),
                        ),
                      ),
              ],
            ),
          );
        });
  }
}
