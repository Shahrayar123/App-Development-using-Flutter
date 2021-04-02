// Q7: Length and breadth of a rectangle are 5 and 7 respectively. Write a program to calculate the area and perimeter of the rectangle.

void main() {
  int length = 5;
  int breadth = 7;

  int area, perimeter;

  area = length * breadth;
  perimeter = 2 * (length + breadth);

  print(
      "Area of rectangle with length ${length} and breadth ${breadth} is: ${area}");

  print(
      "Perimeter of rectangle with length ${length} and breadth ${breadth} is: ${perimeter}");
}
