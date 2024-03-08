/**
 * Exercise 1: Write a program that checks if a given number is even or odd using an if statement
 */

import 'dart:io';

void main() {
  print("Enter a number:");
  var number = int.parse(stdin.readLineSync()!);

  if (number % 2 == 0) {
    print("$number is an even number.");
  } else {
    print("$number is an odd number.");
  }
}
