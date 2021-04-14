// Q6- Store integer data in 2 lists(each containing 5 element) and multiply both lists and store result in third list.

import 'dart:io';

void main() {
  List<int> list_1 = [];
  List<int> list_2 = [];

  // Contain multiplication result of list_1 and list_2
  List<int> list_3 = [];

  const int REQUIRED_LENGTH = 5;

  // For list_1
  print("------------ INPUT IN LIST_1 ------------");
  for (int i = 0; i < REQUIRED_LENGTH; i++) {
    print("Enter number at index ${i}: ");

    list_1.add(int.parse(stdin.readLineSync()));
  }

  // For list_2
  print("------------ INPUT IN LIST_2 ------------");
  for (int j = 0; j < REQUIRED_LENGTH; j++) {
    print("Enter number at index ${j}: ");

    list_2.add(int.parse(stdin.readLineSync()));
  }

  for (int k = 0; k < REQUIRED_LENGTH; k++) {
    list_3[k] = list_1[k] * list_2[k];
  }

  print(
      "After multiplying elements of ${list_1} and ${list_2} and resultant list is: ${list_3} ");
}
