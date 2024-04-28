import 'dart:math';

void main() {
  // Constants
  print('e: $e'); // Base of the natural logarithms
  print('ln10: $ln10'); // Natural logarithm of 10
  print('ln2: $ln2'); // Natural logarithm of 2
  print('log10e: $log10e'); // Base-10 logarithm of e
  print('log2e: $log2e'); // Base-2 logarithm of e
  print('pi: $pi'); // The PI constant
  print('sqrt1_2: $sqrt1_2'); // Square root of 1/2
  print('sqrt2: $sqrt2'); // Square root of 2

  // Using the constants in calculations
  double angle = pi / 4; // 45 degrees
  double sine = sin(angle);
  double cosine = cos(angle);
  double tangent = tan(angle);
  print('Sine of 45 degrees: $sine');
  print('Cosine of 45 degrees: $cosine');
  print('Tangent of 45 degrees: $tangent');

  double logarithm = log(e); // Natural logarithm of e is 1
  print('Natural logarithm of e: $logarithm');

  double exponential = exp(1.0); // e raised to the power of 1 is e
  print('e raised to the power of 1: $exponential');

  double squareRoot = sqrt(2); // Square root of 2
  print('Square root of 2: $squareRoot');

  num power = pow(2, log2e); // 2 raised to the power of log2e is e
  print('2 raised to the power of log2e: $power');

  // Combining constants in calculations
  double area = pi * pow(10, 2); // Area of a circle with radius 10
  print('Area of a circle with radius 10: $area');

  double circumference = 2 * pi * 10; // Circumference of a circle with radius 10
  print('Circumference of a circle with radius 10: $circumference');

  double diagonalLength = sqrt(pow(20, 2) + pow(30, 2)); // Length of a diagonal in a rectangle with sides 20 and 30
  print('Length of a diagonal in a rectangle with sides 20 and 30: $diagonalLength');

  double sinPi = sin(pi); // Sine of pi is 0
  print('Sine of pi: $sinPi');

  double cosPi = cos(pi); // Cosine of pi is -1
  print('Cosine of pi: $cosPi');

  double tanPi = tan(pi); // Tangent of pi is 0
  print('Tangent of pi: $tanPi');
}