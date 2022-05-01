import '../shape_lib.dart';

abstract class Shape implements Measurable {
  var length = 0.0;
  var breadth = 0.0;
  var height = 0.0;
  var sideLength = 0.0;
  var sideLength1 = 0.0;
  var sideLength2 = 0.0;
  var topLength = 0.0;
  var baseLength = 0.0;
  var radius = 0.0;
}

void measureShape(int number, Shape shape) {
  switch (number) {
    case 1:
      shape.calculateArea();
      break;
    case 2:
      shape.calculatePerimeter();
      break;
    default:
      break;
  }
}
