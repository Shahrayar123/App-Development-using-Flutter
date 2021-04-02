// Q4: Take input from user. store 3 doubles in variables. Print their average.

// package used to get input from user
import 'dart:io';

// In dart, there are two ways to display output in the console:

// 1- Using print() function.
// 2- Using stdout.write() statement.

void main() {
  // declearing variables
  double num1, num2, num3;

  // Initilizing constant variable with value 3
  const TOTAL_NUM = 3;

  // declearing variable that will contain average of numbers
  double avg;

  // For first number
  print("Enter first number: ");
  num1 = double.parse(stdin.readLineSync());

  // For second number
  print("Enter Second number: ");
  num2 = double.parse(stdin.readLineSync());

  // For third number
  print("Enter third number: ");
  num3 = double.parse(stdin.readLineSync());

  avg = (num1 + num2 + num3) / TOTAL_NUM;

  print("Average of ${num1}, ${num2} and ${num3} is: ${avg}");
}
