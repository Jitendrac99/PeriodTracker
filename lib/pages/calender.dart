import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../pages/dashboard.dart';
import '../pages/notification.dart';
import '../pages/profile.dart';

class calendar extends StatefulWidget {
  const calendar({Key? key}) : super(key: key);

  @override
  State<calendar> createState() => _CaleState();
}

class _CaleState extends State<calendar> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  DateTime? _startRange;
  DateTime? _endRange;
  String cat = "";

  void initState() {
    super.initState();
    _selectedDay = _focusedDay;
  }

  void _onSelectedDay(DateTime? selectedDay, DateTime? focusedDay) {
    if (isSameDay(_selectedDay, selectedDay)) {
      setState(() {
        _selectedDay = selectedDay;
      });
    }
  }

  void _onRangeSelected(
      DateTime? start, DateTime? end, DateTime? focusedDay) {
    setState(() {
      _selectedDay = null;
      _startRange = start;
      _endRange = end;
      cat = (_startRange?.day).toString();
      print(cat);
      print(_endRange);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calendar"),
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromRGBO(253, 213, 200, 1),
      ),
      body: Container(
        color: Color.fromRGBO(253, 213, 200, 1),
        height: double.infinity,
        width: double.infinity,

        child: Stack(
          children: [
            SizedBox(
              height: 50,
            ),

            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [

                    Container(
                      height: 340,
                      width: 400,
                      child: TableCalendar(
                        firstDay: DateTime.utc(2010, 10, 10),
                        lastDay: DateTime.utc(2030, 10, 10),
                        focusedDay: _focusedDay,
                        selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
                        rowHeight: 43,
                        rangeSelectionMode: RangeSelectionMode.toggledOn,
                        onRangeSelected: _onRangeSelected,
                        startingDayOfWeek: StartingDayOfWeek.sunday,
                        onDaySelected: _onSelectedDay,
                        rangeStartDay: _startRange,
                        rangeEndDay: _endRange,
                        calendarStyle: CalendarStyle(
                          outsideDaysVisible: false,
                        ),
                        onFormatChanged: (format) {
                          setState(() {
                            _calendarFormat = format;
                          });
                        },
                        onPageChanged: (focusedDay) {
                          _focusedDay = focusedDay;
                        },
                      ),
                      decoration: BoxDecoration(
                          color:Color.fromRGBO(255, 129, 149, 1)
                          , borderRadius: BorderRadius.circular(30)),
                    ),

                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 70,
                      width: 395,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(250, 242, 232, 1),
                          borderRadius: BorderRadius.circular(30)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Text(
                              "End period",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(249, 71, 108, 1),
                                  fontSize: 18),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: ToggleSwitch(
                              minWidth: 60,
                              activeBgColor: [Color.fromRGBO(249, 71, 108, 1)],
                              inactiveBgColor: Color.fromRGBO(253, 213, 200, 1),
                              initialLabelIndex: 0,
                              totalSwitches: 2,
                              labels: ["Yes", "No"],
                              onToggle: (index) {
                                print('switched to: $index');
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 70,
                      width: 395,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(250, 242, 232, 1),
                          borderRadius: BorderRadius.circular(30)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Text(
                              "Cramps",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(249, 71, 108, 1),
                                  fontSize: 18),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: ToggleSwitch(
                              minWidth: 60,
                              activeBgColor: [Color.fromRGBO(249, 71, 108, 1)],
                              inactiveBgColor: Color.fromRGBO(253, 213, 200, 1),
                              initialLabelIndex: 0,
                              totalSwitches: 2,
                              labels: ["Yes", "No"],
                              onToggle: (index) {
                                print('switched to: $index');
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 70,
                      width: 395,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(250, 242, 232, 1),
                          borderRadius: BorderRadius.circular(30)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Text(
                              " Flow Intensity",
                              style: TextStyle(
                                  color: Color.fromRGBO(249, 71, 108, 1),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: ToggleSwitch(
                              minWidth: 50,
                              activeBgColor: [Color.fromRGBO(249, 71, 108, 1)],
                              inactiveBgColor: Color.fromRGBO(253, 213, 200, 1),
                              initialLabelIndex: 0,
                              totalSwitches: 3,
                              labels: ['L', 'M', 'H'],
                              onToggle: (index) {
                                print('switched to: $index');
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 70,
                      width: 395,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(250, 242, 232, 1),
                          borderRadius: BorderRadius.circular(30)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Text(
                              "Mood",
                              style: TextStyle(
                                  color: Color.fromRGBO(249, 71, 108, 1),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: ToggleSwitch(
                              minWidth: 50,
                              activeBgColor: [Color.fromRGBO(249, 71, 108, 1)],
                              inactiveBgColor: Color.fromRGBO(253, 213, 200, 1),
                              initialLabelIndex: 0,
                              totalSwitches: 3,
                              labels: ['🙂', '😭', '😡'],
                              onToggle: (index) {
                                print('switched to: $index');
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 100,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Positioned(
        bottom: 0,
        left: 0,
        right: 0,
        child: Container(
          color: Color.fromRGBO(253, 213, 200, 1),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: GNav(
              onTabChange: (value) {
                print(value);
              },
              backgroundColor: Colors.transparent,
              color: Color.fromRGBO(249, 71, 108, 1),
              activeColor: Color.fromRGBO(249, 71, 108, 1),
              tabBackgroundColor: Colors.grey.shade300,
              padding: EdgeInsets.all(12),
              tabs: [
                GButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                          return dash();
                        }));
                  },
                  icon: Icons.bar_chart,
                  text: "Dashboard",
                ),
                GButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                          return calendar();
                        }));
                  },
                  icon: Icons.calendar_month,
                  text: "Calendar",
                ),
                GButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                          return notify();
                        }));
                  },
                  icon: Icons.notifications_active,
                  text: "Notifications",
                ),
                GButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                          return profile();
                        }));
                  },
                  icon: Icons.person,
                  text: "Profile",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}