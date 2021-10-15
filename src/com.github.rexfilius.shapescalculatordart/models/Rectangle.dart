import 'dart:io';

import 'Measurable.dart';
import 'Shape.dart';

class Rectangle extends Shape implements Measurable {
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
    var arg1 = stdin.readLineSync();
    _rectangle.length = arg1 as double;
    print("Length: $arg1");

    print("Type in the breadth of the Rectangle");
    var arg2 = stdin.readLineSync();
    _rectangle.breadth = arg2 as double;
    print("Breadth: $arg2");
  }
}
