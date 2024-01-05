import 'package:flutter/material.dart';
import 'barGraph.dart';

class home extends StatefulWidget{
  const home({super.key});

  @override
  State<home> createState()=>_homeState();
}

class _homeState extends State<home>{

  //creating a list full of data that will be used in the barchart.

  List<double> weeklySummery=[
    29,
    30,
    32,
    43,
    22,
    41,
    28,
  ];


  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: SizedBox(
            height: 220,
            child: MyBarGraph(
              weeklySummary: weeklySummery,
            )
        ),
      ),
    );
  }
}