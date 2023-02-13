class Project {
  int id;
  String description;
  String value;

  Project({required this.id, required this.description, required this.value});

  factory Project.fromMap(Map<String, dynamic> map) => Project(
        id: map['id'],
        description: map['description'],
        value: map['value'],
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'description': description,
        'value': value,
      };

  @override
  String toString() => "Produto : ${toMap()}";
}

void main() {
  const mock = [
    {"id": 1, "description": "nada", "value": "1234"},
    {"id": 2, "description": "nada", "value": "1234"},
    {"id": 3, "description": "nada", "value": "1234"},
    {"id": 4, "description": "nada", "value": "1234"},
    {"id": 5, "description": "nada", "value": "1234"},
  ];

  final List<Project> projects = mock.map((project) => Project.fromMap(project)).toList();

  for (var project in projects) {
    print(project);
  }
}
