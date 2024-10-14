import 'dart:async';

import 'package:icontesting/my_card/confetti.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyAppRoot());
}

class MyAppRoot extends StatefulWidget {
  const MyAppRoot({super.key});

  @override
  State<MyAppRoot> createState() => _MyAppRootState();
}

class _MyAppRootState extends State<MyAppRoot> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MySplashScreen()
    );
  }
}

class MySplashScreen extends StatefulWidget {
  const MySplashScreen({super.key});

  @override
  State<MySplashScreen> createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 5), 
      () { 
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const MyConfetti()));
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.pink,
        body: Center(
          child: CircularProgressIndicator(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
