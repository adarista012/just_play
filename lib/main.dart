import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:just_play/app/app.dart';
import 'package:just_play/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const App());
}
