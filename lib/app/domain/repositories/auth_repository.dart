import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthRepository {
  Stream<User?> authState();
  Future<void> logIn(String emailAddress, String password);
  Future<void> signOut();
}
