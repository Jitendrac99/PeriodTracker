import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:periods/pages/period_data.dart';
import '../Email.dart';
import '../MyUsers.dart';

class notify extends StatefulWidget {


  const notify({super.key});

  @override
  State<notify> createState() => _notifyState();
}
Future<String?> getEmail() async {
  var userdata = MyEmail().getCurrentUser();
  DocumentSnapshot doc =
  await FirebaseFirestore.instance.collection("User").doc(userdata.uid).get();

  if (doc.exists) {
    final Map<String, dynamic>? data = doc.data() as Map<String, dynamic>?;

    if (data != null && data['email'] != null) {
      return data['email'];
    }
  }
  return null;
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

class _notifyState extends State<notify> {

  late int daysLeftForCurrentPeriod;
  late int daysLeftForNextPeriod;

  @override
  void initState() {
    super.initState();
    // Initialize state from singleton values
    daysLeftForCurrentPeriod = PeriodData().daysUntilPeriodEnds;
    daysLeftForNextPeriod = PeriodData().daysUntilNextPeriod;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(253, 213, 200, 1),
      appBar: AppBar(
        title: Text("Notifications", style: TextStyle(fontWeight: FontWeight.bold),),
        backgroundColor: Color.fromRGBO(253, 213, 200, 1),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
                height: 300,
                width: 400,
                child: Stack(
                  children: [
                    Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                          height: 300,
                          width: 400,
                          child: Lottie.asset('assets/Animation/bell.json'),
                        )
                    ),
                  ],
                ),
              ),
              Container(
                height: 100,
                width: 360,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FutureBuilder<String?>(
                      future: getUsername(), // Replace with the actual user ID
                      builder: (context, usernameSnapshot) {
                        if (usernameSnapshot.connectionState == ConnectionState.waiting) {
                          return CircularProgressIndicator();
                        } else if (usernameSnapshot.hasError) {
                          return Text('Error: ${usernameSnapshot.error}');
                        } else if (usernameSnapshot.hasData) {
                          return Text(
                            'Hello, ${usernameSnapshot.data} welcome to Period Tracker hope you enjoy your stay.',
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.black),
                          );
                        } else {
                          return Text('No username available');
                        }
                      },
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 100,
                width: 360,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(child: Text('We would like to notify you that your periods may start in the period of $daysLeftForNextPeriod days')),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 100,
                width: 360,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(child: Text('We would like to notify you that your periods may end within $daysLeftForCurrentPeriod days')),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 100,
                width: 360,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: FutureBuilder<String?>(
                        future: getEmail(), // Replace with the actual user ID
                        builder: (context, usernameSnapshot) {
                          if (usernameSnapshot.connectionState == ConnectionState.waiting) {
                            return CircularProgressIndicator();
                          } else if (usernameSnapshot.hasError) {
                            return Text('Error: ${usernameSnapshot.error}');
                          } else if (usernameSnapshot.hasData) {
                            return Text(
                              'You have been logged in into the Period Tracker application with the email ${usernameSnapshot.data}',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black),
                            );
                          } else {
                            return Text('No username available');
                          }
                        },
                      ),
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}