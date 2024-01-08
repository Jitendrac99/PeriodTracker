import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:lottie/lottie.dart';
import 'package:periods/pages/profile.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../components/namr.dart';
import '../data/Homepage.dart';
import 'calender.dart';
import 'dashboard.dart';
import 'info.dart';
import 'notification.dart';
class dash extends StatefulWidget {
  const dash({super.key});

  @override
  State<dash> createState() => _dashState();
}

class _dashState extends State<dash> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Dashboard")),
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromRGBO(253, 213, 200, 1),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Color.fromRGBO(253, 213, 200, 1),
        child: Stack(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  SizedBox(height: 10,),
                  Container(
                    height: 300,
                    width: 300,
                    child: Stack(
                      children: [
                        Positioned(
                            top:80,
                            left: 44,
                            child: Text("Your Periods Starts in",style: TextStyle(fontSize: 20,color: Colors.pink),)),
                        Positioned(
                          top:0,
                          bottom: 0,
                          child: Lottie.asset(
                            "assets/Animation/period.json",
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          left: 90,
                            bottom: 100,
                            child: Text(
                            "9 Days"
                            ,style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.red),)),
                      ],
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromRGBO(250, 238, 209,100),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
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
                              color: Color.fromRGBO(247, 71, 128, 20),
                              fontSize: 18
                          ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ToggleSwitch(
                              minWidth: 60,
                              minHeight: 30,
                              activeBgColor: [Color.fromRGBO(249, 71, 108, 1),],
                              inactiveBgColor: Color.fromRGBO(253, 213, 200, 1),
                              initialLabelIndex: 0,
                              totalSwitches: 2,
                              labels: ["Yes", "No"],
                              onToggle: (index) {
                                print('switched to: $index');
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Padding(
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

                  Padding(
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
                        height: 70,
                        width: 400,
                        child:Padding(
                          padding: const EdgeInsets.all(9),
                          child: Row(
                            children: [
                              SizedBox(width: 20,),
                              Image.asset("assets/images/img_3.png", ),
                              SizedBox(width: 20,),
                              Text("What is menstrual cycle?",
                                style: TextStyle(color: Colors.pink,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),

                            ],
                          ),
                        ),
                        decoration: BoxDecoration(
                            color:  Color.fromRGBO(250, 242, 232, 1),
                            borderRadius: BorderRadius.circular(20)
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 100,)
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                color: Color.fromRGBO(253, 213, 200, 1),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: GNav(
                    gap: 2,
                    onTabChange: (index){
                      print(index);
                    },
                    backgroundColor: Colors.transparent,
                    color: Color.fromRGBO(249, 71, 108, 1),
                    activeColor: Color.fromRGBO(249, 71, 108, 1),
                    tabBackgroundColor: Colors.grey.shade300,
                    padding: EdgeInsets.all(16),
                    tabs: [
                      GButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return dash();
                          }
                          )
                          );
                        },
                        icon: Icons.bar_chart,
                        text: "Dashboard",),
                      GButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return calendar();
                          }
                          )
                          );
                        },
                        icon: Icons.calendar_month,
                        text: "Calender", ),
                      GButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return notify();
                          }));
                        },
                        icon: Icons.notifications_active,
                        text: "Notifications", ),
                      GButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return profile();
                          }));
                        },
                        icon: Icons.person,
                        text: "Profile",),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}