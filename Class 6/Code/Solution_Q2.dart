// Q2- Write a function to calculate power of a number raised to other. E.g.- a^b.

import 'dart:io';
import 'dart:math';

void main() {
  int baseNumber, powerNumber, power;

  print("Enter base number: ");
  baseNumber = int.parse(stdin.readLineSync());

  print("Enter power Number: ");
  powerNumber = int.parse(stdin.readLineSync());

  power = pow(baseNumber, powerNumber);

  print("${baseNumber} raised to power ${powerNumber} is: ${power}");
}
