// Q5- Write a program which will ask the user to enter his/her marks (out of 100). Define a method that will display grades according to the marks entered as below:
// 	Marks        Grade
// 	91-100         AA
// 	81-90          AB
// 	71-80          BB
// 	61-70          BC
// 	51-60          CD
// 	41-50          DD
// 	<=40          Fail

import 'dart:io';

dynamic calculateGrade(double marks) {
  String grade = "****";

  if (marks >= 91 && marks <= 100)
    grade = "AA";
  else if (marks >= 81 && marks <= 90)
    grade = "AB";
  else if (marks >= 71 && marks <= 80)
    grade = "BB";
  else if (marks >= 61 && marks <= 70)
    grade = "BC";
  else if (marks >= 51 && marks <= 60)
    grade = "CD";
  else if (marks >= 41 && marks <= 50)
    grade = "DD";
  else if (marks <= 40)
    grade = "Fail";
  else
    grade = "Invalid";

  return grade;
}

void main() {
  double marks;

  print("Enter your marks: ");
  marks = double.parse(stdin.readLineSync());

  String g = calculateGrade(marks);

  print("Your grade is: ${calculateGrade(marks)}");
}
