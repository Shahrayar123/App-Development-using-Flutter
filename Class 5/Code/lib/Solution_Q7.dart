// Q7- You are given with an array of integer elements. Make a new array which will store square of elements of previous array.

void main() {
  var lis = [2, 4, 6, 5, 7, 11, 15, 20, 35, 43];

  var squared_list = [];

  for (int i = 0; i < lis.length; i++) {
    squared_list.add(lis[i] * lis[i]);
  }

  print("Squared List is: ${squared_list}");
}
