import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
                MaterialButton(
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
                MaterialButton(
                  height: 54,
                  color: Colors.redAccent,
                  shape: const StadiumBorder(),
                  onPressed: () {},
                  child: const Text(
                    "Log in with Google",
                    style: TextStyle(
                      color: Colors.white,
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
