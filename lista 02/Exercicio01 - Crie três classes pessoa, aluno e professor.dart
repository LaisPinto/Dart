abstract class Person {
  int code;
  String name;
  String lastName;

  Person({required this.code, required this.name, required this.lastName});

  String getCapitalizedName() => "${name.toUpperCase()} ${lastName.toUpperCase()}";

  String getFullName() => "${name.toLowerCase()} ${lastName.toLowerCase()}";

  @override
  String toString() => "$code $name $lastName";
}

class Student extends Person {
  double? gradeOne;
  double? gradeTwo;

  Student(int code, String name, String lastName, this.gradeOne, this.gradeTwo) : super(code: code, name: name, lastName: lastName);

  double calculateAverage() => (gradeOne! + gradeTwo!) / 2;

  @override
  String toString() => "$gradeOne $gradeTwo ${super.toString()}";
}

class Teacher extends Person {
  double valueHour;
  double workedHour;

  Teacher(int code, String name, String lastName, this.valueHour, this.workedHour) : super(code: code, name: name, lastName: lastName);

  double calculateSalary() => (workedHour * valueHour);

  @override
  String toString() => "$valueHour $workedHour ";
}

void main() {
  final student = Student(1, 'lais', 'pinto', 10, 5);
  print(student.calculateAverage());
  print(student.getCapitalizedName());
  print(student.getFullName());

  final teache = Teacher(1, 'lais', 'pinto', 12, 30);
  print(teache.calculateSalary());
}
