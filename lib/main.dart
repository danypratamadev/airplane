import 'package:airplane/ui/pages/bonus.dart';
import 'package:airplane/ui/pages/getstarted.dart';
import 'package:airplane/ui/pages/signup.dart';
import 'package:airplane/ui/pages/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) => const SplashPage(),
        '/getstarted': (context) => const GetStartedPage(),
        '/signup': (context) => const SignUpPage(),
        '/bonus': (context) => const BonusPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}