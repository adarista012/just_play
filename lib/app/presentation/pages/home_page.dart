import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:just_play/app/data/repositories/auth_repository_impl.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final AuthRepositoryImpl auth = Get.find();
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Home Page"),
            ElevatedButton(
                onPressed: () {
                  auth.signOut();
                },
                child: const Text("sign out")),
          ],
        ),
      ),
    );
  }
}
