import 'package:flutter/material.dart';

class Current extends StatelessWidget {
  String apple;
  Current({super.key,required this.apple});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text(
            "Periods starts in $apple days",style: TextStyle(fontSize: 30),
          ),
        ),
      ),
    );
  }
}
