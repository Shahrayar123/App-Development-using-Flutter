// Q14: Take 3 inputs from user and check
// 	1- Is all are equal
// 	2- Is any of two are equal

import 'dart:io';

void main() {
  double num1, num2, num3;

  print("Enter first number: ");
  num1 = double.parse(stdin.readLineSync());

  print("Enter second number: ");
  num2 = double.parse(stdin.readLineSync());

  print("Enter third number: ");
  num3 = double.parse(stdin.readLineSync());

  // Checking first condition
  if ((num1 == num2) && (num2 == num3)) {
    print("All numbers are equal");
  } else {
    print("All numbers are not equal");
  }

  // Checking second condition
  if ((num1 == num2) || (num2 == num3) || (num3 == num1)) {
    print("Any two numbers are equal");
  } else {
    print("None of the two numbers are equal");
  }
}
