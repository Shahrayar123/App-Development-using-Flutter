// Q11: Take age as input of 3 people and determine oldest and youngest among them.

import 'dart:io';

void main() {
  int p1, p2, p3;

  print("Enter age of first person: ");
  p1 = int.parse(stdin.readLineSync());

  print("Enter age of second person: ");
  p2 = int.parse(stdin.readLineSync());

  print("Enter age of third person: ");
  p3 = int.parse(stdin.readLineSync());

  if ((p1 > p2) && (p1 > p3)) {
    print("Person of age ${p1} is oldest");
  } else if ((p2 > p1) && (p2 > p3)) {
    print("Person of age ${p2} is oldest");
  } else {
    print("Person of age ${p3} is oldest");
  }

// ============================================

  if ((p1 < p2) && (p1 < p3)) {
    print("Person of age ${p1} is youngest");
  } else if ((p2 < p1) && (p2 < p3)) {
    print("Person of age ${p2} is youngest");
  } else {
    print("Person of age ${p3} is youngest");
  }
}
