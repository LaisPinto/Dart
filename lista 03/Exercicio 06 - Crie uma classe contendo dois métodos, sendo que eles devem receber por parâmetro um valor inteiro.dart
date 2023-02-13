class Project {
  List<int> generateIncreasing(int value) {
    if (value < 0) {
      print("Valor não aceito");
    }

    return List.generate(value + 1, (i) => i);
  }

  List<int> generateDescending(int value) {
    if (value < 0) {
      print("Valor não aceito");
    }
    return List.generate(value + 1, (i) => i).reversed.toList();
  }
}

void main() {
  final project = Project();
  print(project.generateIncreasing(5));

  print(project.generateDescending(5));
}
