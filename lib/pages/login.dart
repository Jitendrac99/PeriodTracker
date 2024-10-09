import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:periods/components/my_button.dart';
import 'package:periods/pages/dashboard.dart';
import 'package:periods/pages/password.dart';
import 'package:periods/pages/register.dart';

import '../Firebase_auth.dart';
import '../Form_controller.dart';
class login extends StatefulWidget {
  login({super.key});
  @override
  State<login> createState() => _loginState();
}
class _loginState extends State<login> {
//text controllers
  final FirebaseAuthService _auth = FirebaseAuthService();
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();

//login method
void login(){}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(120)),
                    image: DecorationImage(
                        image: AssetImage("assets/images/tree1.png"),
                        fit: BoxFit.cover
                    ),
                    color: Colors.grey),
              ),

             SizedBox(height: 25,),
             //textfield for email
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: FormContainerWidget(
                  hintText: "Enter email",
                  controller: emailcontroller,
                ),
              ),
              SizedBox(height: 10),
              //textfield for password
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: FormContainerWidget(
                  hintText: "Enter password",
                  controller: passwordcontroller,
                  isPasswordField: true,
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(right: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return Pass();
                        }));
                      },
                      child: Text("Forgot password?",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(255, 129, 149, 1)
                        ),
                      ),
                    )],
                ),
              ),
              SizedBox(height: 25,),
              Padding(
                padding: const EdgeInsets.only(left: 25,right: 25),
                child: MyButton(
                    text: "Login",
                    onTap: (){
                      return _signin();
                    },
                ),
              ),
              SizedBox(height: 25,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?", style: TextStyle(
                    fontWeight: FontWeight.bold
                  ),),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return register();
                      }));
                    },
                      child: Text(" Register Here",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(255, 129, 149, 1),
                        )
                      )
                  ),
                ],
              ),



            ],

          ),
        ),
      ),
    );
  }
  void _signin()async{

    String password =passwordcontroller.text;
    String email = emailcontroller.text;

    User? user = await _auth.signin(email, password);

    if (user != null) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Success"),
            content: Text("User is successfully logged in"),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => dash()),
                  );
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Login failed"),
            content: Text("Please check your email and password and try again."),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context); // Close the dialog
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    }

  }
}

