import 'package:flutter/material.dart';
class info extends StatefulWidget {
  const info({super.key});

  @override
  State<info> createState() => _infoState();
}

class _infoState extends State<info> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(253, 213, 200, 1),

      appBar: AppBar(
        backgroundColor: Color.fromRGBO(253, 213, 200, 1),
        title: Text("Information",
          style: TextStyle(fontWeight: FontWeight.bold),),
      ),

      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 200,
                width: 400,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5,
                        color: Colors.pinkAccent,
                      )
                    ],
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
                          'Menstrual Cycle',
                          style: TextStyle(fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.pink
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("A menstrual cycle is a natural, monthly process that occurs in the female reproductive system. It involves a series of hormonal changes and physiological events that prepare the body for a potential pregnancy. A period tracker app is a digital tool designed to help individuals monitor and manage their menstrual cycles.",
                            textAlign: TextAlign.justify,
                          ),
                        ),

                      ],
                    ),
                  ),
                ),

              ),

              SizedBox(height: 20),

              Container(
                height: 200,
                width: 400,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5,
                        color: Colors.pinkAccent,
                      )
                    ],
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
                          'The Menstrual Cycle Unveiled:',
                          style: TextStyle(fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.pink),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("The menstrual cycle is a natural, intricate process that the female body undergoes each month. On average, it spans approximately 28 days, although individual variations are entirely normal. Divided into distinct phases, the menstrual cycle is orchestrated by hormonal fluctuations that regulate various physiological changes within your body.",
                            textAlign: TextAlign.justify,
                          ),
                        ),

                      ],
                    ),
                  ),
                ),

              ),
              SizedBox(height: 20),

              Container(
                height: 180,
                width: 400,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5,
                        color: Colors.pinkAccent,
                      )
                    ],
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
                          'Menstruation (Days 1-5):',
                          style: TextStyle(fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.pink),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Your cycle begins with menstruation, commonly known as your period. The uterus sheds its lining, marking the start of a new cycle. Our app allows you to effortlessly log the start and end dates of your period, providing you with a comprehensive overview of your cycle.",
                            textAlign: TextAlign.justify,
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 200,
                width: 400,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5,
                        color: Colors.pinkAccent,
                      )
                    ],
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
                          'Follicular Phase (Days 6-14):',
                          style: TextStyle(fontSize: 18,
                              color: Colors.pink,
                              fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Following menstruation, the body gears up for ovulation. Hormones stimulate the development of a follicle, which houses an egg. As estrogen levels rise, you may experience increased energy and a brighter mood. FemmeFlow helps you track these changes, fostering a deeper understanding of your unique cycle.",
                            textAlign: TextAlign.justify,
                          ),
                        ),

                      ],
                    ),
                  ),
                ),

              ),
              SizedBox(height: 20,),

              Container(
                height: 170,
                width: 400,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5,
                        color: Colors.pinkAccent,
                      )
                    ],
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
                          'Ovulation (Around Day 14):',
                          style: TextStyle(fontSize: 18,
                              color: Colors.pink,
                              fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Ovulation is the pivotal moment when a mature egg is released from the ovary, poised for fertilization. This phase is marked by heightened fertility. Our app provides predictive insights into your ovulation window, aiding in family planning or contraception",
                            textAlign: TextAlign.justify,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height:20,),
              Container(
                height: 200,
                width: 400,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5,
                        color: Colors.pinkAccent,
                      )
                    ],
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
                          'Luteal Phase (Days 15-28):',
                          style: TextStyle(fontSize: 18,
                              color: Colors.pink,
                              fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Post-ovulation, the body enters the luteal phase. The ruptured follicle transforms into a structure called the corpus luteum, releasing progesterone. This hormone prepares the uterus for a potential pregnancy. Users can log symptoms and mood changes during this phase, enhancing their awareness of premenstrual patterns",
                            textAlign: TextAlign.justify,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height:20,),
              Container(
                height: 440,
                width: 400,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5,
                        color: Colors.pinkAccent,
                      )
                    ],
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
                              Text("1. Effortless Tracking: Seamlessly log your daily experiences, symptoms, mood, and activities, all within the sleek and intuitive FemmeFlow interface.",
                                textAlign: TextAlign.justify,),
                              SizedBox(height: 10),
                              Text("2. Cycle Predictions: Receive accurate predictions about your upcoming menstrual cycles, ovulation, and fertile windows.",
                                textAlign: TextAlign.justify,),
                              SizedBox(height: 10,),
                              Text("3. Informative Insights: Gain valuable insights into your unique patterns, helping you anticipate changes and plan accordingly.",
                                textAlign: TextAlign.justify,),
                              SizedBox(height: 10,),
                              Text("4. Gentle Reminders: Set discreet reminders for period days, ovulation, and other customizable events. FemmeFlow keeps you connected to your body's rhythm without being intrusive.",
                                textAlign: TextAlign.justify,),
                              SizedBox(height: 10,),
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
            ],
          ),
        ),
      ),
    );
  }
}
