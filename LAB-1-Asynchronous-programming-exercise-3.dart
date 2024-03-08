/**
 * Exercise 3: Develop a program that simulates loading data from a database asynchronously. 
 * Use Future.delayed to create a simulated delay and then return a list of data.
 */

import 'dart:async';

void main() {
  loadDataFromDatabase().then((data) {
    print('Data loaded successfully: $data');
  }).catchError((error) {
    print('Error loading data: $error');
  });
}

Future<List<String>> loadDataFromDatabase() async {
  return await Future.delayed(Duration(seconds: 2), () {
    List<String> data = ['Abdissa', 'Merkeb', 'Beti', 'Ayele'];
    return data;
  });
}
