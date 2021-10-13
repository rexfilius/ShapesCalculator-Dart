import 'dart:io';

import 'Measurable.dart';
import 'Shape.dart';

class Parallelogram extends Shape implements Measurable {
  late Parallelogram _parallelogram;

  @override
  double area() => baseLength * height;

  @override
  double perimeter() => 2 * (baseLength + sideLength);

  @override
  void calculateArea() {
    _parallelogram = Parallelogram();
    while (true) {
      try {
        print("Type in the BaseLength of the parallelogram");
        var arg1 = stdin.readLineSync();
        _parallelogram.baseLength = arg1 as double;
        print("BaseLength: $arg1");

        print("Type in the Height of the parallelogram");
        var arg2 = stdin.readLineSync();
        _parallelogram.height = arg2 as double;
        print("Height: $arg2");

        print("Area of parallelogram: ${_parallelogram.area()}");
        break;
      } on FormatException {
        print("\nYOU ENTERED INVALID DATA\n");
      }
    }
  }

  @override
  void calculatePerimeter() {
    _parallelogram = Parallelogram();
    while (true) {
      try {
        print("Type in the BaseLength of the parallelogram");
        var arg1 = stdin.readLineSync();
        _parallelogram.baseLength = arg1 as double;
        print("BaseLength: $arg1");

        print("Type in the SideLength of the parallelogram");
        var arg2 = stdin.readLineSync();
        _parallelogram.sideLength = arg2 as double;
        print("Height: $arg2");

        print("Perimeter of parallelogram: ${_parallelogram.perimeter()}");
        break;
      } on FormatException {
        print("\nYOU ENTERED INVALID DATA\n");
      }
    }
  }
}