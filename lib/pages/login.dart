import 'package:flutter/material.dart';
import 'package:periods/components/my_button.dart';
import 'package:periods/components/my_textfield.dart';
import 'package:periods/pages/dashboard.dart';
import 'package:periods/pages/register.dart';
class login extends StatefulWidget {
  login({super.key});

   //login method


  @override
  State<login> createState() => _loginState();
}
class _loginState extends State<login> {
//text controllers
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
             MyTextField(
                  hintText: "Email",
                  obscuretext: false,
                  controller: emailcontroller
              ),
              SizedBox(height: 10),
              //textfield for password
              MyTextField(
                  hintText: "Password",
                  obscuretext: true,
                  controller: passwordcontroller
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
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return dash();
                    }));

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
}

