// Q5- Take 10 number, store them in list and Print all elements of an array using for loop.

import 'dart:io';

void main() {
  // Creating empty list
  var lis = [];

  // taking 10 input from user
  const int THRESHOLD = 10;

// taking input from user
  for (int i = 1; i <= THRESHOLD; i++) {
    print("Enter ${i} number: ");
    lis.add(stdin.readLineSync());
  }

// Displaying list element
  for (int i = 0; i < THRESHOLD; i++) {
    print("Number at index ${i} is: ${lis[i]}");
  }
}
