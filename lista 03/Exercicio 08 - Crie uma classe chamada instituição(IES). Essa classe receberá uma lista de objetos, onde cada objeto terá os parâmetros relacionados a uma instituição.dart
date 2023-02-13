class Institution {
  int id;
  String name;
  String alias;
  String hostname;

  Institution({required this.id, required this.name, required this.alias, required this.hostname});

  factory Institution.fromMap(Map<String, dynamic> map) => Institution(
        id: map['id'],
        name: map['name'],
        alias: map['alias'],
        hostname: map['hostname'],
      );

  @override
  String toString() => "id: $id Name: $name Alias: $alias Hotname: $hostname";
}

void main() {
  const mock = [
    //alias = apelido
    {"id": 1, "name": "Lais", "alias": "não sei o que é", "hostname": "https://www.example.com"},
    {"id": 2, "name": "Julia", "alias": "não sei o que é", "hostname": "https://www.example.com"},
    {"id": 3, "name": "Raj", "alias": "não sei o que é", "hostname": "https://www.example.com"},
  ];

  final List<Institution> institutions = mock.map((institution) => Institution.fromMap(institution)).toList();

  for (var institution in institutions) {
    print(institution);
  }
}
