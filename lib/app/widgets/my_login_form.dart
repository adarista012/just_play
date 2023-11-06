import 'package:flutter/material.dart';
import 'package:just_play/app/widgets/my_divider.dart';
import 'package:just_play/app/widgets/my_text_file.dart';

class MyLoginForm extends StatelessWidget {
  const MyLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: ListView(
        shrinkWrap: true,
        children: [
          const MyTextField(
            isPassword: false,
            label: "Email address",
            errorText: null,
          ),
          const MyTextField(
            isPassword: true,
            label: "Password",
            errorText: null,
          ),
          const SizedBox(height: 8.0),
          MaterialButton(
            height: 54,
            color: Colors.black,
            onPressed: () {},
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
  }
}
