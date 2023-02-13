class Animal {
  String name;

  Animal({required this.name});

  factory Animal.fromMap(Map<String, dynamic> map) => Animal(
        name: map['name'],
      );

  Map<String, dynamic> toMap() => {'name': name};

  @override
  String toString() => "Name: ${toMap()}";
}

void main() {
  const mock = [
    {"name": "Lion"},
    {"name": "Tiger"},
    {"name": "Bear"},
    {"name": "Elephant"},
    {"name": "Gorilla"},
    {"name": "Chimpanzee"},
    {"name": "Leopard"},
    {"name": "Jaguar"},
    {"name": "Puma"},
    {"name": "Crocodile"},
  ];

  final List<Animal> animals = mock.map((animal) => Animal.fromMap(animal)).toList();

  for (var animal in animals) {
    print(animal);
  }
}
