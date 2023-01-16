abstract class Implementation {
  String? getAbbreviation();
}

class Showname implements Implementation {
  String? name;
  String? lastname;

  Showname(this.name, this.lastname);

  @override
  String? getAbbreviation() =>
      (name != null && lastname != null) ? "${name!.toUpperCase().substring(0, 2)}${lastname!.toUpperCase().substring(0, 1)}" : null;

  @override
  String toString() => "${getAbbreviation()}";
}

void main() {
  final showname = Showname("lais", "pinto");
  print(showname);
}
