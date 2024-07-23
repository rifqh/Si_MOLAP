import 'dart:async';
import 'package:flutter/material.dart';
import 'package:si_molap/Login&SignUp/login_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    splashscreenStart();
  }

  splashscreenStart() async {
    var duration = const Duration(seconds: 1);
    return Timer(duration, () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const LoginPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2C358B),
      body: Center(
        child: Container(
            height: 226,
            child: const Image(
                image: AssetImage(
              "images/logo_P.png",
            ))),
      ),
    );
  }
}
