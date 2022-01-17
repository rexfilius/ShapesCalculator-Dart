import 'dart:io';

import 'shape.dart';

class Rectangle extends Shape {
  late Rectangle _rectangle;

  @override
  double area() => length * breadth;

  @override
  double perimeter() => 2 * (length * breadth);

  @override
  void calculateArea() {
    _rectangle = Rectangle();
    while (true) {
      try {
        _getLengthAndBreadth();
        print("Area of Rectangle: ${_rectangle.area()}");
        break;
      } on FormatException {
        print("\nYOU ENTERED INVALID DATA\n");
      }
    }
  }

  @override
  void calculatePerimeter() {
    _rectangle = Rectangle();
    while (true) {
      try {
        _getLengthAndBreadth();
        print("Perimeter of Rectangle: ${_rectangle.perimeter()}");
        break;
      } on FormatException {
        print("\nYOU ENTERED INVALID DATA\n");
      }
    }
  }

  void _getLengthAndBreadth() {
    print("Type in the Length of the Rectangle");
    var arg1 = double.parse(stdin.readLineSync()!);
    _rectangle.length = arg1;
    print("Length: $arg1");

    print("Type in the breadth of the Rectangle");
    var arg2 = double.parse(stdin.readLineSync()!);
    _rectangle.breadth = arg2;
    print("Breadth: $arg2");
  }
}
