mixin PersonName {
  String? getAbbreviation(name) {
    if (name != null) {
      return name.toUpperCase().substring(0, 3);
    }
    return "BAD";
  }
}

class Person with PersonName {
  String? name;

  Person(this.name);

  @override
  String toString() => "$name ${getAbbreviation(name)}";
}

void main() {
  final person = Person("Lais");
  print(person);
}
