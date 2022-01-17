import 'dart:io';

import 'measurable.dart';
import 'shape.dart';
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
    var arg = double.parse(stdin.readLineSync()!);
    //var arg = double.tryParse(stdin.readLineSync()!);
    _circle.radius = arg;
    print("Radius: $arg");
  }
}
