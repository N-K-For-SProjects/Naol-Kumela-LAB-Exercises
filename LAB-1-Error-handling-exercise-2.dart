/**
 * 
 */

double? divideNumbers(double dividend, double divisor) {
  try {
    if (divisor == 0) {
      throw Exception("Division by Zero");
    }
    return dividend / divisor;
  } catch (e) {
    print('Error: Cannot divide by zero');
    return null;
  }
}

void main() {
  double? result1 = divideNumbers(10, 2);
  print('Result1: $result1');

  double? result2 = divideNumbers(8, 0);
  print('Result2: $result2');
}
