import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'barData.dart';

class MyBarGraph extends StatelessWidget {
  final List weeklySummary;
  const MyBarGraph({super.key,
    required this.weeklySummary,
  });

  @override
  Widget build(BuildContext context) {

    BarData myBarData = BarData(
        sunAmount: weeklySummary[0],
        monAmount: weeklySummary[1],
        tueAmount: weeklySummary[2],
        wedAmount: weeklySummary[3],
        thusAmount: weeklySummary[4],
        friAmount: weeklySummary[5],
        satAmount: weeklySummary[6]);
    myBarData.initializeBarData();
    return BarChart(

        BarChartData(
            maxY: 100,
            minY: 0,
            gridData: FlGridData(show: false),
            borderData: FlBorderData(show: false),
            titlesData: FlTitlesData(
              show:true,
              topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
              rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
              leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
              bottomTitles: AxisTitles(sideTitles: SideTitles(
                showTitles: true,
                getTitlesWidget: getBottomTitles,
              )
              ),
            ),
            barGroups: myBarData.barData.map(
                    (data) => BarChartGroupData(
                    x: data.x,
                    barRods: [BarChartRodData(toY: data.y,
                      color: Colors.pinkAccent,
                      width: 20,
                      borderRadius: BorderRadius.only(topLeft:Radius.circular(20), topRight: Radius.circular(20) ),
                      backDrawRodData: BackgroundBarChartRodData(
                        show: true,
                        toY: 100,
                        color:Colors.transparent,
                      ),

                    )]
                )
            ).toList()
        )
    );
  }
}

Widget getBottomTitles (double value, TitleMeta meta){
  const style =TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.bold,
    fontSize: 12,
  );
  Widget text;
  switch (value.toInt()){
    case 0:
      text= const Text("Jan",style: style,);
      break;
    case 1:
      text= const Text("Feb",style: style,);
      break;
    case 2:
      text= const Text("Mar",style: style,);
      break;
    case 3:
      text= const Text("April",style: style,);
      break;
    case 4:
      text= const Text("May",style: style,);
      break;
    case 5:
      text= const Text("Jun",style: style,);
      break;
    case 6:
      text= const Text("July",style: style,);
      break;
    default:
      text= const Text("Aug",style: style,);
      break;
  }
  return SideTitleWidget(child: text, axisSide: meta.axisSide);
}