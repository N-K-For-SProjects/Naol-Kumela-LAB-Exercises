/**
 * Implement a program that fetches weather data from an API using asynchronous functions 
 * and displays the current temperature and weather conditions. (This might require using 
 * a third-party weather API library.)
 */

import 'dart:convert';
import 'package:http/http.dart'
    as http; // Here, must install necessary packages

void main() {
  fetchWeatherData().then((weatherData) {
    double temperature = weatherData['main']['temp'];
    String description = weatherData['weather'][0]['description'];

    print('Current temperature: $temperature°C');
    print('Weather conditions: $description');
  }).catchError((error) {
    print('Error fetching weather data: $error');
  });
}

Future<Map<String, dynamic>> fetchWeatherData() async {
  final String apiKey = 'YOUR_API_KEY';
  final String city = 'Addis Ababa'; //

  final response = await http.get(Uri.parse(
      'https://api.openweathermap.org/data/2.5/weather?q=$city&appid=$apiKey&units=metric'));

  if (response.statusCode == 200) {
    return json.decode(response.body);
  } else {
    throw Exception('Failed to fetch weather data');
  }
}
