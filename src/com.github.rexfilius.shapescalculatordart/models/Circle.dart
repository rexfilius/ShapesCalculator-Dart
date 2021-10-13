import 'dart:io';

import 'Measurable.dart';
import 'Shape.dart';
import 'dart:math';

class Circle extends Shape implements Measurable {
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
        print("\nYOU ENTERED INVALID DATA\n");
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
        print("\nYOU ENTERED INVALID DATA\n");
      }
    }
  }

  void _getRadiusOfCircle() {
    print("Type in the radius of the circle");
    var arg = stdin.readLineSync();
    _circle.radius = arg as double;
    print("Radius: $arg");
  }
}
