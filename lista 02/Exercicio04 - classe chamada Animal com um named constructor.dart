class Animal {
  String? id;
  String? name;
  String? diet;
  String? status;

  Animal(this.id, this.name, this.diet, this.status);

  Animal.fromMap(Map<String, dynamic> map) {
    id = map['id'] ?? '5cc0746504e71a0010b85853';
    name = map['name'] ?? 'Animals and Plants';
    diet = map['diet'] ?? 'não informado';
    status = map['status'] ?? 'não informado';
  }

  @override
  String toString() => "_id: $id \nName: $name \nDiet: $diet \nStatus: $status";
}

void main() {
  const mock = [
    {"_id": "5cc0746504e71a0010b85853", "name": "Animals and Plants", "diet": "não informado", "status": "não informado"},
    {"_id": "5cc0746504e71a0010b85854", "name": "Basilisks", "diet": "Carnivore", "status": "Active"},
    {
      "_id": "5cc0746504e71a0010b85855",
      "name": "Bastard's girls",
      "diet": "",
      "status": "Uncertain",
    },
    {
      "_id": "5cc0746504e71a0010b85856",
      "name": "Bears",
      "diet": "Omnivores",
      "status": "Active",
    },
    {
      "_id": "5cc0746504e71a0010b85857",
      "name": "Cats",
      "diet": "Carnivore",
      "status": "Active",
    }
  ];

  final List<Animal> people = mock.map((element) => Animal.fromMap(element)).toList();

  for (var animal in people) {
    print(animal);
  }
}
