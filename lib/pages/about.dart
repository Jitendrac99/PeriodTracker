import 'package:flutter/material.dart';
class about extends StatefulWidget {
  const about({super.key});

  @override
  State<about> createState() => _infoState();
}

class _infoState extends State<about> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(253, 213, 200, 1),

        appBar: AppBar(
          backgroundColor: Color.fromRGBO(253, 213, 200, 1),
          title: Text("About FemmeFlow",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),


        body: Padding(
          padding: const EdgeInsets.all(12),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Container(
                  height: 400,
                  width: 500,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(250, 242, 232, 1),
                    borderRadius: BorderRadius.circular(20),

                  ),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,

                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                          children: const[
                            Text(
                              'Introduction to FemmeFlow',
                              style: TextStyle(fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.pink
                              ),
                            ),
                            SizedBox(height: 10),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Welcome to FemmeFlow- A Periods Tracking App, your empowering companion in the journey of women's health and well-being. We understand that every woman's body is unique, and so is her menstrual cycle. At FemmeFlow, we've crafted a comprehensive period tracking application designed to seamlessly integrate into your lifestyle, providing you with the tools and insights needed to take control of your menstrual health.Our mission at FemmeFlow is simple yet profound: to empower women by offering a personalized and intuitive platform that goes beyond traditional period tracking. We believe that understanding your menstrual cycle should be insightful, empowering, and tailored to your individual needs. Whether you're aiming for better fertility management, seeking to understand your body, or simply tracking your cycle for overall health, FemmeFlow is here to support you every step of the way.Founded on the principles of user-centric design and a commitment to privacy and security, FemmeFlow combines cutting-edge technology with a user-friendly interface. We're not just an app; we're your virtual ally, providing valuable insights, fostering community, and celebrating the beauty of every woman's unique health journey.",
                                textAlign: TextAlign.justify,
                                style: TextStyle(fontSize: 16,),
                              ),
                            ),
                          ]
                      ),
                    ),
                  ),

                ),

                SizedBox(height: 50),

                Container(
                  height: 400,
                  width: 400,
                  decoration: BoxDecoration(

                      color: Color.fromRGBO(250, 242, 232, 1),
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(
                            'Key Features of FemmeFlow',
                            style: TextStyle(fontSize: 18,
                                color: Colors.pink,
                                fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Text("1. Menstrual Cycle Tracking: Users can log the start and end dates of their menstrual periods. Over time, the app can generate predictions for future cycles.",
                                  textAlign: TextAlign.justify,),
                                Container(
                                  margin: EdgeInsets.symmetric(vertical: 10),
                                  height: 1.0,
                                  color: Colors.black,
                                ),
                                Text("2. Cycle Predictions: Receive accurate predictions about your upcoming menstrual cycles, ovulation, and fertile windows.",
                                  textAlign: TextAlign.justify,),
                                Container(
                                  margin: EdgeInsets.symmetric(vertical: 10),
                                  height: 1.0,
                                  color: Colors.black,
                                ),
                                Text("3. Informative Insights: Gain valuable insights into your unique patterns, helping you anticipate changes and plan accordingly.",
                                  textAlign: TextAlign.justify,),
                                Container(
                                  margin: EdgeInsets.symmetric(vertical: 10),
                                  height: 1.0,
                                  color: Colors.black,
                                ),
                                Text("4. Gentle Reminders: Set discreet reminders for period days, ovulation, and other customizable events. FemmeFlow keeps you connected to your body's rhythm without being intrusive.",
                                  textAlign: TextAlign.justify,),
                                Container(
                                  margin: EdgeInsets.symmetric(vertical: 10),
                                  height: 1.0,
                                  color: Colors.black,
                                ),
                                Text("5. Secure & Private: Trust FemmeFlow with your most personal information. We prioritize the security and privacy of your data, ensuring your journey is safe and confidential.",
                                  textAlign: TextAlign.justify,),
                              ],
                            ),
                          ),



                        ],
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 40),
                Container(
                  height: 400,
                  width: 400,
                  decoration: BoxDecoration(

                      color: Color.fromRGBO(250, 242, 232, 1),
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(
                            'Introduction to FemmeFlow',
                            style: TextStyle(fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.pink
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Welcome to FemmeFlow- A Periods Tracking App, your empowering companion in the journey of women's health and well-being. We understand that every woman's body is unique, and so is her menstrual cycle. At FemmeFlow, we've crafted a comprehensive period tracking application designed to seamlessly integrate into your lifestyle, providing you with the tools and insights needed to take control of your menstrual health.Our mission at FemmeFlow is simple yet profound: to empower women by offering a personalized and intuitive platform that goes beyond traditional period tracking. We believe that understanding your menstrual cycle should be insightful, empowering, and tailored to your individual needs. Whether you're aiming for better fertility management, seeking to understand your body, or simply tracking your cycle for overall health, FemmeFlow is here to support you every step of the way.Founded on the principles of user-centric design and a commitment to privacy and security, FemmeFlow combines cutting-edge technology with a user-friendly interface. We're not just an app; we're your virtual ally, providing valuable insights, fostering community, and celebrating the beauty of every woman's unique health journey.",
                              textAlign: TextAlign.justify,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),

        )
    );
  }
}
