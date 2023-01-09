class Project {
  int? userId;
  int? id;
  String? title;
  bool? completed;

  Project(this.userId, this.id, this.title, this.completed);

  Project.fromMap(Map<String, dynamic> map) {
    userId = map['userId'] ?? 1;
    id = map['id'] ?? 1;
    title = map['title'] ?? 'delectus aut autem';
    completed = map['completed'] ?? false;
  }

  @override
  String toString() => "userId: $userId \nid: $id \ntitle: $title \ncompleted: $completed";
}

void main() {
  const mock = [
    {"userId": 1, "id": 1, "title": "delectus aut autem", "completed": false}
  ];

  final List<Project> people = mock.map((element) => Project.fromMap(element)).toList();

  for (var project in people) {
    print(project);
  }
}
