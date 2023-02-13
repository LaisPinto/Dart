mixin GenderConverter {
  String convertGender(int gender) {
    switch (gender) {
      case 1:
        return "feminino";
      case 2:
        return "masculino";
      case 3:
        return "outros";
      default:
        return "desconhecido";
    }
  }
}

class Person with GenderConverter {
  int id;
  String name;
  int gender;

  Person({required this.id, required this.name, required this.gender});

  factory Person.fromMap(Map<String, dynamic> map) => Person(
        id: map["id"],
        name: map["nome"],
        gender: map["sexo"],
      );

  @override
  String toString() => "Id: $id Nome: $name Sexo: ${convertGender(gender)}";
}

void main() {
  const mock = [
    {"id": 1, "nome": "Welinton", "sexo": 2},
    {"id": 2, "nome": "Julia", "sexo": 1},
    {"id": 3, "nome": "Laís", "sexo": 1},
    {"id": 4, "nome": "Raj", "sexo": 2},
    {"id": 5, "nome": "Tammy", "sexo": 3},
  ];

  final List<Person> people = mock.map((person) => Person.fromMap(person)).toList();
  for (var person in people) {
    print(person);
  }
}
