class Person {
  String name;

  Person({required this.name});

  factory Person.fromMap(Map<String, dynamic> map) => Person(name: map['name']);

  @override
  String toString() => "Nome: $name";
}

void main() {
  const mock = [
    {"name": "Thiago"}
  ];

  final List<Person> people = mock.map((person) => Person.fromMap(person)).toList();

  for (var person in people) {
    print(person);
  }
}
