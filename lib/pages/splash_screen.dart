import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:periods/pages/login.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    // Create a timer that triggers the navigation after a specified duration
    Timer(Duration(seconds: 2), () {
      Navigator.push(context, MaterialPageRoute(builder: (context){
        return login();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromRGBO(253, 213, 200, 1),
        child: Center(
          child: Image.asset(
            'assets/images/logo.png',
            width: 350,
            height: 150,
          ),
        ),
      ),
    );
  }
}

