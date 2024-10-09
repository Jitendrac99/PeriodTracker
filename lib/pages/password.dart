import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../Form_controller.dart';

class Pass extends StatefulWidget {
  const Pass({super.key});

  @override
  State<Pass> createState() => _PassState();
}

class _PassState extends State<Pass> {
  final emailcontroller = TextEditingController();

  @override
  void dispose(){
    emailcontroller.dispose();
    super.dispose();
  }

  Future password_reset() async{
    try{
      await FirebaseAuth.instance.sendPasswordResetEmail(email: emailcontroller.text.trim());
      showDialog(context: context, builder: (context){
        return AlertDialog(
          content: Text("Password Reset Link has been sent to your email"),
        );
      });
    } on FirebaseAuthException catch (e){
      print(e);
      showDialog(context: context, builder: (context){
        return AlertDialog(
          content: Text(e.message.toString()),
        );
      });
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forgot password'),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(253, 213, 200, 1),
      ),
      backgroundColor: Color.fromRGBO(253, 213, 200, 1),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 200,
            width: 200,
            child: Lottie.asset('assets/Animation/cat.json'),

          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
            "Enter your email, and we'll send you a link to reset your password",
            style: TextStyle(fontSize: 12),
            textAlign: TextAlign.center,
                    ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: FormContainerWidget(
              hintText: "Enter email",
              controller: emailcontroller,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: MaterialButton(onPressed: password_reset,
              child: Text("Reset"),
              color: Colors.green,
            ),
          )
        ]
      ),
    );
  }
}