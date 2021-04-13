// Q1- Take 10 integers from keyboard using loop and print their average value on the screen.

import 'dart:io';

void main() {
  // Declearing 'avg'
  double avg;

  // Declearning constant
  const int TOTAL_NUMS = 10;

  // Initializing 'sum' with 0
  double sum = 0;

  for (int i = 0; i < TOTAL_NUMS; i++) {
    print("Enter ${i + 1} number: ");
    sum += double.parse(stdin.readLineSync());
  }

  // Calculating average
  avg = sum / TOTAL_NUMS;

  print("Average of entered numbers is: ${avg}");
}
