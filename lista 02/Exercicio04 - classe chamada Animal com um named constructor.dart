import 'Exercicio01 - Crie três classes pessoa, aluno e professor.dart';

class Animal {
  String? id;
  String? name;
  String? diet;
  String? status;

  Animal({required this.id, required this.name, required this.diet, required this.status});

  factory Animal.fromMap(Map<String, dynamic> map) => Animal(
        id: map['id'] ?? '5cc0746504e71a0010b85853',
        name: map['name'] ?? 'Animals and Plants',
        diet: map['diet'] == null || map['diet'].isEmpty ? "Não informado" : map['diet'],
        status: map['status'] == null || map['status'].isEmpty ? "Não informado" : map['status'],
      );

  @override
  String toString() => "_id: $id \nName: $name \nDiet: $diet \nStatus: $status";
}

void main() {
  const mock = [
    {"_id": "5cc0746504e71a0010b85855", "name": "Bastard's girls", "diet": "", "status": "Uncertain"},
    {"_id": "5cc0746504e71a0010b85853", "name": "Animals and Plants", "diet": "", "status": ""},
    {"_id": "5cc0746504e71a0010b85854", "name": "Basilisks", "diet": "Carnivore", "status": "Active"},
    {"_id": "5cc0746504e71a0010b85856", "name": "Bears", "diet": "Omnivores", "status": "Active"},
    {"_id": "5cc0746504e71a0010b85857", "name": "Cats", "diet": "Carnivore", "status": "Active"}
  ];

  final List<Animal> animals = mock.map((animal) => Animal.fromMap(animal)).toList();

  for (var animal in animals) {
    print(animal);
  }
}
