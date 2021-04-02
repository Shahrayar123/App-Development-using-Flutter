// Q3: Store five doubles in variables. Print their average.

void main() {
  // Declearing 5 ddouble type variables
  double num1, num2, num3, num4, num5;

  // defining constant
  const TOTAL_NUMBERS = 5;

  // Assigning numbers
  num1 = 12;
  num2 = 13;
  num3 = 14;
  num4 = 15;
  num5 = 16;

  double sum = num1 + num2 + num3 + num4 + num5;
  double average = sum / TOTAL_NUMBERS;

  print(
      "Average of ${num1}, ${num2}, ${num3}, ${num4} and ${num5} is: ${average}");
}
