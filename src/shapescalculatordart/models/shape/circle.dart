import 'dart:io';
import '../../shape_lib.dart';
import 'dart:math';

class Circle extends Shape {
  late Circle _circle;

  @override
  double area() => pi * radius * radius;

  @override
  double perimeter() => 2 * pi * radius;

  @override
  void calculateArea() {
    _circle = Circle();

    while (true) {
      try {
        _getRadiusOfCircle();
        print("Area of circle: ${_circle.area()}");
        break;
      } on FormatException {
        print(INVALID_INPUT);
      }
    }
  }

  @override
  void calculatePerimeter() {
    _circle = Circle();

    while (true) {
      try {
        _getRadiusOfCircle();
        print("Perimeter of circle: ${_circle.perimeter()}");
        break;
      } on FormatException {
        print(INVALID_INPUT);
      }
    }
  }

  void _getRadiusOfCircle() {
    print("Type in the radius of the circle");
    var arg = double.parse(stdin.readLineSync()!);
    _circle.radius = arg;
    print("Radius: $arg");
  }
}
