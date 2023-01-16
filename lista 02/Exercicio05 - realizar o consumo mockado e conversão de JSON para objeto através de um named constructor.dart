class Project {
  int? userId;
  int? id;
  String? title;
  bool? completed;

  Project({required this.userId, required this.id, required this.title, required this.completed});

  factory Project.fromMap(Map<String, dynamic> map) => Project(
        userId: map['userId'] ?? 1,
        id: map['id'] ?? 1,
        title: map['title'] ?? 'delectus aut autem',
        completed: map['completed'] ?? false,
      );

  @override
  String toString() => "userId: $userId \nid: $id \ntitle: $title \ncompleted: $completed";
}

void main() {
  const mock = [
    {"userId": 1, "id": 1, "title": "delectus aut autem", "completed": false}
  ];

  final List<Project> projects = mock.map((project) => Project.fromMap(project)).toList();

  for (var project in projects) {
    print(project);
  }
}
