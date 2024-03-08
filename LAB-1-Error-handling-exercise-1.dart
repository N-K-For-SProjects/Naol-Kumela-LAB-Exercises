/**
 * Exercise 1: Write a program that takes a user input as a number and converts it to an integer. 
 * Use a try/catch block to handle potential FormatException 
 * if the input is not a valid number.
 */

import 'dart:io';

void main() {
  stdout.write('Enter a number: ');

  try {
    String userInput = stdin.readLineSync()!;
    int number = int.parse(userInput);
    print('Input converted to an integer: $number');
  } catch (e) {
    if (e is FormatException) {
      print('Invalid input. Please enter a valid number.');
    } else {
      print('An error occurred: $e');
    }
  }
}
