import 'package:flutter/material.dart';
class MyTextField extends StatelessWidget {

  final String hintText;
  final bool obscuretext;
  final TextEditingController controller;


  const MyTextField({
    super.key,
    required this.hintText,
    required this.obscuretext,
    required this.controller
  });



  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        hintText: hintText
      ),
      obscureText: obscuretext
    );
  }
}
