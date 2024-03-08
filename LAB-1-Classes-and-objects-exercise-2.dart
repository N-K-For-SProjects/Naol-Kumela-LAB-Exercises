/**
 * Exercise 2: Define a Student class that inherits from Person and adds properties like roll number and marks. 
 * Create student objects and use methods to calculate total marks or average
 */

class Person {
  String name;
  int age;
  String address;

  Person(this.name, this.age, this.address);
  set changeAddress(value) {
    this.address = value;
  }
}

class Student extends Person {
  int rollNumber;
  int marks;

  Student(this.rollNumber, this.marks, String name, int age, String address)
      : super(name, age, address);

  int calculateTotalMarks() {
    return rollNumber + marks;
  }

  double calculateAverage() {
    return (rollNumber + marks) / 2;
  }
}

void main() {
  Student student1 = Student(1, 90, 'Abdul Jemal', 20, "Kaliti");
  print(student1.name);
  student1.rollNumber = 2;
  print(student1.rollNumber);
  student1.marks = 88;
  print(student1.marks);
  print(student1.calculateTotalMarks());
  print(student1.calculateAverage());
}
