// Q6- Create a class named 'Member' having the following:
//     Data members
// 	1 - Name
// 	2 - Age
// 	3 - Phone number
// 	4 - Address
// 	5 - Salary
//  --> It also has a method named 'printSalary' which prints the salary of the members.
//  --> Two classes 'Employee' and 'Manager' inherits the 'Member' class.
//      The 'Employee' and 'Manager' classes have data members 'specialization' and 'department'
//      respectively. Now, assign name, age, phone number, address and salary to an employee
//      and a manager by making an object of both of these classes and print the same.

class Member {
  var name, phone_number, address;
  var age;
  var salary;

  dynamic printSalary() {
    print("Salary of ${name} is: ${salary}");
  }
}

class Employee extends Member {
  var specilization, department;

  dynamic displaySpecilization() {
    print("Specilization of ${name} is: ${this.specilization}");
  }

  dynamic displayDepartment() {
    print("Department of ${name} is: ${this.department}");
  }
}

class Manager extends Member {
  var specilization, department;

  dynamic displaySpecilization() {
    print("Specilization of ${name} is: ${this.specilization}");
  }

  dynamic displayDepartment() {
    print("Department of ${name} is: ${this.department}");
  }
}

void main() {
  var emp1 = Employee();
  var mngr1 = Manager();

  emp1.name = "Bob";
  emp1.department = "SE";

  mngr1.name = "Alice";
  mngr1.department = "SE";

  emp1.displayDepartment();

  mngr1.displayDepartment();
}
