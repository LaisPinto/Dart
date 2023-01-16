mixin PersonName {
  String getAbbreviation(String? name) => (name != null) ? name.toUpperCase().substring(0, 3) : "BAD";
}

class Person with PersonName {
  String name;

  Person({required this.name});

  @override
  String toString() => "$name ${getAbbreviation(name)}";
}

void main() {
  final person = Person(name: "Lais");
  print(person);
}
