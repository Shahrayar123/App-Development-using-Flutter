// Q15: Take age of user, And tell him whether he is eligible to vote or not.

import 'dart:io';

void main() {
  const ELIGIBLE_AGE = 18;

  int age;
  String name;

  print("Enter your name: ");
  name = stdin.readLineSync();

  print("Enter your age: ");
  age = int.parse(stdin.readLineSync());

  if (age >= ELIGIBLE_AGE) {
    print("${name}, you are Eligible to vote");
  } else {
    print("Sorry ${name}, you are not Eligible to vote");
  }
}
