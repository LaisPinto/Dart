abstract class Person {
  String? name;
  String? birthDate;
  String? sex;

  Person(this.name, this.birthDate, this.sex);

  @override
  String toString() => "$name $birthDate $sex";
}

class Employee extends Person {
  int? id;
  double? currentWage;
  String? office;

  Employee({String? name, String? birthDate, String? sex, this.id, this.currentWage, this.office}) : super(name, birthDate, sex);

  @override
  String toString() => "$id $currentWage $office ${super.toString()}";
}

class Rh {
  int? cnpj;
  String? companyName;

  Rh({this.cnpj, this.companyName});

  double? newSalary(double? salary, double? readjustment) => salary! + (salary * (readjustment! / 100));

  double? calculateIncrease({required Employee employee, double? readjustment}) => employee.currentWage! * readjustment! / 100;

  String? calculateSalaryIncrease({required Employee employee}) {
    double? readjustment;
    double? calculate;
    double? increase;
    if (employee.currentWage != null) {
      if (employee.currentWage! <= 280) {
        readjustment = 20;
        calculate = newSalary(employee.currentWage, readjustment);
        increase = calculateIncrease(employee: employee, readjustment: readjustment);
      } else if (employee.currentWage! > 280 && employee.currentWage! <= 700) {
        readjustment = 15;
        calculate = newSalary(employee.currentWage, readjustment);
        increase = calculateIncrease(employee: employee, readjustment: readjustment);
      } else if (employee.currentWage! > 700 && employee.currentWage! <= 1500) {
        readjustment = 10;
        calculate = newSalary(employee.currentWage, readjustment);
        increase = calculateIncrease(employee: employee, readjustment: readjustment);
      } else if (employee.currentWage! > 1500) {
        readjustment = 10;
        calculate = newSalary(employee.currentWage, readjustment);
        increase = calculateIncrease(employee: employee, readjustment: readjustment);
      }
      return "Salario atual: ${employee.currentWage} \nNovo salario: $calculate \nPorcentagem: $readjustment% \nValor do Aumento: $increase";
    }
    return null;
  }
}

void main() {
  final employee = Employee(currentWage: 280);

  final rh = Rh();
  print(rh.calculateSalaryIncrease(employee: employee));
}
