import 'dart:async';
import 'package:ebook/signup.dart';
import 'package:flutter/material.dart';
import 'homescreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(
            builder: (context) => const signupscreen(),
          ));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xff030303),
        child: const Center(
          child: CircleAvatar(
            radius: 140,
            backgroundImage: AssetImage(
              "images/tan2004.png",
            ),
          ),
        ),
      ),
    );
  }
}