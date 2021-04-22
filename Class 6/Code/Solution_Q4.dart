// Q4- Write a function to check if a number is even or not.

import 'dart:io';

bool isEven(int number) {
  if (number % 2 == 0)
    return true;
  else
    return false;
}

void main() {
  int number;

  print("Enter number: ");
  number = int.parse(stdin.readLineSync());

  if (isEven(number)) {
    print("${number} is Even");
  } else {
    print("${number} is Odd");
  }
}
