import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:statistics/BarChart/DataChart.dart';

class GraphBar extends StatelessWidget {
  final List weeklySummery;
  const GraphBar({super.key, required this.weeklySummery});

  @override
  Widget build(BuildContext context) {
    DataBar myBarData = DataBar(
        sunday: weeklySummery[0],
        monday: weeklySummery[1],
        tuesday: weeklySummery[2],
        webnesday: weeklySummery[3],
        thursday: weeklySummery[4],
        friday: weeklySummery[5],
        saturday: weeklySummery[6]);
    myBarData.initialBarDate();
    return BarChart(
      BarChartData(
        minY: 0,
        maxY: 200,
        gridData: FlGridData(show: false),
        titlesData: FlTitlesData(
          show: true,
          rightTitles: AxisTitles(
            sideTitles: SideTitles(showTitles: false),
          ),
          topTitles: AxisTitles(
            sideTitles: SideTitles(showTitles: false),
          ),
          bottomTitles: AxisTitles(
            sideTitles:
                SideTitles(showTitles: true, getTitlesWidget: getBottomTitles),
          ),
        ),
        barGroups: myBarData.bardata
            .map(
              (data) => BarChartGroupData(
                x: data.x,
                barRods: [
                  BarChartRodData(
                      toY: data.y,
                      width: 15,
                      borderRadius: BorderRadius.circular(4)),
                ],
              ),
            )
            .toList(),
      ),
    );
  }
}

Widget getBottomTitles(double value, TitleMeta meta) {
  const style = TextStyle(
    color: Colors.amber,
    fontWeight: FontWeight.bold,
    fontSize: 14,
  );

  Widget text;
  switch (value.toInt()) {
    case 0:
      text = const Text(
        'CN',
        style: style,
      );
      break;
    case 1:
      text = const Text(
        'T2',
        style: style,
      );
      break;
    case 2:
      text = const Text(
        'T3',
        style: style,
      );
      break;
    case 3:
      text = const Text(
        'T4',
        style: style,
      );
      break;
    case 4:
      text = const Text(
        'T5',
        style: style,
      );
      break;
    case 5:
      text = const Text(
        'T6',
        style: style,
      );
      break;
    case 6:
      text = const Text(
        'T7',
        style: style,
      );
      break;
    default:
      text = const Text(
        '',
        style: style,
      );
      break;
  }

  return SideTitleWidget(child: text, axisSide: meta.axisSide);
}
