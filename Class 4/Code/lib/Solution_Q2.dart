// Q2- Take number from user and find in list that whether this number is present in list or not (Also display index number of number)

import 'dart:io';

void main() {
  List<int> lis = [
    12,
    234,
    14,
    23,
    34,
    13,
    25,
    23,
    5123,
    5,
    23,
    35,
    10,
    15,
    19,
    35,
    34
  ];

  bool flag = false;

  print("Enter number to find it in the list: ");
  int num = int.parse(stdin.readLineSync());

  for (int i = 0; i < lis.length; i++) {
    if (lis[i] == num) {
      flag = true;
      print("${num} is present in list at index ${i}");
      break;
    } else {
      flag = false;
    }
  }

  if (flag == false) print("${num} is not present in List");

  print("List is: ${lis}");
}
