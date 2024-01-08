import 'package:flutter/material.dart';

class Pass extends StatefulWidget {
  const Pass({super.key});

  @override
  State<Pass> createState() => _PassState();
}

class _PassState extends State<Pass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(253, 213, 200, 1),
      appBar: AppBar(
        title: Text('Reset Password', style: TextStyle(
          fontWeight: FontWeight.bold,

        ),),
        backgroundColor: Color.fromRGBO(253, 213, 200, 1),

      ),
      body: Center(
        child: Text(
          "Enter your email, and we'll send you a link to reset your password",
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}