
import 'package:flutter/material.dart';

import 'Intro3.dart';

class Intro2 extends StatefulWidget {
  const Intro2({super.key});

  @override
  State<Intro2> createState() => _Intro2State();
}

class _Intro2State extends State<Intro2> {
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
              left: 30,
              top: 185,
              child: Container(
                height: 250,
                width: 250,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/arey.png"),
                        fit: BoxFit.cover
                    )
                ),
              ),
            ),
            Positioned(
                top: 440,
                left: 40,
                child: Text("Set Reminders",style: TextStyle(fontSize: 26),)
            ),
            Positioned(
              top: 470,
              left: 60,
              child: Container(
                width: 300,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Expanded(
                      child: Text("for period and ovulation days",style: TextStyle(fontSize: 20),)),
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
                    MaterialPageRoute(builder: (context) => const Intro3()),
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
