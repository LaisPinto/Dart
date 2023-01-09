abstract class Person {
  int? code;
  String? name;
  String? lastName;

  Person(this.code, this.name, this.lastName);

  String? getNameCapital() => "${name?.toUpperCase()} ${lastName?.toUpperCase()}";

  String? getNameFull() => "${name?.toLowerCase()} ${lastName?.toLowerCase()}";

  @override
  String toString() => "$code $name $lastName";
}

class Student extends Person {
  double? noteOne;
  double? noteTwo;

  Student(int? code, String? name, String? lastName, this.noteOne, this.noteTwo) : super(code, name, lastName);

  double? calculateAverage() => (noteOne! + noteTwo!) / 2;

  @override
  String toString() => "$noteOne $noteTwo ${super.toString()}";
}

class Teacher extends Person {
  double? valueHour;
  double? workedHour;

  Teacher(int? code, String? name, String? lastName, this.valueHour, this.workedHour) : super(code, name, lastName);

  double calculateSalary() => (workedHour! * valueHour!);

  @override
  String toString() => "$valueHour $workedHour ";
}

void main() {
  final student = Student(1, 'lais', 'pinto', 10, 5);
  print(student.calculateAverage());
  print(student.getNameCapital());
  print(student.getNameFull());

  final teache = Teacher(1, 'lais', 'pinto', 12, 30);
  print(teache.calculateSalary());
}
