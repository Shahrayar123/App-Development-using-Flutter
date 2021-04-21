// Q1- Write a function to calculate area and perimeter of a rectangle.

import 'dart:io';

void main() {
  double length, width;
  print("Enter length of Rectangle: ");
  length = double.parse(stdin.readLineSync());

  print("Enter width of Rectangle: ");
  width = double.parse(stdin.readLineSync());

  print("Area of Rectangle is: ${calculateArea(length, width)}");
  print("Perimeter of Rectangle is: ${calculatePerimeter(length, width)}");
}

// we use dynamic return type when we not sure about return type, It is generic return type
dynamic calculateArea(double length, double width) {
  return length * width;
}

double calculatePerimeter(double length, double width) {
  return 2 * (length + width);
}
