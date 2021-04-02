// Q13: If the marks of Robert in three subjects are entered through keyboard
// (each out of 100 ), Write a program to calculate his total marks and percentage marks.

import 'dart:io';

void main() {
  double math_marks, computer_marks, english_marks;
  const int TOTAL_MARKS = 300;

  print("Enter obtained marks in Mathematics: ");
  math_marks = double.parse(stdin.readLineSync());

  print("Enter obtained marks in Computer: ");
  computer_marks = double.parse(stdin.readLineSync());

  print("Enter obtained marks in English: ");
  english_marks = double.parse(stdin.readLineSync());

  double obtained_total = math_marks + computer_marks + english_marks;
  double percentage = (obtained_total * 100) / TOTAL_MARKS;

  print("Total marks of Robert is: ${obtained_total}");
  print("Percentage of Robert is: ${percentage}%");
}
