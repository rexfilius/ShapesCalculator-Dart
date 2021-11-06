import 'dart:io';

import 'Shape.dart';

class Triangle extends Shape {
  late Triangle _triangle;

  @override
  double area() => 0.5 * (baseLength * height);

  @override
  double perimeter() => sideLength1 + sideLength2 + baseLength;

  @override
  void calculateArea() {
    _triangle = Triangle();
    while (true) {
      try {
        print("Type in the BaseLength of the Triangle");
        var arg1 = double.parse(stdin.readLineSync()!);
        _triangle.baseLength = arg1;
        print("BaseLength: $arg1");

        print("Type in the Height of the Triangle");
        var arg2 = double.parse(stdin.readLineSync()!);
        _triangle.height = arg2;
        print("Height: $arg2");

        print("Area of Triangle: ${_triangle.area()}");
        break;
      } on FormatException {
        print("\nYOU ENTERED INVALID DATA\n");
      }
    }
  }

  @override
  void calculatePerimeter() {
    _triangle = Triangle();
    while (true) {
      try {
        print("Type in the SideLength-1 of the Triangle");
        var arg1 = double.parse(stdin.readLineSync()!);
        _triangle.sideLength1 = arg1;
        print("SideLength-1: $arg1");

        print("Type in the SideLength-2 of the Triangle");
        var arg2 = double.parse(stdin.readLineSync()!);
        _triangle.sideLength2 = arg2;
        print("SideLength-2: $arg2");

        print("Type in the BaseLength of the Triangle");
        var arg3 = double.parse(stdin.readLineSync()!);
        _triangle.baseLength = arg3;
        print("BaseLength: $arg3");

        print("Perimeter of Triangle: ${_triangle.perimeter()}");
        break;
      } on FormatException {
        print("\nYOU ENTERED INVALID DATA\n");
      }
    }
  }
}
