import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:periods/pages/info1.dart';
import 'package:periods/pages/period_data.dart';
import 'package:periods/pages/profile.dart';
import 'package:toggle_switch/toggle_switch.dart';
import '../MyUsers.dart';
import 'calender.dart';
import 'info.dart';
import 'notification.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
class dash extends StatefulWidget {
  const dash({super.key});

  @override
  State<dash> createState() => _dashState();
}

class _dashState extends State<dash> {

  late int daysLeftForCurrentPeriod;
  late int daysLeftForNextPeriod;

  @override
  void initState() {
    super.initState();
    // Initialize state from singleton values
    daysLeftForCurrentPeriod = PeriodData().daysUntilPeriodEnds;
    daysLeftForNextPeriod = PeriodData().daysUntilNextPeriod;
  }
  void _endPeriod() {
    setState(() {
      PeriodData().reset(); // Reset period data
    });
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => dash()),
    );
  }


  Future<String?> getUsername() async {
    var userdata = MyUser().getCurrentUser();
    DocumentSnapshot doc =
    await FirebaseFirestore.instance.collection("User").doc(userdata.uid).get();

    if (doc.exists) {
      final Map<String, dynamic>? data = doc.data() as Map<String, dynamic>?;

      if (data != null && data['user_name'] != null) {
        return data['user_name'];
      }
    }
    return null;
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        child: Stack(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Container(
                    height: 600,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(236, 153, 153, 10),
                        borderRadius: BorderRadius.only(bottomRight: Radius.circular(80),bottomLeft: Radius.circular(80))
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 520,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(bottomRight: Radius.circular(80),bottomLeft: Radius.circular(80))
                          ),
                          child: Column(
                            children: [
                              SizedBox(height: 80,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20.0),
                                    child: Container(
                                      child: FutureBuilder<String?>(
                                        future: getUsername(), // Replace with the actual user ID
                                        builder: (context, usernameSnapshot) {
                                          if (usernameSnapshot.connectionState == ConnectionState.waiting) {
                                            return CircularProgressIndicator();
                                          } else if (usernameSnapshot.hasError) {
                                            return Text('Error: ${usernameSnapshot.error}');
                                          } else if (usernameSnapshot.hasData) {
                                            return Text(
                                              'Hi, ${usernameSnapshot.data}',
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black),
                                            );
                                          } else {
                                            return Text('No username available');
                                          }
                                        },
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context){
                                        return notify();
                                      }));
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 20.0),
                                      child: Icon(Icons.notifications_active),
                                    ),
                                  )
                                ],
                              ),
                              Container(
                                height: 400,
                                width: 400,
                                child: Stack(
                                  children: [
                                    Positioned(
                                        top: 0,
                                        left: 0,
                                        child: Container(
                                          height: 400,
                                          width: 400,
                                          child: Lottie.asset('assets/Animation/AsLxNH4JUv.json'),

                                        )
                                    ),
                                    Positioned(
                                        top: 10,
                                        left: 40,
                                        child: Text("Your Periods starts in",style: TextStyle(fontSize: 14),)),
                                    Positioned(
                                        top: 200,
                                        left: 180,
                                        child: Text("$daysLeftForNextPeriod days"))

                                  ],
                                ),

                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10,),
                        ElevatedButton(
                          onPressed: _endPeriod, // End period when pressed
                          child: const Text('End Period'),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.red,
                            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                            textStyle: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 40,),
                  Container(
                    height: 250,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(236, 153, 153, 10),
                      borderRadius: BorderRadius.only(topRight: Radius.circular(100),bottomRight: Radius.circular(100))
                  ),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("Days for the period to end"),
                        Container(
                          child: CircularPercentIndicator(
                            animation: true,
                            animationDuration: daysLeftForCurrentPeriod.toInt(),
                            radius: 100,
                            lineWidth: 40,
                            percent: 0.3,
                            progressColor: Colors.green,
                            backgroundColor: Colors.redAccent,
                            circularStrokeCap: CircularStrokeCap.round,
                            center: Text("$daysLeftForCurrentPeriod days"),
                          )
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [

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
                            height: 200,
                            width: 170,
                            child:Center(
                              child: Column(
                                children: [
                                  Container(
                                    height: 140,
                                    width: 140,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage("assets/images/uff_potato.png"),
                                            fit: BoxFit.cover
                                        )
                                    ),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Text("What is menstrual cycle?",
                                      style: TextStyle(color: Colors.white,

                                          fontSize: 14),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            decoration: BoxDecoration(
                                color:  Color.fromRGBO(236, 153, 153, 20),
                                borderRadius: BorderRadius.circular(50)
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return info1();
                            }
                            )
                            );
                          },
                          child: Container(
                            height: 200,
                            width: 170,
                            child:Center(
                              child: Column(
                                children: [
                                  Container(
                                    height: 140,
                                    width: 140,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage("assets/images/selflove.png"),
                                            fit: BoxFit.cover
                                        )
                                    ),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Text("What is Ovulation?",
                                      style: TextStyle(color: Colors.white,

                                          fontSize: 14),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            decoration: BoxDecoration(
                                color:  Color.fromRGBO(236, 153, 153, 20),
                                borderRadius: BorderRadius.circular(50)
                            ),
                          ),
                        ),
                      ),


                    ],
                  ),
                  SizedBox(height: 100,)
                ],
              ),
            ),
            Positioned(
                bottom: 10 ,
                right: 10,
                left: 10,
                child: Container(
                  height: 90,
                  width: 90,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        child: Container(
                            decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.white),
                            child: Icon(Icons.home_filled,size: 40,color: Colors.black,)),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const calendar()),
                          );
                        },
                        child: Container(
                          height: 40,
                          width: 40,
                          child: Icon(CupertinoIcons.calendar_today,size: 40,color: Colors.white,),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const profile()),
                          );
                        },
                        child: Container(
                          height: 50,
                          width: 50,
                          child: Container(
                              decoration: BoxDecoration(shape: BoxShape.circle,),
                              child: Icon(CupertinoIcons.profile_circled,size: 40,color: Colors.white,)),
                        ),
                      )
                    ],
                  ),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(60),color: Color.fromRGBO(236, 153, 153, 10)),
                )
            ),
          ],
        ),
      ),
    );
  }
}