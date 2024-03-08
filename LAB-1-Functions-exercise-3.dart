/**
 * Exercise 3: Implement a function that takes a string as input and 
 * returns a new string with all characters reversed
 */

String reverseString(String input) {
  String reversedString = input.split('').reversed.join();
  return reversedString;
}

void main() {
  String inputString = "Selam sewotch, Endet Natchu!";
  String reversedString = reverseString(inputString);

  print("Original String: $inputString");
  print("Reversed String: $reversedString");
}
