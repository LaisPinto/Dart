class Calculate {
  double? a;
  double? b;
  double? c;

  String? verifyNumber() {
    if (a != null && b != null && c != null) {
      if (a! >= b! && a! >= c!) {
        if (b! >= c!) {
          return '$c $b $a';
        } else {
          return '$a $c $b';
        }
      }
    }
    return null;
  }
}

void main() {
  final calculate = Calculate();
  calculate.a = 2;
  calculate.b = 1;
  calculate.c = 0;

  print(calculate.verifyNumber());
}
