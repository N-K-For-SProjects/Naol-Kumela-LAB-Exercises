/**
 * Exercise 4: Implement a simple calculator using a switch statement 
 * to handle addition, subtraction, multiplication, and division
 */

import 'dart:io';

void main() {
  print("Enter first number:");
  var num1 = double.parse(stdin.readLineSync()!);

  print("Enter operation (+, -, *, /):");
  var operation = stdin.readLineSync()!;

  print("Enter second number:");
  var num2 = double.parse(stdin.readLineSync()!);

  double result = 0.0;

  switch (operation) {
    case '+':
      result = num1 + num2;
      break;
    case '-':
      result = num1 - num2;
      break;
    case '*':
      result = num1 * num2;
      break;
    case '/':
      if (num2 != 0) {
        result = num1 / num2;
      } else {
        print("Error: Division by zero is not allowed.");
        return;
      }
      break;
    default:
      print("Invalid operation. Please enter one of the following: +, -, *, /");
      return;
  }

  print("Result: $result");
}
