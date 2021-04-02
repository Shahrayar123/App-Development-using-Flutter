// Q9: Write a program to convert Fahrenheit into Celsius (user input).

// Formula:
//     C = (32°F − 32) × 5/9
// ------------------------------------------

import 'dart:io';

void main() {
  // declearing va3riables
  double fahrenheit;
  double celsius;

  // taking fahrenheit value from user
  print("Enter temperature in Fahrenheit: ");
  fahrenheit = double.parse(stdin.readLineSync());

  // calculating celsius
  celsius = (32 * fahrenheit - 32) * 5 / 9;

  // displaying result
  print("Celsius equavlent of ${fahrenheit} fahrenheit is: ${celsius}°F");
}
