import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:periods/data/Homepage.dart';
import 'package:periods/pages/calender.dart';
import 'package:periods/pages/info.dart';
import 'package:periods/pages/profile.dart';
import 'package:toggle_switch/toggle_switch.dart';

class dash extends StatefulWidget {
  const dash({super.key});

  @override
  State<dash> createState() => _dashState();
}
class _dashState extends State<dash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Color.fromRGBO(253, 213, 200, 1),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 37, right: 10, left: 10),
              child: Container(
                  height: 240,
                  width: 400,
                  decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child:Row(
                      children: [
                        Container(
                          height: 240,
                          width: 400,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.pink,
                          ),

                          child: Column(
                            children: [
                              Text("Today", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
                              Container(
                                height: 25,
                                width: 60,
                                child: Center(child: Text("18 dec", style: TextStyle(color: Colors.white),)),

                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20), color: Colors.pink
                                ),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: Text("Your period starts in 4 days.", style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: 20
                                    ),
                                    ),
                                  ),
                                  Icon(CupertinoIcons.clock,
                                    color: Colors.white,
                                    size: 120,)
                                ],
                              ),

                            ],
                          ),

                        ),
                        Container(
                          height: 240,
                          width: 400,

                        ),
                        Container(
                          height: 240,
                          width: 400,
                          color: Colors.yellow,
                        ),
                        Container(
                          height: 240,
                          width: 400,
                          color: Colors.white,
                        ),
                        Container(
                          height: 240,
                          width: 400,
                          color: Colors.black,
                        ),
                        Container(
                          height: 240,
                          width: 400,
                          color: Colors.purple,
                        ),
                        Container(
                          height: 240,
                          width: 400,
                          color: Colors.blue,
                        ),

                      ],
                    ),
                  )
              ),
            ),
            Positioned(
              top: 280,
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Container(
                  height: 260,
                  width: 400,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(250, 242, 232, 1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: home(),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 240,
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Container(
                  height: 70,
                  width: 395,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(250, 242, 232, 1),
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "🩸  Start period", style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.pink,
                          fontSize: 18
                      ),
                      ),
                      ToggleSwitch(
                        activeBgColor: [Colors.pink],
                        initialLabelIndex: 0,
                        totalSwitches: 2,
                        labels: ["Yes", "No"],
                        onToggle: (index) {
                          print('switched to: $index');
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 60,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return info();
                    }
                    )
                    );
                  },
                  child: Container(
                    height: 170,
                    width: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromRGBO(250, 242, 232, 1),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        children: [
                          Text("What is menstrual cycle?", style: TextStyle(
                              color: Colors.pink,
                              fontSize: 25,
                              fontWeight: FontWeight.bold
                          ),
                          ),
                          Row(
                            children: [
                              Container(
                                  height: 100,
                                  child: Image.asset("assets/images/img_2.png",)),
                            ],
                          ),
                        ],
                      ),
                    ),

                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                height: 60 ,
                width: 420,
                color: Color.fromRGBO(253, 213, 200, 1),
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell
                      (onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return dash();
                      }));
                    },

                        child: Icon(Icons.bar_chart, color: Colors.pink, size: 40,)),
                    InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return calender();
                          }));
                        },
                        child: Icon(Icons.calendar_month_sharp, color: Colors.pink, size: 40,)),
                    InkWell(
                        onTap:(){
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return profile();
                          }));
                        },
                        child: Icon(Icons.girl, color: Colors.pink, size: 40,))],
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}
