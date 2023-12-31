import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:just_play/app/core/colors/app_colors.dart';
import 'package:just_play/app/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl extends AuthRepository {
  final FirebaseAuth firebaseAuth;
  AuthRepositoryImpl({required this.firebaseAuth});
  @override
  Future<UserCredential?> logIn(String emailAddress, String password) async {
    try {
      final credential = await firebaseAuth.createUserWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
      Get.snackbar(
        "Log In",
        "Welcome ${credential.user?.email}!",
        colorText: AppColors.white,
        backgroundColor: AppColors.green,
      );
      return credential;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
      } else if (e.code == 'email-already-in-use') {
        try {
          final credential = await firebaseAuth.signInWithEmailAndPassword(
              email: emailAddress, password: password);
          Get.snackbar(
            "Log In",
            "Welcome ${credential.user?.email}!",
            colorText: AppColors.white,
            backgroundColor: AppColors.green,
          );
          return credential;
        } on FirebaseAuthException catch (e) {
          if (e.code == "INVALID_LOGIN_CREDENTIALS") {
            Get.snackbar(
              "Error",
              "Invalid login credentials.",
              colorText: AppColors.white,
              backgroundColor: AppColors.red,
            );
          }
          if (e.code == "too-many-requests") {
            Get.snackbar(
              "Error",
              "Too many requests.",
              colorText: AppColors.white,
              backgroundColor: AppColors.red,
            );
          }
          if (e.code == 'wrong-password') {
            Get.snackbar(
              "Error",
              "Wrong password provided for that user.",
              colorText: AppColors.white,
              backgroundColor: AppColors.red,
            );
          }
          return null;
        }
      }
    } catch (e) {
      // print(e);
      return null;
    }
    return null;
  }

  @override
  Future<void> signOut() async {
    await firebaseAuth.signOut();
  }

  @override
  Stream<User?> authState() {
    Stream<User?> user = firebaseAuth.authStateChanges();
    return user;
  }

  @override
  Future<UserCredential?> googleLogin() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );
    return await firebaseAuth.signInWithCredential(credential);
  }
}
