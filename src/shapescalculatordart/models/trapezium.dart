import 'dart:io';

import 'shape.dart';

class Trapezium extends Shape {
  late Trapezium _trapezium;

  @override
  double area() => (0.5 * (topLength + baseLength)) * height;

  @override
  double perimeter() => topLength + baseLength + sideLength1 + sideLength2;

  @override
  void calculateArea() {
    _trapezium = Trapezium();
    while (true) {
      try {
        print("Type in the TopLength of the Trapezium");
        var arg1 = double.parse(stdin.readLineSync()!);
        _trapezium.topLength = arg1;
        print("TopLength: $arg1");

        print("Type in the BaseLength of the Trapezium");
        var arg2 = double.parse(stdin.readLineSync()!);
        _trapezium.baseLength = arg2;
        print("BaseLength: $arg2");

        print("Type in the Height of the Trapezium");
        var arg3 = double.parse(stdin.readLineSync()!);
        _trapezium.height = arg3;
        print("Height: $arg3");

        print("Area of Trapezium: ${_trapezium.area()}");
        break;
      } on FormatException {
        print("\nERROR!! - You entered invalid data\n");
      }
    }
  }

  @override
  void calculatePerimeter() {
    _trapezium = Trapezium();
    while (true) {
      try {
        print("Type in the TopLength of the Trapezium");
        var arg1 = double.parse(stdin.readLineSync()!);
        _trapezium.topLength = arg1;
        print("TopLength: $arg1");

        print("Type in the BaseLength of the Trapezium");
        var arg2 = double.parse(stdin.readLineSync()!);
        _trapezium.baseLength = arg2;
        print("BaseLength: $arg2");

        print("Type in the SideLength-1 of the Trapezium");
        var arg3 = double.parse(stdin.readLineSync()!);
        _trapezium.sideLength1 = arg3;
        print("SideLength-1: $arg3");

        print("Type in the SideLength-2 of the Trapezium");
        var arg4 = double.parse(stdin.readLineSync()!);
        _trapezium.sideLength2 = arg4;
        print("SideLength-1: $arg4");

        print("Perimeter of Trapezium: ${_trapezium.perimeter()}");
        break;
      } on FormatException {
        print("\nERROR!! - You entered invalid data\n");
      }
    }
  }
}
