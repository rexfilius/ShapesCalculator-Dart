import 'dart:io';

import 'shape.dart';

class Parallelogram extends Shape {
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
        var arg1 = double.parse(stdin.readLineSync()!);
        _parallelogram.baseLength = arg1;
        print("BaseLength: $arg1");

        print("Type in the Height of the parallelogram");
        var arg2 = double.parse(stdin.readLineSync()!);
        _parallelogram.height = arg2;
        print("Height: $arg2");

        print("Area of parallelogram: ${_parallelogram.area()}");
        break;
      } on FormatException {
        print("\nERROR!! - You entered invalid data\n");
      }
    }
  }

  @override
  void calculatePerimeter() {
    _parallelogram = Parallelogram();
    while (true) {
      try {
        print("Type in the BaseLength of the parallelogram");
        var arg1 = double.parse(stdin.readLineSync()!);
        _parallelogram.baseLength = arg1;
        print("BaseLength: $arg1");

        print("Type in the SideLength of the parallelogram");
        var arg2 = double.parse(stdin.readLineSync()!);
        _parallelogram.sideLength = arg2;
        print("Height: $arg2");

        print("Perimeter of parallelogram: ${_parallelogram.perimeter()}");
        break;
      } on FormatException {
        print("\nERROR!! - You entered invalid data\n");
      }
    }
  }
}
