// Q10: Take two int values from user and print greatest among them.

import 'dart:io';

void main() {
  int num1, num2;

  print("Enter first number: ");
  num1 = int.parse(stdin.readLineSync());

  print("Enter second number: ");
  num2 = int.parse(stdin.readLineSync());

  if (num1 > num2) {
    print("${num1} is greater then ${num2}");
  } else if (num1 == num2) {
    print("Both  numbers are equal");
  } else {
    print("${num2} is greater then ${num1}");
  }
}
