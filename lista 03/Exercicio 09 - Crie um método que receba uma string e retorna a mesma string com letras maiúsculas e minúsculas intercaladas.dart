class Person {
  String interleaveUppercaseLowercase(String name) {
    String output = '';
    for (int i = 0; i < name.length; i++) {
      if (i % 2 == 0) {
        output += name[i].toUpperCase();
      } else {
        output += name[i].toLowerCase();
      }
    }
    return output;
  }
}

void main() {
  final getName = Person();
  print(getName.interleaveUppercaseLowercase("juh"));
}
