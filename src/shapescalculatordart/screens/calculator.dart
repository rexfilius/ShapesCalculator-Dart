import '../shape_lib.dart';

void runCalculator() {
  int selectedMeasurement;
  final selectedShape = menuToSelectShape();

  switch (selectedShape) {
    case Shapes.Triangle:
      selectedMeasurement = menuToSelectMeasurement();
      measureShape(selectedMeasurement, Triangle());
      break;

    case Shapes.Circle:
      selectedMeasurement = menuToSelectMeasurement();
      measureShape(selectedMeasurement, Circle());
      break;

    case Shapes.Square:
      selectedMeasurement = menuToSelectMeasurement();
      measureShape(selectedMeasurement, Square());
      break;

    case Shapes.Rectangle:
      selectedMeasurement = menuToSelectMeasurement();
      measureShape(selectedMeasurement, Rectangle());
      break;

    case Shapes.Parallelogram:
      selectedMeasurement = menuToSelectMeasurement();
      measureShape(selectedMeasurement, Parallelogram());
      break;

    case Shapes.Trapezium:
      selectedMeasurement = menuToSelectMeasurement();
      measureShape(selectedMeasurement, Trapezium());
      break;

    default:
      break;
  }
  menuToContinueOrEnd();
}
