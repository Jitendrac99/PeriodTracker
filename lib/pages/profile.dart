import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:periods/pages/about.dart';
import 'package:periods/pages/settings.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:Container(
          height: double.infinity,
          width: double.infinity,
          color: Color.fromRGBO(253, 213, 200, 1),
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(height: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage("assets/images/img.png"),
                                fit: BoxFit.cover
                            )
                        ),
                      ),
                    ],
                  ),
                  Container(
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
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.pink),
                          );
                        } else {
                          return Text('No username available');
                        }
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        SizedBox(height: 10),
                        Card(
                          color: Color.fromRGBO(249, 71, 108, 1),
                          child: ListTile(
                            leading: Icon(Icons.person, color: Colors.white,),
                            title: Text('Nikisha Joshi', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                          ),
                        ),
                        SizedBox(height: 20,),
                        Card(
                          color: Color.fromRGBO(249, 71, 108, 1),
                          child: ListTile(
                            leading: Icon(Icons.alternate_email, color: Colors.white,),
                            title: Text('Nikisha@gmail.com', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                          ),
                        ),
                        SizedBox(height: 20,),
                        Card(
                          color: Color.fromRGBO(249, 71, 108, 1),
                          child: ListTile(
                            leading: Icon(Icons.calendar_month, color: Colors.white,),
                            title: Text('Date of Birth: 28th july 2004', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                          ),

                        ),
                        SizedBox(height: 20,),
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return settings();
                            }));
                          },
                          child: Card(
                            color: Color.fromRGBO(249, 71, 108, 1),
                            child: ListTile(
                              leading: Icon(Icons.settings, color: Colors.white,),
                              title: Text('Settings',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                            ),
                          ),
                        ),

                        SizedBox(height: 20,),
                        Card(
                          color: Color.fromRGBO(249, 71, 108, 1),
                          child: ListTile(
                            leading: Icon(Icons.info, color: Colors.white,),
                            title: InkWell(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)
                                  {
                                    return about();
                                  }
                                  ));
                                },
                                child: Text('About FemmeFlow', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)),
                          ),
                        ),

                        SizedBox(height: 20,),
                        Card(
                          color: Color.fromRGBO(249, 71, 108, 1),
                          child: ListTile(
                            leading: Icon(Icons.logout, color: Colors.white,),
                            title: InkWell(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)
                                  {
                                    return login();
                                  }
                                  ));
                                },
                                child: Text('Log out', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 100,)
                ],
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
                      gap: 8,
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
          )



      ),
    );
  }
}