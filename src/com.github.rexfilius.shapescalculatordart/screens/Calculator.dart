import '../models/Circle.dart';
import '../models/Parallelogram.dart';
import '../models/Rectangle.dart';
import '../models/Square.dart';
import '../models/Trapezium.dart';
import '../models/Triangle.dart';
import 'Screen.dart';

void runCalculator() {
  String selectInput;
  switch (firstMenu()) {
    case "Triangle":
      selectInput = secondMenu();
      if (selectInput == "Area")
        Triangle().calculateArea();
      else
        Triangle().calculatePerimeter();
      break;

    case "Circle":
      selectInput = secondMenu();
      if (selectInput == "Area")
        Circle().calculateArea();
      else
        Circle().calculatePerimeter();
      break;

    case "Square":
      selectInput = secondMenu();
      if (selectInput == "Area")
        Square().calculateArea();
      else
        Square().calculatePerimeter();
      break;

    case "Rectangle":
      selectInput = secondMenu();
      if (selectInput == "Area")
        Rectangle().calculateArea();
      else
        Rectangle().calculatePerimeter();
      break;

    case "Parallelogram":
      selectInput = secondMenu();
      if (selectInput == "Area")
        Parallelogram().calculateArea();
      else
        Parallelogram().calculatePerimeter();
      break;

    case "Trapezium":
      selectInput = secondMenu();
      if (selectInput == "Area")
        Trapezium().calculateArea();
      else
        Trapezium().calculatePerimeter();
      break;
  }
  thirdMenu();
}
