import '../shape_lib.dart';

void runCalculator() {
  int selectedMeasurement;
  final selectedShape = menuToSelectShape();

  switch (selectedShape) {
    case ShapeList.Triangle:
      selectedMeasurement = menuToSelectMeasurement();
      measureShape(selectedMeasurement, Triangle());
      break;

    case ShapeList.Circle:
      selectedMeasurement = menuToSelectMeasurement();
      measureShape(selectedMeasurement, Circle());
      break;

    case ShapeList.Square:
      selectedMeasurement = menuToSelectMeasurement();
      measureShape(selectedMeasurement, Square());
      break;

    case ShapeList.Rectangle:
      selectedMeasurement = menuToSelectMeasurement();
      measureShape(selectedMeasurement, Rectangle());
      break;

    case ShapeList.Parallelogram:
      selectedMeasurement = menuToSelectMeasurement();
      measureShape(selectedMeasurement, Parallelogram());
      break;

    case ShapeList.Trapezium:
      selectedMeasurement = menuToSelectMeasurement();
      measureShape(selectedMeasurement, Trapezium());
      break;

    default:
      break;
  }
  menuToContinueOrEnd();
}
