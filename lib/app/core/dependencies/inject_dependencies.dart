import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:just_play/app/data/repositories/auth_repository_impl.dart';

Future<void> injectDependencies() async {
  Get.lazyPut(
    () => AuthRepositoryImpl(
      firebaseAuth: FirebaseAuth.instance,
    ),
    fenix: true,
  );
  // Get.lazyPut<AuthenticationRepository>(
  //   () => AuthenticationRepositoryImpl(
  //     firebaseAuth: FirebaseAuth.instance,
  //     googleSignIn: GoogleSignIn(),
  //     facebookAuth: FacebookAuth.i,
  //   ),
  // );
}
