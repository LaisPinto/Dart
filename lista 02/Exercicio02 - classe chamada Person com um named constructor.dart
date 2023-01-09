class Person {
  String? name;

  Person({this.name});

  Person.fromMap(Map<String, String> map) {
    name = map['name'] ?? 'Valor nulo';
  }

  @override
  String toString() {
    return "Nome: $name";
  }
}

void main() {
  const mock = [
    {"name": "Thiago"},
    {"name": "Zé"}
  ];

  final List<Person> people = mock.map((element) => Person.fromMap(element)).toList();

  for (var person in people) {
    print(person);
  }
}
