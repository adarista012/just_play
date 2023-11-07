import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:just_play/app/app.dart';
import 'package:just_play/app/core/dependencies/inject_dependencies.dart';
import 'package:just_play/firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await injectDependencies();
  runApp(const App());
}
