// Q2- Print table of number(user choice) to n(user choice) times

import 'dart:io';

void main() {
  // Declearing variable that will contain number of table which user enter
  int table_number;

  // Will contain length of table
  int table_length;

  print("Enter table number that you want to print: ");
  table_number = int.parse(stdin.readLineSync());

  print("Enter length of table: ");
  table_length = int.parse(stdin.readLineSync());

  for (int i = 1; i <= table_length; i++) {
    print("${table_number} x ${i} = ${table_number * i}");
  }
}
