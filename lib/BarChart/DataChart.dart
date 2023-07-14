import 'package:statistics/BarChart/individual.dart';

class DataBar {
  final double sunday;
  final double monday;
  final double tuesday;
  final double webnesday;
  final double thursday;
  final double friday;
  final double saturday;

  DataBar({
    required this.sunday,
    required this.monday,
    required this.tuesday,
    required this.webnesday,
    required this.thursday,
    required this.friday,
    required this.saturday,
  });

  List<individulbar>  bardata = [];

    void initialBarDate() {
      bardata = [
        individulbar(x: 0, y: sunday),        
        individulbar(x: 1, y: monday),
        individulbar(x: 2, y: tuesday),
        individulbar(x: 3, y: webnesday),
        individulbar(x: 4, y: thursday),
        individulbar(x: 5, y: friday),
        individulbar(x: 6, y: saturday),
      ];
    }
}
