import 'package:flutter/material.dart';
import 'package:flutter_app/pages/sign_up.dart';
import 'package:flutter_app/pages/splash.dart';
import 'onboard_screen/onboard_screen.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter App',
      home: OnboardScreen()
    );
  }
}
