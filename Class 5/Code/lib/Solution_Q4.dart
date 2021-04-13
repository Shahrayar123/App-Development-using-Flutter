// Q4- Print factorial of any number (user's choice)

import 'dart:io';

void main() {
  int number;

  int factorial = 1;

  print("Enter number to find factorial: ");
  number = int.parse(stdin.readLineSync());

  int i = number;
  while (i >= 1) {
    factorial *= i;
    i--;
  }

  print("Factorial of ${number} is: ${factorial}");
}
