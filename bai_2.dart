import 'dart:math';

void solveQuadraticEquation(double a, double b, double c) {
  if (a == 0) {
    if (b == 0) {
      if (c == 0) {
        print("Phương trình có vô số nghiệm");
      } else {
        print("Phương trình vô nghiệm");
      }
    } else {
      double x = -c / b;
      print("Phương trình có nghiệm duy nhất: x = $x");
    }
  } else {
    double delta = b * b - 4 * a * c;
    if (delta < 0) {
      print('Phương trình vô nghiệm');
    } else if (delta == 0) {
      double x = -b / (2 * a);
      print('Phương trình có nghiệm kép: x1 = x2 = $x');
    } else {
      double sqrtDelta = sqrt(delta);
      double x1 = (-b - sqrtDelta) / (2 * a);
      double x2 = (-b + sqrtDelta) / (2 * a);
      print('Phương trình có 2 nghiệm phân biệt:');
      print('x1 = $x1');
      print('x2 = $x2');
    }
  }
}

void main() {
  double a = 1;
  double b = -3;
  double c = 2;
  solveQuadraticEquation(a, b, c);
}
