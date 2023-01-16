class Project {
  String? id;
  String? title;
  String? description;
  String? startDate;
  String? expectedEndDate;
  int? amountPeople;

  Project(
      {required this.id,
      required this.title,
      required this.description,
      required this.startDate,
      required this.expectedEndDate,
      required this.amountPeople});

  factory Project.fromMap(Map<String, dynamic> map) => Project(
        id: map['id'] ?? '93f08018-xxx-yyyy-zzzz-516b48bc6060',
        title: map['title'] ?? '"Projeto novo"',
        description: map['description'] ?? 'Esse é um projeto que visa ensinar a utilização de construtores.',
        startDate: map['startDate'] ?? '10/12/2022 09:10:00"',
        expectedEndDate: map['expectedEndDate'] ?? '23/12/2022 10:32:10',
        amountPeople: map['amountPeople'] ?? 1,
      );

  @override
  String toString() =>
      "Id: $id \ntitle: $title \ndescription: $description \nstartDate: $startDate \nexpectedEndDate: $expectedEndDate \namountPeople: $amountPeople";
}

void main() {
  const mock = [
    {
      "id": "93f08018-xxx-yyyy-zzzz-516b48bc6060",
      "title": "Projeto novo",
      "description": "Esse é um projeto que visa ensinar a utilização de construtores.",
      "start_date": "10/12/2022 09:10:00",
      "expected_end_date": "23/12/2022 10:32:10",
      "amount_people": 1
    }
  ];

  final List<Project> projects = mock.map((project) => Project.fromMap(project)).toList();

  for (var project in projects) {
    print(project);
  }
}
