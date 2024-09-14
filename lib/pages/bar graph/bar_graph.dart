import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:inha_app/pages/bar%20graph/bar_data.dart';



class MyBarGraph extends StatelessWidget {
  final List weeklySummary;
  const MyBarGraph({super.key, required this.weeklySummary});

  @override
  Widget build(BuildContext context) {
   BarData myBarData = BarData(
  


    friAmount: weeklySummary[0],
     monAmount: weeklySummary[1],
      satAmount: weeklySummary[2], 
      sunAmount: weeklySummary[3], 
      thurAmount: weeklySummary[4],
       tueAmount: weeklySummary[5],
        wedAmount: weeklySummary[6]

        
        );




        myBarData.initializeBarData();



    return BarChart(
      
      BarChartData(
        maxY: 200,
        minY: 0,
        // backgroundColor: Colors.red,
        
        borderData: FlBorderData(show: false),
        // gridData: FlGridData(show: false),
        titlesData: const FlTitlesData(show: true,
          topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false),),
          rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false),),
          bottomTitles: AxisTitles(sideTitles: SideTitles(showTitles: true, 
          getTitlesWidget: getBottomTitles))
        ),


        barGroups: myBarData.barData
        .map(
          (data) => BarChartGroupData(
            x: data.x,
             barRods: [
              BarChartRodData(toY: data.y,
              color: Colors.green,
              width: 12,
              borderRadius: BorderRadius.circular(2)
              ),
              ],
              ),
              ).toList()
      )
    );
    
  }
}


Widget getBottomTitles (double value, TitleMeta meta){
  const style = TextStyle(color: Color.fromARGB(255, 56, 52, 52), fontWeight: FontWeight.w500, 
  fontSize: 12);
  Widget text;
  switch(value.toInt()){
    case 0: text = const Text("M", style: style,);
    break;
    case 1: text = const Text("T", style: style,);
    break;
    case 2: text = const Text("W", style: style,);
    break;
    case 3: text = const Text("Th", style: style,);
    break;
    case 4: text = const Text("F", style: style,);
    break;
    case 5: text = const Text("S", style: style,);
    break;
    case 6: text = const Text("S", style: style,);
    break;
    default:
    text = const Text('', style: style,);
    break;
  }
  return SideTitleWidget(child: text, axisSide: meta.axisSide);
}