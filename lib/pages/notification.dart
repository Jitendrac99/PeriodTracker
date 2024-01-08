import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class notify extends StatefulWidget {
  const notify({super.key});

  @override
  State<notify> createState() => _notifyState();
}

class _notifyState extends State<notify> {
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
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Container(
                height: 100,
                width: 380,
                child: Stack(
                  children: [
                    Positioned(
                      top: 4,
                        right: 20,
                        child: Text("08/01/2024")),
                    Positioned(
                        top: 30,
                        left: 20,
                        child: Icon(CupertinoIcons.drop,color: Colors.red,size: 40,)),
                    Positioned(
                        top: 30,
                        left: 80,
                        child: Text("Your periods is expected to",style: TextStyle(color: Colors.redAccent,fontSize: 20),)),
                    Positioned(
                        top: 60,
                        left: 80,
                        child: Text("start after 9 days.",style: TextStyle(color: Colors.redAccent,fontSize: 20),)),

                  ],
                ),
                decoration: BoxDecoration(
                    color:Color.fromRGBO(250, 238, 209,1),
                    borderRadius: BorderRadius.circular(20)

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Container(
                height: 100,
                width: 380,
                child: Stack(
                  children: [
                    Positioned(
                        top: 4,
                        right: 20,
                        child: Text("08/01/2024")),
                    Positioned(
                        top: 30,
                        left: 20,
                        child: Icon(CupertinoIcons.info,color: Colors.red,size: 40,)),
                    Positioned(
                        top: 30,
                        left: 80,
                        child: Text("Some yoga postures can",style: TextStyle(color: Colors.redAccent,fontSize: 20),)),
                    Positioned(
                        top: 60,
                        left: 80,
                        child: Text("ease periods cramps.",style: TextStyle(color: Colors.redAccent,fontSize: 20),)),

                  ],
                ),
                decoration: BoxDecoration(
                    color:Color.fromRGBO(250, 238, 209,1),
                    borderRadius: BorderRadius.circular(20)

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Container(
                height: 100,
                width: 380,
                child: Stack(
                  children: [
                    Positioned(
                        top: 4,
                        right: 20,
                        child: Text("04/01/2024")),
                    Positioned(
                        top: 30,
                        left: 20,
                        child: Icon(CupertinoIcons.smiley,color: Colors.red,size: 40,)),
                    Positioned(
                        top: 30,
                        left: 80,
                        child: Text("Feel free to give us",style: TextStyle(color: Colors.redAccent,fontSize: 20),)),
                    Positioned(
                        top: 60,
                        left: 80,
                        child: Text("a feedback.",style: TextStyle(color: Colors.redAccent,fontSize: 20),)),

                  ],
                ),
                decoration: BoxDecoration(
                    color:Color.fromRGBO(250, 238, 209,1),
                    borderRadius: BorderRadius.circular(20)

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Container(
                height: 100,
                width: 380,
                child: Stack(
                  children: [
                    Positioned(
                        top: 4,
                        right: 20,
                        child: Text("08/01/2024")),
                    Positioned(
                        top: 30,
                        left: 20,
                        child: Icon(CupertinoIcons.lightbulb,color: Colors.red,size: 40,)),
                    Positioned(
                        top: 30,
                        left: 80,
                        child: Text("Want to know more about",style: TextStyle(color: Colors.redAccent,fontSize: 20),)),
                    Positioned(
                        top: 60,
                        left: 80,
                        child: Text("menstural cycle?.",style: TextStyle(color: Colors.redAccent,fontSize: 20),)),

                  ],
                ),
                decoration: BoxDecoration(
                    color:Color.fromRGBO(250, 238, 209,1),
                    borderRadius: BorderRadius.circular(20)

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Container(
                height: 100,
                width: 380,
                child: Stack(
                  children: [
                    Positioned(
                        top: 4,
                        right: 20,
                        child: Text("28/11/2023")),
                    Positioned(
                        top: 30,
                        left: 20,
                        child: Icon(CupertinoIcons.drop,color: Colors.red,size: 40,)),
                    Positioned(
                        top: 30,
                        left: 80,
                        child: Text("Your periods is expected to",style: TextStyle(color: Colors.redAccent,fontSize: 20),)),
                    Positioned(
                        top: 60,
                        left: 80,
                        child: Text("start after 10 days.",style: TextStyle(color: Colors.redAccent,fontSize: 20),)),

                  ],
                ),
                decoration: BoxDecoration(
                    color:Color.fromRGBO(250, 238, 209,1),
                    borderRadius: BorderRadius.circular(20)

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Container(
                height: 100,
                width: 380,
                child: Stack(
                  children: [
                    Positioned(
                        top: 4,
                        right: 20,
                        child: Text("08/01/2023")),
                    Positioned(
                        top: 30,
                        left: 20,
                        child: Icon(CupertinoIcons.profile_circled,color: Colors.red,size: 40,)),
                    Positioned(
                        top: 30,
                        left: 80,
                        child: Text("You have been logged in",style: TextStyle(color: Colors.redAccent,fontSize: 20),)),
                    Positioned(
                        top: 60,
                        left: 80,
                        child: Text("as Nikisha Joshi.",style: TextStyle(color: Colors.redAccent,fontSize: 20),)),

                  ],
                ),
                decoration: BoxDecoration(
                    color:Color.fromRGBO(250, 238, 209,1),
                    borderRadius: BorderRadius.circular(20)

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Container(
                height: 100,
                width: 380,
                child: Stack(
                  children: [
                    Positioned(
                        top: 4,
                        right: 20,
                        child: Text("06/01/2023")),
                    Positioned(
                        top: 30,
                        left: 20,
                        child: Icon(Icons.emoji_food_beverage_outlined,color: Colors.red,size: 40,)),
                    Positioned(
                        top: 30,
                        left: 80,
                        child: Text("Healthy diet can improve",style: TextStyle(color: Colors.redAccent,fontSize: 20),)),
                    Positioned(
                        top: 60,
                        left: 80,
                        child: Text("health.",style: TextStyle(color: Colors.redAccent,fontSize: 20),)),

                  ],
                ),
                decoration: BoxDecoration(
                    color:Color.fromRGBO(250, 238, 209,1),
                    borderRadius: BorderRadius.circular(20)

                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}