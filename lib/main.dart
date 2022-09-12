import 'package:flutter/material.dart';
import 'package:app_for_the_society/Screen/home.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:app_for_the_society/Screen/login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'App for the society';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: LoginPage(),
    );
  }
}