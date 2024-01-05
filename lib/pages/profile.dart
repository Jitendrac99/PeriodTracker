import 'package:flutter/material.dart';
import 'package:periods/pages/login.dart';
import 'package:periods/pages/settings.dart';
import 'package:periods/pages/splash_screen.dart';
import 'calender.dart';
import 'dashboard.dart';
class profile extends StatelessWidget {
  const profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
          height: double.infinity,
          width: double.infinity,
          color: Color.fromRGBO(253, 213, 200, 1),
          child: Stack(
            children: [

              Positioned(
                top: 50,
                left: 160,
                child: CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage('assets/images/img.png'),
                ),
              ),
              Positioned(
                top: 150,
                left: 150,
                child: Text(
                  'NAS SAN',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              Positioned(
                top: 180,
                left: 179,
                child: Text(
                  'Age: 19',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 10,),

              Positioned(
                top: 215,
                left: 10,
                right: 10,
                child: Container(
                  height: 590,
                  width: 400,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(253, 213, 200, 1),
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Stack(
                    children: [
                      Column(

                        children: [
                          SizedBox(height: 20),
                          Card(
                            color: Color.fromRGBO(249, 71, 108, 1),
                            child: ListTile(
                              leading: Icon(Icons.email, color: Colors.white,),
                              title: Text('san@gmail.com', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                            ),
                          ),
                          SizedBox(height: 20,),
                          Card(
                            color: Color.fromRGBO(249, 71, 108, 1),
                            child: ListTile(
                              leading: Icon(Icons.phone, color: Colors.white,),
                              title: Text('+977 9812345678', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                            ),
                          ),
                          SizedBox(height: 20,),
                          Card(
                            color: Color.fromRGBO(249, 71, 108, 1),
                            child: ListTile(
                              leading: Icon(Icons.location_on, color: Colors.white,),
                              title: Text('Kathmandu, Nepal', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
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
          )



      ),
    );
  }
}


