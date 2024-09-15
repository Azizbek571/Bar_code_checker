import 'package:collection/collection.dart';
class IndividualLine{
  final double x;
  final double y;
  IndividualLine({required this.x, required this.y});
}

List<IndividualLine>get individualLines{
  final data = <double>[50,40,300,320,500,340,200,220,500];
  return data.mapIndexed(
    ((index, element)=> IndividualLine(x: index.toDouble(), y: element))
  ).toList();
}