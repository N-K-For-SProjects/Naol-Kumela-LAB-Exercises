/**
 * Exercise 5: Write a program that takes a grade as input and uses a switch statement to 
 * display the corresponding letter grade (A, B, C, etc.)
 */

import 'dart:io';

void main() {
  print("Enter a valid integer grade from 0-100:");
  var grade = int.parse(stdin.readLineSync()!);

  String letterGrade = "";

  switch (grade ~/ 10) {
    case 10:
    case 9:
      letterGrade = "A";
      break;
    case 8:
      letterGrade = "B";
      break;
    case 7:
      letterGrade = "C";
      break;
    case 6:
      letterGrade = "D";
      break;
    default:
      letterGrade = "F";
      break;
  }

  print("Letter Grade: $letterGrade");
}
