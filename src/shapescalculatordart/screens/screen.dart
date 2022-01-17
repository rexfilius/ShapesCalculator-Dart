import 'dart:io';

import 'calculator.dart';

const INVALID_DATA = "\nYOU ENTERED INVALID DATA\n";
const INVALID_CASING = "\nCHECK YOUR CASING/WORDS. TYPE CORRECTLY\n";

var _select = "";
var parameter = "";

String firstMenu() {
  var firstMessage =
      """This Application Calculates The Area And Perimeter Of 2-Dimensional Shapes
  List of Shapes: [Triangle, Circle, Square, Rectangle, Parallelogram, Trapezium]
  Select a Shape: [Type it in]""";

  print(firstMessage);
  _select = stdin.readLineSync() as String;
  _checkFirstMenu();
  return _select;
}

void _checkFirstMenu() {
  while (!(_select == "Circle" ||
      _select == "Triangle" ||
      _select == "Square" ||
      _select == "Rectangle" ||
      _select == "Parallelogram" ||
      _select == "Trapezium")) {
    print(INVALID_CASING);
    firstMenu();
  }
}

String secondMenu() {
  print("What do you want to calculate: Area? or Perimeter? [Type it in]");
  parameter = stdin.readLineSync() as String;
  _checkSecondMenu();
  return parameter;
}

void _checkSecondMenu() {
  while (!(parameter == "Area" || parameter == "Perimeter")) {
    print(INVALID_CASING);
    secondMenu();
  }
}

void thirdMenu() {
  print("\nPress 1 to go back to MENU\nPress 2 to END");
  try {
    var input = int.parse(stdin.readLineSync()!);
    switch (input) {
      case 1:
        runCalculator();
        break;
      case 2:
        print("End of Program\n");
        break;
      default:
        print("Invalid Input");
        thirdMenu();
    }
  } on FormatException {
    print("\nInvalid Input\n");
    thirdMenu();
  }
}
