import 'dart:async';

import 'package:flutter/material.dart';
import 'package:repoline/page/home.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  void wait() {
    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => const HomePage()),
            (route) => false));
  }

  @override
  void initState() {
    wait();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Text(
        'repoline',
        style: TextStyle(
            color: Colors.black87,
            fontFamily: 'SpaceMono',
            fontSize: 24,
            fontWeight: FontWeight.bold),
      )),
    );
  }
}
