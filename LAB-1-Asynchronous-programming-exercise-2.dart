/**
 * Exercise 2: Create a program that downloads a file from a URL using the http package in Dart. 
 * Use async and await to handle the download process asynchronously.
 */

import 'dart:io';
import 'package:http/http.dart'
    as http; // So here, must install necessary missing packages

void main() async {
  String url = 'https://example.com/file.txt';
  String savePath = 'downloaded_file.txt';

  await downloadFile(url, savePath);
  print('File downloaded successfully!');
}

Future<void> downloadFile(String url, String savePath) async {
  var response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    File file = File(savePath);
    await file.writeAsBytes(response.bodyBytes);
  } else {
    throw Exception('Failed to download file: ${response.statusCode}');
  }
}
