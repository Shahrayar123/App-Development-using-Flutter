// Q3- Write function that print user entered number upto specified times

import 'dart:io';

void main() {
  int tableNumber, lowerRange, higherRange;

  print("Enter table Number: ");
  tableNumber = int.parse(stdin.readLineSync());

  print("Enter Lower Range: ");
  lowerRange = int.parse(stdin.readLineSync());

  print("Enter higher Range: ");
  higherRange = int.parse(stdin.readLineSync());

  printTable(tableNumber, lowerRange, higherRange);
}

void printTable(int tableNumber, int lowerRange, int higherRange) {
  for (int index = lowerRange; index <= higherRange; index++) {
    print("${tableNumber} * ${index} = ${tableNumber * index}");
  }
}
