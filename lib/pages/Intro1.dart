
import 'package:flutter/material.dart';

import 'Intro2.dart';

class Intro1 extends StatefulWidget {
  const Intro1({super.key});

  @override
  State<Intro1> createState() => _Intro1State();
}

class _Intro1State extends State<Intro1> {
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
              left: 70,
              top: 100,
              child: Container(
                height: 250,
                width: 250,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/uff_potato.png"),
                        fit: BoxFit.cover
                    )
                ),
              ),
            ),
            Positioned(
                top: 440,
                left: 40,
                child: Text("Track your periods",style: TextStyle(fontSize: 26),)
            ),
            Positioned(
              top: 470,
              left: 60,
              child: Container(
                width: 300,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Expanded(
                      child: Text("and predict upcoming cycles with accuracy",style: TextStyle(fontSize: 20),)),
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
                    MaterialPageRoute(builder: (context) => const Intro2()),
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
