mixin EmailValidator {
  bool isValidEmail(String email) {
    List<String> parts = email.split("@");
    return parts.length == 2 && parts[1].endsWith(".com") || parts[1].endsWith(".co") || parts[1].endsWith(".com.br");
  }
}

class Person with EmailValidator {
  String email;

  Person({required this.email});

  @override
  String toString() => "$email ${isValidEmail(email)}";
}

void main() {
  final emailValidator = Person(email: "laisp19@hotmail.com");
  print(emailValidator);
}
