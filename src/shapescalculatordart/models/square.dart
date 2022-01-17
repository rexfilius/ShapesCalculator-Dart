import 'dart:io';

import 'shape.dart';

class Square extends Shape {
  late Square _square;

  @override
  double area() => sideLength * sideLength;

  @override
  double perimeter() => 4 * sideLength;

  @override
  void calculateArea() {
    _square = Square();
    while (true) {
      try {
        _getSideLength();
        print("Area of Square is ${_square.area()}");
        break;
      } on FormatException {
        print("\nERROR!! - You entered invalid data\n");
      }
    }
  }

  @override
  void calculatePerimeter() {
    _square = Square();
    while (true) {
      try {
        _getSideLength();
        print("Perimeter of Square is ${_square.perimeter()}");
        break;
      } on FormatException {
        print("\nERROR!! - You entered invalid data\n");
      }
    }
  }

  void _getSideLength() {
    print("Type in the SideLength of the Square");
    var arg = double.parse(stdin.readLineSync()!);
    _square.sideLength = arg;
    print("SideLength: $arg");
  }
}
