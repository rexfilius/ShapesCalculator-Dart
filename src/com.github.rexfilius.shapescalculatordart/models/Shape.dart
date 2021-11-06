import 'Measurable.dart';

class Shape implements Measurable {
  var length = 0.0;
  var breadth = 0.0;
  var height = 0.0;
  var sideLength = 0.0;
  var sideLength1 = 0.0;
  var sideLength2 = 0.0;
  var topLength = 0.0;
  var baseLength = 0.0;
  var radius = 0.0;

  @override
  double area() {
    return 0.0;
  }

  @override
  void calculateArea() {
    // No-op
  }

  @override
  void calculatePerimeter() {
    // No-op
  }

  @override
  double perimeter() {
    return 0.0;
  }
}
