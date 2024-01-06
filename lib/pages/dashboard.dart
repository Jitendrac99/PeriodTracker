import 'package:lottie/lottie.dart';
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
            Positioned(
              top: 70,
              left: 50,
              child: Container(
                height: 300,
                width: 300,
                child: Lottie.asset(
                  "assets/Animation/period.json",
                  fit: BoxFit.cover,
                ),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromRGBO(250, 238, 209,100),
                ),
              ),
            ),
            Positioned(
              top: 400,
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
              bottom: 100,
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