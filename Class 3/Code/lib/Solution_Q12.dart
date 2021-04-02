// Q12: Write a program to find square of a number.
// 	E.g.-
// 	INPUT : 2        OUTPUT : 4
// 	INPUT : 5        OUTPUT : 25

import 'dart:io';

int main() {
  double num;

  print("Enter number: ");
  num = double.parse(stdin.readLineSync());

  print("Square of ${num} is: ${num * num}");
}
