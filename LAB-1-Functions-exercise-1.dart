/**
 * Exercise 1: Create a function that takes two numbers as arguments and returns their sum. 
 * Call the function from main and print the result
 */

void main() {
  double number1 = 10;
  double number2 = 20;

  double sum = sumNumbers(number1, number2);

  print("The sum of $number1 and $number2 is: $sum");
}

double sumNumbers(double num1, double num2) {
  return num1 + num2;
}
