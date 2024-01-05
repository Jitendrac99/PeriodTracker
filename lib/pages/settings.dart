import 'package:flutter/material.dart';
import 'package:periods/pages/login.dart';
class settings extends StatefulWidget {
  const settings({super.key});

  @override
  State<settings> createState() => _settingsState();
}

class _settingsState extends State<settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(253, 213, 200, 1),
      body: Container(
        child: Stack(
          children: [
            Column(
              children: [
                SizedBox(height: 60,),

                Text("Settings",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("     How long does your period last?", style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black54
                    ),),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Card(
                    color: Color.fromRGBO(249, 71, 108, 50),
                    child: ListTile(
                      leading: Icon(Icons.water_drop, color: Colors.red,),
                      title: Text('period length', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                    ),
                  ),
                ),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("    How long does your cycle last?",
                      style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.bold
                    ),),
                  ],
                ),


                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Card(
                    color: Color.fromRGBO(249, 71, 108, 50),
                    child: ListTile(
                      leading: Icon(Icons.hourglass_bottom, color: Colors.white,),
                      title: Text('Cycle length', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                    ),
                  ),
                ),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("    Forgot Password?",
                      style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.bold
                      ),),
                  ],
                ),


                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Card(
                    color: Color.fromRGBO(249, 71, 108, 50),
                    child: ListTile(
                      leading: Icon(Icons.key, color: Colors.white,),
                      title: Text('Change Password', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                    ),
                  ),
                ),

                Center(
                    child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("  Write a review!", style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black54
                                  ),),
                                ],
                              ),
                              Container(
                                height: 53,
                                width: 380,
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(249, 71, 108, 50),
                                  borderRadius: BorderRadius.circular(10)

                                ),
                                child: InkWell(
                                  onTap: () {
                                    showdialog(context);
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text(
                                      "📑     Feedback",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                      ),

                      ),
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: InkWell(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context){
                                      return login();
                                    }));
                                  },
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(20),
                                            color: Color.fromRGBO(249, 71, 108, 60),
                                          ),
                                          height: 40,
                                          width: 100,
                                          child: Center(
                                            child: Text("back", style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold
                                            ),
                                            ),
                                          )),
                                    ],
                                  ),
                                ),
                              )

                      ],


                          ),
                            ),)],
                          ),
                        ],
                      ),
                        ),

    );
                    }
                  }


void showdialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: Colors.white,
        title: Text("Feedback Submitted", style: TextStyle(color: Colors.pink),),
        content: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
          ),
          maxLines: 5,
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text("OK", style: TextStyle(color: Colors.pink),),
          ),


        ],
      );

    },
  );
}

