/**
 * Exercise 1: Design a Person class with properties like name, age, and address. 
 * Create objects of this class and access/modify their attributes
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

void main() {
  Person person = Person('Hana Gemetchu', 29, 'Piassa');

  print(person.name);
  person.age = 33;
  print(person.age);

  person.changeAddress = 'Kazanchis';
  print(person.address);
}
