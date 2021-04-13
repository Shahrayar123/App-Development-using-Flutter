// Q3- Take integer inputs from user until he/she presses q ( Ask to press q to quit after every integer input ). Print average and product of all numbers.

import 'dart:io';

void main() {
//   Dellearing variables that holds average, final product and final sum of user entered numbers
  double average, product = 1;
  double sum = 0;

// For user choice, to quit or not
  String choice;

// holds loop index
  int index = 0;

// temperary variable that holds user entered number
  double temp;

// how many times loop execute
  int loop_counter = 1;

  do {
    print("Enter ${index + 1} number");

    temp = double.parse(stdin.readLineSync());
    sum += temp;
    product *= temp;

    print("Enter 'q' to quit");
    choice = stdin.readLineSync();

    if (choice.toLowerCase() != 'q') {
      loop_counter++;
    }
  } while (choice.toLowerCase() != 'q');

  // Calculating average
  average = sum / loop_counter;

  print("Average of numbers is: ${average}");
  print("Product of numbers is: ${product}");
}
