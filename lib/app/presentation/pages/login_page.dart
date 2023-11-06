import 'package:flutter/material.dart';
import 'package:just_play/app/core/theme/app_text_styles.dart';
import 'package:just_play/app/widgets/my_login_form.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            shrinkWrap: true,
            children: [
              Container(
                width: width,
                height: width / 2,
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Log In",
                  style: AppTextStyles.title,
                ),
              ),
              const SizedBox(height: 16.0),
              const MyLoginForm(),
            ],
          ),
        ),
      ),
    );
  }
}
