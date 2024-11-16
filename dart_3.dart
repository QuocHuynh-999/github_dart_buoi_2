int ucln(int a, int b) {
  if (b == 0) {
    return a;
  }
  return ucln(b, a % b);
}

int bcnn(int a, int b) {
  return (a * b).abs() ~/ ucln(a, b);
}

void main() {
  int a = 12;
  int b = 18;

  int greatestCommonDivisor = ucln(a, b);
  int leastCommonMultiple = bcnn(a, b);

  print("Ước chung lớn nhất của $a và $b là: $greatestCommonDivisor");
  print("Bội chung nhỏ nhất của $a và $b là: $leastCommonMultiple");
}
