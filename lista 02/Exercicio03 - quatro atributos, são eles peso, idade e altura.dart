class Person {
  String? name;
  double? peso;
  int? idade;
  double? altura;

  Person({required this.name, required this.peso, required this.idade, required this.altura});

  factory Person.fromMap(Map<String, dynamic> map) => Person(
        name: map['name'],
        peso: map['peso'] ?? 70.0,
        idade: map['idade'] ?? 24,
        altura: map['altura'] ?? 1.65,
      );

// if ternario
  String checkAge() => (idade! > 17) ? "Você é maior de idade" : "Você é menor de idade";

  @override
  String toString() => "Nome: $name \nPeso: $peso \nIdade: ${checkAge()} \nAltura: $altura ";
}

void main() {
  const mock = [
    {"name": "Thiago", "peso": 70.0, "idade": 18, "altura": 1.65}
  ];
  //plural
  final List<Person> people = mock.map((person) => Person.fromMap(person)).toList();

  for (var person in people) {
    print(person);
  }
}
