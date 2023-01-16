abstract class Person {
  String? name;
  String? birthDate;
  String? gender;

  Person({this.name, this.birthDate, this.gender});

  @override
  String toString() => "$name $birthDate $gender";
}

class Employee extends Person {
  int? id;
  double? currentWage;
  String? office;

  Employee({String? name, String? birthDate, String? gender, this.id, this.currentWage, this.office})
      : super(name: name, birthDate: birthDate, gender: gender);

  @override
  String toString() => "$id $currentWage $office ${super.toString()}";
}

class Rh {
  int? cnpj;
  String? companyName;

  Rh({this.cnpj, this.companyName});

  double calculateNewSalary(double? salary, double? readjustment) => salary! + (salary * (readjustment! / 100));

  double calculateIncrease({required Employee employee, double? readjustment}) => employee.currentWage! * readjustment! / 100;

  String? calculateSalaryIncrease({required Employee employee}) {
    double? readjustment;
    double? calculate;
    double? increase;
    if (employee.currentWage == null) {
      return null;
    }
    if (employee.currentWage! <= 280) {
      readjustment = 20;
      calculate = calculateNewSalary(employee.currentWage, readjustment);
      increase = calculateIncrease(employee: employee, readjustment: readjustment);
    } else if (employee.currentWage! > 280 && employee.currentWage! <= 700) {
      readjustment = 15;
      calculate = calculateNewSalary(employee.currentWage, readjustment);
      increase = calculateIncrease(employee: employee, readjustment: readjustment);
    } else if (employee.currentWage! > 700 && employee.currentWage! <= 1500) {
      readjustment = 10;
      calculate = calculateNewSalary(employee.currentWage, readjustment);
      increase = calculateIncrease(employee: employee, readjustment: readjustment);
    } else if (employee.currentWage! > 1500) {
      readjustment = 10;
      calculate = calculateNewSalary(employee.currentWage, readjustment);
      increase = calculateIncrease(employee: employee, readjustment: readjustment);
    }
    return "Salario atual: ${employee.currentWage} \nNovo salario: $calculate \nPorcentagem: $readjustment% \nValor do Aumento: $increase";
  }
}

void main() {
  final employee = Employee(currentWage: 280);
  final rh = Rh();
  print(rh.calculateSalaryIncrease(employee: employee));
}
