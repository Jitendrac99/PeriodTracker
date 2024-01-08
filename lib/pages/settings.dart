import 'package:flutter/material.dart';
class settings extends StatefulWidget {
  const settings({super.key});

  @override
  State<settings> createState() => _settingsState();
}

class _settingsState extends State<settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(253, 213, 200, 1),
        title: Text("Settings",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20),
        ),
      ),
      backgroundColor: Color.fromRGBO(253, 213, 200, 1),
      body: Container(
        child: Stack(
            children: [
              Column(
                children: [


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
                        leading: Icon(Icons.today_sharp, color: Colors.white,),
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

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("    Edit Profile",
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
                        title: Text('Edit Profile', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ),

                  Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("    Your Review Matters",
                          style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.bold
                          ),
                        ),


                      ]
                  ),

                  InkWell(
                    onTap: () {
                      showdialog(context);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Card(
                        color: Color.fromRGBO(249, 71, 108, 50),
                        child: ListTile(
                          leading: Icon(Icons.feedback, color: Colors.white,),
                          title: Text(
                            "Feedback",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

                ],
              ),


            ]
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
        title: Text("Submit your feedback", style: TextStyle(color: Colors.pink),),
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
