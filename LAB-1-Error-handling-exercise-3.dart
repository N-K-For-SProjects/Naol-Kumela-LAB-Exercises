/**
 * Implement a program that reads a file from disk. Use try/catch to handle potential
 *  FileSystemException (e.g., file not found) and provide informative error messages.
 */

import 'dart:io';

void readFile(String filePath) {
  try {
    File file = File(filePath);
    List<String> lines = file.readAsLinesSync();
    print('Contents of the file:');
    for (String line in lines) {
      print(line);
    }
  } catch (e) {
    if (e is FileSystemException) {
      print('Error: File not found or cannot be read');
    } else {
      print('An unexpected error occurred: $e');
    }
  }
}

void main() {
  String filePath = 'example.txt';
  readFile(filePath);
}
