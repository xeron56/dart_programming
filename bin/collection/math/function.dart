import 'dart:math';

void main() {
  // Trigonometric Functions
  double angle = pi / 4; // 45 degrees
  double sine = sin(angle);
  double cosine = cos(angle);
  double tangent = tan(angle);
  double arcSine = asin(sine);
  double arcCosine = acos(cosine);
  double arcTangent = atan(tangent);
  double arcTangent2 = atan2(sine, cosine);
  print('Sine of 45 degrees: $sine');
  print('Cosine of 45 degrees: $cosine');
  print('Tangent of 45 degrees: $tangent');
  print('Arc Sine: $arcSine');
  print('Arc Cosine: $arcCosine');
  print('Arc Tangent: $arcTangent');
  print('Arc Tangent2: $arcTangent2');

  // Exponential and Logarithmic Functions
  double exponential = exp(2.0);
  double logarithm = log(exponential);
  print('Exponential of 2: $exponential');
  print('Natural Logarithm of Exponential of 2: $logarithm');

  // Min and Max Functions
  int maxValue = max(10, 20);
  int minValue = min(10, 20);
  print('Maximum of 10 and 20: $maxValue');
  print('Minimum of 10 and 20: $minValue');

  // Power and Square Root Functions
  num power = pow(2.0, 3.0) as double;
  double squareRoot = sqrt(16.0);
  print('2 raised to the power of 3: $power');
  print('Square root of 16: $squareRoot');

  // Random Number Generation
  Random random = Random();
  int randomInt = random.nextInt(100);
  double randomDouble = random.nextDouble();
  bool randomBool = random.nextBool();
  print('Random integer between 0 and 99: $randomInt');
  print('Random double between 0.0 and 1.0: $randomDouble');
  print('Random boolean: $randomBool');

  // Points and Rectangles
  Point<double> point1 = const Point(10.5, 20.3);
  Point<int> point2 = const Point(50, 75);
  Rectangle<double> rectangle1 = Rectangle.fromPoints(Point<double>(point1.x.toDouble(), point1.y.toDouble()), Point<double>(point2.x.toDouble(), point2.y.toDouble()));
  Rectangle<int> rectangle2 = const Rectangle(20, 50, 100, 200);
  MutableRectangle<double> mutableRectangle = MutableRectangle(20.5, 50.2, 100.0, 200.0);
  print('Point1: ($point1.x, $point1.y)');
  print('Point2: ($point2.x, $point2.y)');
  print('Rectangle1: (${rectangle1.left}, ${rectangle1.top}) ${rectangle1.width} x ${rectangle1.height}');
  print('Rectangle2: (${rectangle2.left}, ${rectangle2.top}) ${rectangle2.width} x ${rectangle2.height}');
  print('Mutable Rectangle: (${mutableRectangle.left}, ${mutableRectangle.top}) ${mutableRectangle.width} x ${mutableRectangle.height}');
}