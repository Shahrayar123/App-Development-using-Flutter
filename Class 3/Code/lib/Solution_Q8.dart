// Q8: Write a program to add 8 to the number 2345 and then divide it by 3.Now, calculate modulus
// of the number with 5 and then multiply the resultant value by 5.
// Display the final result.

void main() {
  // declearing variable;
  double result;

  // calculating sum and division and assigning number in 'result'
  result = (8 + 2345) / 3;

  // calculating modulus
  result = result % 5;

  // multiplying number with 5
  result = result * 5;

  // Displaying result
  print("Resultant number is: ${result}");
}
