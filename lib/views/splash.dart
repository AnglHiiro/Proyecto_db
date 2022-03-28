import 'dart:async';
import 'package:flutter/material.dart';
import 'package:restaurant/views/login.dart';
import 'package:restaurant/values.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreen createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Hero(
        tag: 'logo', 
        child: Container(
          decoration: BoxDecoration(
            color: fusionRed,
          ),
          child: Center(
            child: Image.asset(
              'assets/images/logo.png',
              width: 290,
              height: 290,
            ),
          ),
        ),
      ),
    );
  }

  startTimer() {
    var _duration = const Duration(milliseconds: 1000);
    return Timer(_duration, navigate);
  }

  void navigate() {
    Navigator.of(context).push(PageRouteBuilder(
      transitionDuration: Duration(seconds: 1),
      pageBuilder: (_, __, ___) => LoginScreen(),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }
}