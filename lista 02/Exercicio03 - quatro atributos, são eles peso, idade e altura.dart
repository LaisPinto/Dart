class Person {
  String? name;
  double? peso;
  int? idade;
  double? altura;

  Person(this.name, this.peso, this.idade, this.altura);

  Person.fromMap(Map<String, dynamic> map) {
    name = map['name'] ?? 'Valor nulo';
    peso = map['peso'] ?? 70.0;
    idade = map['idade'] ?? 24;
    altura = map['altura'] ?? 1.65;
  }

  String? checkAge() {
    if (idade! > 17) {
      return "Você é maior de idade";
    } else {
      return "Você é menor de idade";
    }
  }

  @override
  String toString() => "Nome: $name \nPeso: $peso \nIdade: ${checkAge()} \nAltura: $altura ";
}

void main() {
  const mock = [
    {"name": "Thiago", "peso": 70.0, "idade": 18, "altura": 1.65}
  ];

  final List<Person> people = mock.map((element) => Person.fromMap(element)).toList();

  for (var person in people) {
    print(person);
  }
}
