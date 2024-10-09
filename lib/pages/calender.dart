import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:periods/pages/period_data.dart';
import 'package:table_calendar/table_calendar.dart';
import '../pages/dashboard.dart';
import '../pages/profile.dart';

class calendar extends StatefulWidget {
  const calendar({Key? key}) : super(key: key);

  @override
  State<calendar> createState() => _CaleState();
}

class _CaleState extends State<calendar> {
  bool light = true;
  DateTime _selectedDay = DateTime.now();
  bool _isPeriodStarted = false;
  double _currentSliderValue = 20;

  static const int cycleLength = 28; // Average period cycle length in days
  static const int periodLength = 5;  // Average period duration in days
  String selectedMood = '😊'; // Default mood

  // A list of mood emojis
  final List<String> moods = ['😊', '😔', '😠', '😎', '🥳', '😢'];

  void _navigateToInfoPage() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => dash(),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  void _startPeriod() {
    setState(() {
      _isPeriodStarted = true;

      DateTime today = DateTime.now();
      int differenceInDays = today.difference(_selectedDay).inDays;

      // Update the singleton values
      PeriodData().daysUntilNextPeriod = cycleLength - (differenceInDays % cycleLength);
      PeriodData().daysUntilPeriodEnds = periodLength - (differenceInDays % periodLength);

      // Ensure days do not go negative
      if (PeriodData().daysUntilPeriodEnds < 0) {
        PeriodData().daysUntilPeriodEnds = 0; // In case the period end has passed already
      }
    });
  }

  void _endPeriod() {
    setState(() {
      _isPeriodStarted = false;
      PeriodData().reset(); // Reset the singleton data
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        height: double.infinity,
        width: double.infinity,

        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 70,
                    ),
                    // Calendar Widget
                    Container(
                      height: MediaQuery.of(context).size.height * 0.55,
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: Stack(
                        children: [
                          Positioned(
                            top: 0,
                            left: 0,
                            right: 0,
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.55,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(34),
                                color: Color.fromRGBO(236, 153, 153, 10),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 10,
                            left: 10,
                            right: 10,
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.45,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.white,
                              ),
                              child: TableCalendar(
                                focusedDay: _selectedDay,
                                firstDay: DateTime(2000),
                                lastDay: DateTime(2100),
                                selectedDayPredicate: (day) {
                                  return isSameDay(_selectedDay, day);
                                },
                                onDaySelected: _isPeriodStarted ? null : (selectedDay, focusedDay) {
                                  setState(() {
                                    _selectedDay = selectedDay;
                                  });
                                },
                                calendarFormat: CalendarFormat.month,
                                availableGestures: AvailableGestures.all,
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 15,
                            left: 30,
                            right: 30,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const SizedBox(width: 110),
                                const Text(
                                  'Start Period',
                                  style: TextStyle(fontSize: 20),
                                ),
                                Switch(
                                  value: _isPeriodStarted,
                                  onChanged: (bool value) {
                                    if (!_isPeriodStarted) {
                                      _startPeriod();
                                    }
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),

                    if (_isPeriodStarted)
                      Column(
                        children: [

                        ],
                      )
                    else
                      const Text(
                        'Press the switch to start tracking your period',
                        style: TextStyle(fontSize: 14),
                      ),
                    SizedBox(height: 40,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text("cramps"),
                                Switch(
                                // This bool value toggles the switch.
                                value: light,
                                activeColor: Colors.green,
                                onChanged: (bool value) {
                                // This is called when the user toggles the switch.
                                setState(() {
                                light = value;
                                });
                                },
                                ),
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color.fromRGBO(236, 153, 153, 10),
                          ),
                        ),
                        Container(
                          height: 100,
                          width: 240,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("Flow Intensity"),
                              Slider(
                              value: _currentSliderValue,
                              max: 100,
                              divisions: 5,
                              label: _currentSliderValue.round().toString(),
                              onChanged: (double value) {
                              setState(() {
                              _currentSliderValue = value;
                              });
                              },
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color.fromRGBO(236, 153, 153, 10)
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 40,),
                    Container(
                      height: 300,
                      width: double.infinity,
                      color: Color.fromRGBO(236, 153, 153, 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Select your mood:',
                            style: TextStyle(fontSize: 24),
                          ),
                          SizedBox(height: 20),
                          Text(
                            selectedMood,
                            style: TextStyle(fontSize: 50), // Display selected mood
                          ),
                          SizedBox(height: 30),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: moods.map((mood) {
                              return GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selectedMood = mood;
                                  });
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    mood,
                                    style: TextStyle(fontSize: 30),
                                  ),
                                ),
                              );
                            }).toList(),
                          ),
                        ],
                      ),
                    ),


                    SizedBox(height: 110,),

                  ],
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
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const dash()),
                          );
                        },
                        child: Container(
                          height: 50,
                          width: 50,
                          child: Container(
                              decoration: BoxDecoration(shape: BoxShape.circle),
                              child: Icon(Icons.home_filled,size: 40,color: Colors.white,)),
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        child: Container(
                            decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.white),
                            child: Icon(CupertinoIcons.calendar_today,size: 40,color: Colors.black,)),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const profile()),
                          );
                        },
                        child: Container(
                          height: 50,
                          width: 50,
                          child: Container(
                              decoration: BoxDecoration(shape: BoxShape.circle,),
                              child: Icon(CupertinoIcons.profile_circled,size: 40,color: Colors.white,)),
                        ),
                      )
                    ],
                  ),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(60),color: Color.fromRGBO(236, 153, 153, 10)),
                )
            ),
          ],
        ),
      ),

    );
  }
}