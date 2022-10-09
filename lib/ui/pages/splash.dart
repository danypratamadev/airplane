import 'dart:async';
import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    Timer(const Duration(seconds: 3), (){
      Navigator.pushNamed(context, '/getstarted');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100.0,
              height: 100.0,
              margin: const EdgeInsets.only(bottom: 50.0),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/img/icon_plane.png')
                )
              ),
            ),
            Text(
              'AIRPLANE',
              style: whiteTextStyle.copyWith(
                fontSize: 32.0,
                fontWeight: medium,
                letterSpacing: 10.0
              ),
            )
          ],
        ),
      ),
    );
  }
}