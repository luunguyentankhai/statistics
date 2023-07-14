import 'package:flutter/material.dart';
import 'package:statistics/BarChart/BarGraph.dart';

class Chartpage extends StatefulWidget {
  const Chartpage({super.key});
  @override
  State<Chartpage> createState() => _ChartPageState();
}

class _ChartPageState extends State<Chartpage> {
  List<double> weeklySummery = [
    4.40,
    2.50,
    42.42,
    10.50,
    100.20,
    88.99,
    90.10,
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SizedBox(
            height: 700,
            child: GraphBar(
              weeklySummery: weeklySummery,
            )),
        ),
      ),
    );
  }
}
