/**
 * Exercise 2: Define a function that checks if a number is prime (divisible only by 1 and itself).
 *  Use it to check for prime numbers within a range
 */

void main() {
  int startRange = 1;
  int endRange = 20;

  print("Prime numbers between $startRange and $endRange are:");
  for (int i = startRange; i <= endRange; i++) {
    if (isPrime(i)) {
      print(i);
    }
  }
}

bool isPrime(int number) {
  if (number <= 1) {
    return false;
  }

  for (int i = 2; i <= number / 2; i++) {
    if (number % i == 0) {
      return false;
    }
  }

  return true;
}
