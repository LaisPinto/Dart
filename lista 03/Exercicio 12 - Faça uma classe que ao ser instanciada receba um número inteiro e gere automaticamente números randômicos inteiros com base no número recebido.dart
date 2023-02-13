import 'dart:math';

mixin RandomNumber {
  var generateRandomNumbers = Random();
  List<int> generateListRandomNumbers({required int value}) => List.generate(value, (index) => generateRandomNumbers.nextInt(1000));
}

class Number with RandomNumber {
  int value;

  List<int> listOfRandomNumbers = [];

  Number({required this.value});

  bool islistEmpty() => listOfRandomNumbers.isEmpty;

  void inflateListOfRandomNumbers() => listOfRandomNumbers = generateListRandomNumbers(value: value);

  List<int> generateEvenNumbers({required List<int> listOfRandomNumbers}) => listOfRandomNumbers.where((value) => value % 2 == 0).toList();

  List<int> generateOddNumbers({required List<int> listOfRandomNumbers}) => listOfRandomNumbers.where((value) => value % 2 != 0).toList();

  void showEvenNumbersAndOddNumbers() {
    if (islistEmpty()) {
      print("Não é uma lista válida");
    } else {
      print("Base list: $listOfRandomNumbers");
      print("Even Numers: ${generateEvenNumbers(listOfRandomNumbers: listOfRandomNumbers)}");
      print("Odd Numbers: ${generateOddNumbers(listOfRandomNumbers: listOfRandomNumbers)}");
    }
  }

  @override
  String toString() => "Value: $value";
}

void main() {
  final number = Number(value: 10);
  number.inflateListOfRandomNumbers();
  number.showEvenNumbersAndOddNumbers();
}
