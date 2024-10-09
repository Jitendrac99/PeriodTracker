import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:periods/Email.dart';
import 'package:periods/MyAge.dart';
import 'package:periods/MyHeight.dart';
import 'package:periods/MyWeight.dart';
import 'package:periods/pages/index.dart';
import '../MyUsers.dart';
import 'calender.dart';
import 'dashboard.dart';
import 'login.dart';
import 'notification.dart';
class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
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

  Future<String?> getAge() async {
    var userdata = MyAge().getCurrentUser();
    DocumentSnapshot doc =
    await FirebaseFirestore.instance.collection("User").doc(userdata.uid).get();

    if (doc.exists) {
      final Map<String, dynamic>? data = doc.data() as Map<String, dynamic>?;

      if (data != null && data['age'] != null) {
        return data['age'];
      }
    }
    return null;
  }

  Future<String?> getHeight() async {
    var userdata = MyHeight().getCurrentUser();
    DocumentSnapshot doc =
    await FirebaseFirestore.instance.collection("User").doc(userdata.uid).get();

    if (doc.exists) {
      final Map<String, dynamic>? data = doc.data() as Map<String, dynamic>?;

      if (data != null && data['height'] != null) {
        return data['height'];
      }
    }
    return null;
  }

  Future<String?> getWeight() async {
    var userdata = MyWeight().getCurrentUser();
    DocumentSnapshot doc =
    await FirebaseFirestore.instance.collection("User").doc(userdata.uid).get();

    if (doc.exists) {
      final Map<String, dynamic>? data = doc.data() as Map<String, dynamic>?;

      if (data != null && data['weight'] != null) {
        return data['weight'];
      }
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.white,
          child: Stack(
            children: [
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: 520,
                  width: 400,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(236, 153, 153, 10),
                      borderRadius: BorderRadius.only(bottomRight: Radius.circular(60) ,bottomLeft:Radius.circular(60) )
                  ),
                ),
              ),
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: 440,
                  width: 410,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(bottomRight: Radius.circular(60) ,bottomLeft:Radius.circular(60) )
                  ),
                ),
              ),
              Positioned(
                left: 260,
                top: 460,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => login()),
                    );
                  },
                  child: Container(
                    height: 34,
                    width: 80,
                    child: Center(child: Text("Log Out")),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 40,
                top: 200,
                child: Container(
                  height: 180,
                  width: 180,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromRGBO(236, 153, 153, 10),
                  ),
                ),
              ),
              Positioned(
                left: 30,
                top: 140,
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/potato.png"),
                          fit: BoxFit.cover
                      )
                  ),
                ),
              ),
              Positioned(
                  top: 400,
                  left: 80,
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
                            '${usernameSnapshot.data}',
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
              Positioned(
                  top: 100,
                  right: 10,
                  child: Text("years")
              ),
              Positioned(
                  top: 75,
                  right: 50,
                  child: Container(
                    child: FutureBuilder<String?>(
                      future: getAge(), // Replace with the actual user ID
                      builder: (context, usernameSnapshot) {
                        if (usernameSnapshot.connectionState == ConnectionState.waiting) {
                          return CircularProgressIndicator();
                        } else if (usernameSnapshot.hasError) {
                          return Text('Error: ${usernameSnapshot.error}');
                        } else if (usernameSnapshot.hasData) {
                          return Text(
                            '${usernameSnapshot.data}',
                            style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          );
                        } else {
                          return Text('No Age available');
                        }
                      },
                    ),
                  ),
              ),
              Positioned(
                  top: 200,
                  right: 14,
                  child: Text("cm")
              ),
              Positioned(
                  top: 175,
                  right: 40,
                  child: Container(
                    child: FutureBuilder<String?>(
                      future: getHeight(), // Replace with the actual user ID
                      builder: (context, usernameSnapshot) {
                        if (usernameSnapshot.connectionState == ConnectionState.waiting) {
                          return CircularProgressIndicator();
                        } else if (usernameSnapshot.hasError) {
                          return Text('Error: ${usernameSnapshot.error}');
                        } else if (usernameSnapshot.hasData) {
                          return Text(
                            '${usernameSnapshot.data}',
                            style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          );
                        } else {
                          return Text('No Height available');
                        }
                      },
                    ),
                  ),
              ),
              Positioned(
                  top: 300,
                  right: 20,
                  child: Text("Kg")
              ),
              Positioned(
                  top: 275,
                  right: 45,
                  child: Container(
                    child: FutureBuilder<String?>(
                      future: getWeight(), // Replace with the actual user ID
                      builder: (context, usernameSnapshot) {
                        if (usernameSnapshot.connectionState == ConnectionState.waiting) {
                          return CircularProgressIndicator();
                        } else if (usernameSnapshot.hasError) {
                          return Text('Error: ${usernameSnapshot.error}');
                        } else if (usernameSnapshot.hasData) {
                          return Text(
                            '${usernameSnapshot.data}',
                            style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          );
                        } else {
                          return Text('No Weight available');
                        }
                      },
                    ),
                  ),
              ),

              Positioned(
                  top:600 ,
                  left: 80,
                  child: InkWell(
                    onTap: () {
                      showFeedbackDialog(context);
                    },
                    child: Container(
                      height: 90,
                      width: 90,
                      child: Icon(CupertinoIcons.smiley,size: 60),

                    ),
                  )
              ),
              Positioned(
                  top:600 ,
                  right: 80,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const index()),
                      );
                    },
                    child: Container(
                      height: 90,
                      width: 90,
                      child: Icon(CupertinoIcons.info,size: 60,),

                    ),
                  )
              ),
              Positioned(
                  top: 465,
                  left: 50,
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
                            '${usernameSnapshot.data}',
                            style: TextStyle(
                                fontSize: 14,
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
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const dash()),
                            );
                          },
                          child: Container(
                            height: 40,
                            width: 40,
                            child: Icon(Icons.home_filled,size: 40,color: Colors.white,),
                          ),
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
                        Container(
                          height: 50,
                          width: 50,
                          child: Container(
                              decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.white),
                              child: Icon(CupertinoIcons.profile_circled,size: 40,color: Colors.black,)),
                        )
                      ],
                    ),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(60),color: Color.fromRGBO(236, 153, 153, 10)),
                  )
              ),

            ],
          )



      ),
    );
  }
}

void showFeedbackDialog(BuildContext context) {
  final TextEditingController feedbackController = TextEditingController();

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Submit Feedback'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            TextField(
              controller: feedbackController,
              decoration: InputDecoration(
                labelText: 'Enter your feedback',
              ),
              maxLines: 3,
            ),
          ],
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(); // Close the dialog
            },
            child: Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              String feedback = feedbackController.text;
              if (feedback.isNotEmpty) {
                // Handle the feedback submission
                print('Feedback submitted: $feedback');
              }
              Navigator.of(context).pop(); // Close the dialog
            },
            child: Text('Submit'),
          ),
        ],
      );
    },
  );
}
