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
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Menstrual Cycle',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text("A menstrual cycle is a natural, monthly process that occurs in the female reproductive system. It involves a series of hormonal changes and physiological events that prepare the body for a potential pregnancy. A period tracker app is a digital tool designed to help individuals monitor and manage their menstrual cycles."),

              SizedBox(height: 20),

              Text(
                "Follicular Phase (Days 6-14):",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text("Hormones such as estrogen start to rise, stimulating the development of follicles in the ovaries. FemmeFlow provides insights into fertility windows, predicting when ovulation is likely to occur."),

              SizedBox(height: 20),

              Text(
                '7. Fertility Tracking:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text('Some period tracker apps offer fertility tracking features for those trying to conceive, helping users identify the most fertile days in their cycle.'),

              SizedBox(height: 20),

              Text(
                '8. Reminders and Notifications:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text('To assist users in staying consistent with tracking, the app may provide reminders for upcoming periods, ovulation, or other personalized events.'),


            ],
          ),
        ),
      ),
    );
  }
}