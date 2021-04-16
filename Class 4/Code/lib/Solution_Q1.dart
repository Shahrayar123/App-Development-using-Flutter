// Q1- Take 10 integer inputs from user and store them in a list and print them on screen.

import 'dart:io';

void main() {
  // creating an empty list
  var list_ = [];

  const LOWER_RANGE = 0;
  const UPPER_RANGE = 10;

  // variable that stores number enterd by the user
  var temp;

  for (int i = LOWER_RANGE; i < UPPER_RANGE; i++) {
    print("Enter number at index ${i}");
    temp = stdin.readLineSync();
    list_.add(temp);
  }

  print("Elements you entered in list are:\n${list_}");
}
