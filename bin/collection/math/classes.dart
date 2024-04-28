import 'dart:math';

void main() {
  // Random
  var random = Random();
  int intValue = random.nextInt(100);
  double doubleValue = random.nextDouble();
  bool boolValue = random.nextBool();
  print('Random int: $intValue');
  print('Random double: $doubleValue');
  print('Random bool: $boolValue');

  // Point
  Point<double> point1 = const Point(10.5, 20.3);
  Point<int> point2 = const Point(50, 75);
  print('Point1: ($point1.x, $point1.y)');
  print('Point2: ($point2.x, $point2.y)');

  // Rectangle
  Point<double> point1Double = Point<double>(point1.x.toDouble(), point1.y.toDouble());
  Point<double> point2Double = Point<double>(point2.x.toDouble(), point2.y.toDouble());
  Rectangle<double> rectangle1 = Rectangle.fromPoints(point1Double, point2Double);
  Rectangle<int> rectangle2 = const Rectangle(20, 50, 100, 200);
  print('Rectangle1: (${rectangle1.left}, ${rectangle1.top}) ${rectangle1.width} x ${rectangle1.height}');
  print('Rectangle2: (${rectangle2.left}, ${rectangle2.top}) ${rectangle2.width} x ${rectangle2.height}');

  // MutableRectangle
  MutableRectangle<double> mutableRectangle = MutableRectangle(20.5, 50.2, 100.0, 200.0);
  print('Mutable Rectangle: (${mutableRectangle.left}, ${mutableRectangle.top}) ${mutableRectangle.width} x ${mutableRectangle.height}');
  mutableRectangle.width = 150.0;
  mutableRectangle.height = 300.0;
  print('Mutable Rectangle (updated): (${mutableRectangle.left}, ${mutableRectangle.top}) ${mutableRectangle.width} x ${mutableRectangle.height}');

  // Math functions
  double angle = pi / 4;
  double sine = sin(angle);
  double cosine = cos(angle);
  double tangent = tan(angle);
  double arcSine = asin(sine);
  double arcCosine = acos(cosine);
  double arcTangent = atan(tangent);
  double arcTangent2 = atan2(sine, cosine);
  double exponential = exp(2.0);
  double logarithm = log(exponential);
  //double max = max(10, 20);
  //double min = min(10, 20);
  num power = pow(2.0, 3.0);
  double squareRoot = sqrt(16.0);
  print('Sine: $sine');
  print('Cosine: $cosine');
  print('Tangent: $tangent');
  print('Arc Sine: $arcSine');
  print('Arc Cosine: $arcCosine');
  print('Arc Tangent: $arcTangent');
  print('Arc Tangent2: $arcTangent2');
  print('Exponential: $exponential');
  print('Logarithm: $logarithm');
  print('Max: $max');
  print('Min: $min');
  print('Power: $power');
  print('Square Root: $squareRoot');
}