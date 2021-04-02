// Q5: Take input from user, store these values in x and y and swap them.

import "dart:io";

void main() {
  var x, y;

  stdout.write("Enter first number: ");
  x = int.parse(stdin.readLineSync());

  stdout.write("Enter second number: ");
  y = int.parse(stdin.readLineSync());

  // supporting variable that helps in swapping numbers
  var temp;

  // swapping numbers
  temp = x;
  x = y;
  y = temp;

  print("After swapping numbers x is: ${x} and y is: ${y}");
}
