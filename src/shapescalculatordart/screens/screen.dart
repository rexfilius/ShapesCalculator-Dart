import 'dart:io';
import '../shape_lib.dart';

const INVALID_INPUT = "\nERROR! - Invalid Input\n";

var selectedShape = 0;
var selectedCalculation = 0;

final calculationMenu = {
  1: 'Area',
  2: 'Perimeter',
};

final shapeMenu = {
  1: Shapes.Triangle,
  2: Shapes.Circle,
  3: Shapes.Square,
  4: Shapes.Rectangle,
  5: Shapes.Parallelogram,
  6: Shapes.Trapezium,
};

Shapes? menuToSelectShape() {
  var firstMessage = """
  This Application Calculates The Area And Perimeter Of 2-Dimensional Shapes
  Type in a NUMBER corresponding to the SHAPE
  """;
  print(firstMessage);
  for (final shape in shapeMenu.entries) {
    print("${shape.key} - ${shape.value.name}");
  }

  try {
    selectedShape = int.parse(stdin.readLineSync() as String);
    checkMenuToSelectShape();
    return shapeMenu[selectedShape];
  } on Exception {
    print(INVALID_INPUT);
    menuToSelectShape();
  }
  return null;
}

void checkMenuToSelectShape() {
  while (!(shapeMenu.containsKey(selectedShape))) {
    print('\nPlease type in the NUMBER corresponding with the SHAPE\n');
    menuToSelectShape();
  }
}

int menuToSelectMeasurement() {
  print("What do you want to calculate:");
  int measurement = 0;
  for (final selection in calculationMenu.entries) {
    print("${selection.key} - ${selection.value}");
  }
  try {
    selectedCalculation = int.parse(stdin.readLineSync() as String);
    checkMenuToSelectMeasurement();
    measurement = selectedCalculation;
  } on Exception {
    print(INVALID_INPUT);
    menuToSelectMeasurement();
  }
  return measurement;
}

void checkMenuToSelectMeasurement() {
  while (!(calculationMenu.containsKey(selectedCalculation))) {
    print('\nPlease type in the corresponding NUMBER\n');
    menuToSelectMeasurement();
  }
}

void menuToContinueOrEnd() {
  print("\nType 1 to go back to MENU\nType 2 to END");
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
        print(INVALID_INPUT);
        menuToContinueOrEnd();
    }
  } on FormatException {
    print(INVALID_INPUT);
    menuToContinueOrEnd();
  }
}
