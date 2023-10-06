import 'package:flutter/material.dart';
import 'package:quiz_app/palette.dart';
import 'package:quiz_app/screen/login.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Palette.primaryColor,
        ),
        home: const Login());
  }
}
