class Person {
  List<String> name = ["Maria", "José", "Antônio", "Jessica", "João", "Francisco", "Ana", "Luiz", "Daniel", "Pedro"];

  List<String> getNames() {
    return name;
  }
}

void main() {
  final person = Person();
  print(person.name);
}
