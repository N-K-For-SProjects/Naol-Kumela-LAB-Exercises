/**
 * Define a constant variable for the speed of light (299,792,458 meters per second). 
 * Calculate the time it takes for light to travel a certain distance (user input).
 */

import 'dart:io';

void main() {
  const speedOfLight = 299792458; // meters per second

  print("Enter the distance in meters:");
  var distance = double.parse(stdin.readLineSync()!);

  var time = distance / speedOfLight;

  print(
      "The total duaration of time taken for light to travel $distance meters: is $time seconds");
}
