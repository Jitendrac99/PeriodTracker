import 'package:flutter/material.dart';
import 'barGraph.dart';

class home extends StatefulWidget{
  const home({super.key});

  @override
  State<home> createState()=>_homeState();
}

class _homeState extends State<home>{

  //creating a list full of data that will be used in the bar

  List<double> weeklySummery=[
    49,
    50,
    52,
    63,
    42,
    61,
    48,
  ];


  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Container(
          color: Color.fromRGBO(250, 242, 232, 1),
            height: 228,
            child: MyBarGraph(
              weeklySummary: weeklySummery,
            )
        ),
      ),
    );
  }
}