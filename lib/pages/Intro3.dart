
import 'package:flutter/material.dart';
import 'package:periods/pages/login.dart';
class Intro3 extends StatefulWidget {
  const Intro3({super.key});

  @override
  State<Intro3> createState() => _Intro3State();
}
class _Intro3State extends State<Intro3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            Positioned(
              top: 200,
              left: 100,
              child: Container(
                height: 200,
                width: 200,
                decoration:BoxDecoration(color: Colors.red,shape: BoxShape.circle) ,
              ),
            ),
            Positioned(
              left: 80,
              top: 160,
              child: Container(
                height: 250,
                width: 250,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/jump.png"),
                        fit: BoxFit.cover
                    )
                ),
              ),
            ),
            Positioned(
                top: 440,
                left: 40,
                child: Text("Access personalized",style: TextStyle(fontSize: 26),)
            ),
            Positioned(
              top: 470,
              left: 60,
              child: Container(
                width: 300,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Expanded(
                      child: Text("tips and healthy habits to gain insights into your health",style: TextStyle(fontSize: 20),)),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 110,
              right: 110,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  login()),
                  );
                },
                child: Container(
                  height: 100,
                  width: 200,
                  child: Center(child: Text("Next",style: TextStyle(color: Colors.white,fontSize: 20),)),
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.only(topRight: Radius.circular(100),topLeft: Radius.circular(100))
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
