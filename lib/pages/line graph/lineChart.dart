import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:inha_app/pages/line%20graph/individual_line.dart';

class LineChartWidgets extends StatelessWidget {
  Color color;
  final List<IndividualLine>lines;
   LineChartWidgets({super.key, required  this.color,  required this.lines  });

  @override
  Widget build(BuildContext context) {
    return  AspectRatio(
      aspectRatio: 2,
      child: LineChart(
       
        LineChartData(
          maxY: 600,
           borderData: FlBorderData(show: false),
          titlesData: FlTitlesData(show: true,
          topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          bottomTitles: AxisTitles(sideTitles: SideTitles(showTitles: true,
          getTitlesWidget: getBottomLine2Titles
          
          )),
          
          ),
          

          lineBarsData: [LineChartBarData(
            color: color,
            barWidth: 7,
        spots: lines.map((line) => FlSpot(line.x, line.y)).toList(),
        isCurved: false,
        
        dotData: const FlDotData(show: true)
      )])),
    );
  }
}



Widget getBottomLine2Titles (double value, TitleMeta meta){
  const style = TextStyle(color: Color.fromARGB(255, 56, 52, 52), fontWeight: FontWeight.w500, 
  fontSize: 11);
  Widget text;
  switch(value.toInt()){
    case 0: text = const Text("Apr", style: style,);
    break;
    case 1: text = const Text("May", style: style,);
    break;
    case 2: text = const Text("June", style: style,);
    break;
    case 3: text = const Text("July", style: style,);
    break;
    case 4: text = const Text("Aug", style: style,);
    break;
    case 5: text = const Text("Sep", style: style,);
    break;
    case 6: text = const Text("Oct", style: style,);
    break;
    case 7: text = const Text("Nov", style: style,);
    break;
    case 8: text = const Text("Dec", style: style,);
    break;
    default:
    text = const Text('', style: style,);
    break;
  }
  return SideTitleWidget(child: text, axisSide: meta.axisSide);
}