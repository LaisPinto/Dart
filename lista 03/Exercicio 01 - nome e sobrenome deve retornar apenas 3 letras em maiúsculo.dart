abstract class IPerson {
  String? getAbbreviation();
}

class Person implements IPerson {
  String? name;
  String? lastname;

  Person(this.name, this.lastname);

  @override
  String? getAbbreviation() =>
      (name != null && lastname != null) ? "${name!.toUpperCase().substring(0, 2)}${lastname!.toUpperCase().substring(0, 1)}" : null;

  @override
  String toString() => "${getAbbreviation()}";
}

void main() {
  final person = Person("lais", "pinto");
  print(person);
}
