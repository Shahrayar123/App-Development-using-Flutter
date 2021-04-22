// Q8- Create a Student class and initialize it with name and roll number. Make methods to :
// 	1. Display - It should display all informations of the student.
// 	2. setAge - It should assign age to student
// 	3. setMarks - It should assign marks to the student.
//  4. Methods that returns students info individually

class Student {
  var stdName, stdID, stdMarks;
  var stdAge;

  void displayStudentInfo() {
    print("Name of student is: ${stdName}");
    print("Age of student is: ${stdAge}");
    print("ID number of student is: ${stdID}");
    print("Marks of student is: ${stdMarks}");
  }

  // Setters

  void setAge(int age) {
    this.stdAge = age;
  }

  void setMarks(double marks) {
    this.stdMarks = marks;
  }

  void setName(String name) {
    this.stdName = name;
  }

  void setID(int id) {
    this.stdID = id;
  }

  //Getters

  int getAge() {
    return this.stdAge;
  }

  String getName() {
    return this.stdName;
  }

  int getID() {
    return stdID;
  }

  double getMarks() {
    return this.stdMarks;
  }
}

void main() {
  var std1 = Student();

  std1.setAge(20);
  std1.setID(123);
  std1.setMarks(87.99);
  std1.setName("Bob");

  std1.displayStudentInfo();

  print(
      "\nName of student is ${std1.getName()} and his ID number is: ${std1.getID()}");
}
