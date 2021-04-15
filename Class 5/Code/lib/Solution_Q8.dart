// Q8- From 1 to 101, make two array, one containing all even numbers and other containing all odd numbers.

void main() {
  // List that will contain even numbers
  List<int> even_list = [];

  // List that will contain odd numbers
  List<int> odd_list = [];

  int num = 1;
  while (num <= 101) {
    // if num is even
    if (num % 2 == 0) {
      even_list.add(num);
    }

    // if num is odd
    else {
      odd_list.add(num);
    }

    // incrementing number by 1
    num++;
  }

  print("Even number list is: ${even_list}");
  print("Odd number list is: ${odd_list}");
}
