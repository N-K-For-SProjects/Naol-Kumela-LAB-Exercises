/**
 * Exercise 1: Implement an asynchronous function that simulates a network call and returns a random quote after a delay. 
 * Use async and await to make the main program wait for the quote before printing it.
 */

import 'dart:async';
import 'dart:math';

Future<String> fetchRandomQuote() async {
  await Future.delayed(const Duration(seconds: 2));

  final quotes = [
    "Better an egg this year than a chicken next year.",
    "Don't blame God for creating the tiger — instead, thank him for not giving it wings.",
    "One who tries to hide with a dog, a child, a goat, or a person with a cold, will not remain hidden.",
    "Coffee and love taste best when hot.",
    "Confiding a secret to an unworthy person is like carrying a grain in a bag with a hole in it.",
    "When one is in love, a cliff becomes a meadow.",
    "A good name is better than good perfume.",
  ];

  final randomIndex = Random().nextInt(quotes.length);
  final selectedQuote = quotes[randomIndex];

  return selectedQuote;
}

void main() async {
  final quote = await fetchRandomQuote();
  print(quote);
}
