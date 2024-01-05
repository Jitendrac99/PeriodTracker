import 'package:flutter/material.dart';
import 'dashboard.dart';
import 'profile.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

class calender extends StatefulWidget {
  const calender({super.key});

  @override
  State<calender> createState() => _calenderState();
}

class _calenderState extends State<calender> {
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
              top: 60,
              left: 10,
              right: 10,
              child: Container(
                child: TableCalendar(
                  firstDay: DateTime.utc(2010, 10, 16),
                  lastDay: DateTime.utc(2030, 3, 14),
                  focusedDay: DateTime.now(),
                ),
                height: 400,
                width: 390,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color.fromRGBO(255, 129, 149, 100)),
              ),
            ),
            Positioned(
              left: 10,
              right: 10,
              top: 470,
              child: Container(
                height: 70,
                width: 395,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(250, 242, 232, 1),
                    borderRadius: BorderRadius.circular(30)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        "End period", style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(249, 71, 108, 1),
                          fontSize: 18
                      ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: ToggleSwitch(
                        minWidth: 60,
                        activeBgColor: [Color.fromRGBO(249, 71, 108, 1)],
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
            Positioned(
              left: 10,
              right: 10,
              top: 550,
              child: Container(
                height: 70,
                width: 395,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(250, 242, 232, 1),
                    borderRadius: BorderRadius.circular(30)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        "Cramps", style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color:Color.fromRGBO(249, 71, 108, 1)
                          ,
                          fontSize: 18
                      ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: ToggleSwitch(
                        minWidth: 60,
                        activeBgColor: [Color.fromRGBO(249, 71, 108, 1)],
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
            Positioned(
              left: 10,
              right: 10,
              top: 630,
              child: Container(
                height: 70,
                width: 395,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(250, 242, 232, 1),
                    borderRadius: BorderRadius.circular(30)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        "Mood", style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(249, 71, 108, 1),
                          fontSize: 18
                      ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Text('😀'),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Text('😄'),
                          ),
                          Padding(
                            padding:const EdgeInsets.only(right: 8.0),
                            child: Text('🙂'),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Text('😐'),
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ),
            Positioned(
              left: 10,
              right: 10,
              top: 710,
              child: Container(
                height: 70,
                width: 395,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(250, 242, 232, 1),
                    borderRadius: BorderRadius.circular(30)
                ),
                child: Row(

                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        " Flow Intensity", style: TextStyle(
                          color: Color.fromRGBO(249, 71, 108, 1),
                          fontWeight: FontWeight.bold,
                          fontSize: 18
                      ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: ToggleSwitch(
                        minWidth: 50,
                        activeBgColor: [Colors.pink],
                        inactiveBgColor: Color.fromRGBO(253, 213, 200, 1),
                        initialLabelIndex: 0,
                        totalSwitches: 3,
                        labels: ['L', 'M', 'H'],
                        onToggle: (index) {
                          print('switched to: $index');
                        },
                      ),
                    ),
                  ],
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
                    Icon(Icons.calendar_month_sharp, color: Colors.pink, size: 40,),
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
