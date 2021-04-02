// Q16: Take obtained marks of student (Out of 100) and tell him Grade.

import 'dart:io';

void main() {
  double marks;

  print("Enter your obtained marks (Out of 100): ");
  marks = double.parse(stdin.readLineSync());

  if (marks >= 80) {
    print("Your grade is: A+");
  } else if (marks >= 70 && marks <= 80) {
    print("Your grade is: A");
  } else if (marks >= 60 && marks < 70) {
    print("Your grade is: B+");
  } else if (marks >= 50 && marks < 60) {
    print("Your grade is: B");
  } else if (marks >= 30 && marks < 50) {
    print("Your grade is: C");
  } else {
    print("Your grade is: D");
  }
}
