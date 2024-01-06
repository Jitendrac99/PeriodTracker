import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:periods/components/my_button.dart';
import 'package:periods/pages/dashboard.dart';
import 'package:periods/pages/register.dart';

import '../Firebase_auth.dart';
import '../Form_controller.dart';
class login extends StatefulWidget {
  login({super.key});

   //login method


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
        backgroundColor: Color.fromRGBO(253, 213, 200, 1),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/logo.png',
                width: 350,
                height: 150,
                  color: Theme.of(context).colorScheme.primary,),

             SizedBox(height: 25,),
             //textfield for email
              FormContainerWidget(
                hintText: "Enter email",
                controller: emailcontroller,
              ),
              SizedBox(height: 10),
              //textfield for password
              FormContainerWidget(
                hintText: "Enter password",
                controller: passwordcontroller,
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("Forgot password?",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.primary),),
                ],
              ),
              SizedBox(height: 25,),
              MyButton(
                  text: "Login",
                  onTap: (){
                    return _signin();
                  },
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
                            color: Theme.of(context).colorScheme.primary),
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

    if (user!= null){
      print("User is sucessfully lggged in");
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => dash()),
      );
    }
    else{
      print("Error");
    }
  }
}

