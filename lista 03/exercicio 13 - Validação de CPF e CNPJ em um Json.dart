mixin CPFCheck {
  int calculateDigitChecker(String cpf) {
    List<int> numbers = cpf.split("").map((number) => int.parse(number)).toList();

    int modulus = numbers.length + 1;

    List<int> multiplied = [];

    for (var i = 0; i < numbers.length; i++) {
      multiplied.add(numbers[i] * (modulus - i));
    }

    int mod = multiplied.reduce((buffer, number) => buffer + number) % 11;

    return (mod < 2 ? 0 : 11 - mod);
  }

  static const maskRegexp = r'[^\d]';

  String format(String cpf) {
    RegExp regExp = RegExp(r'^(\d{3})(\d{3})(\d{3})(\d{2})$');

    return unmask(cpf).replaceAllMapped(regExp, (Match m) => "${m[1]}.${m[2]}.${m[3]}-${m[4]}");
  }

  String unmask(String? cpf) {
    RegExp regExp01 = RegExp(maskRegexp);
    cpf = cpf ?? "";
    return cpf.replaceAll(regExp01, "");
  }

  bool isValidCPF(String? cpf, [maskBeforeValidation = true]) {
    if (maskBeforeValidation) {
      cpf = unmask(cpf);
    }
    // CPF deve ser definido
    if (cpf == null || cpf.isEmpty) {
      return false;
    }
    //O CPF deve ter 11 caracteres
    if (cpf.length != 11) {
      return false;
    }

    //cpf.length - 2
    String numbers = cpf.substring(0, 9);
    numbers += calculateDigitChecker(numbers).toString();
    numbers += calculateDigitChecker(numbers).toString();
    return numbers.substring(numbers.length - 2) == cpf.substring(cpf.length - 2);
  }
}

mixin CNPJCheck {
  int calculateDigitChecker(String cnpj) {
    int i = 2;
    List<int> reversedListItem = cnpj.split("").map((reversedListItem) => int.parse(reversedListItem)).toList();

    int sum = 0;

    for (var number in reversedListItem) {
      sum += number * i;
      i = (i == 9 ? 2 : i + 1);
    }

    int mob = sum % 11;

    return (mob < 2 ? 0 : 11 - mob);
  }

  static const maskRegexpCNPJ = r'[^\d]';

  String format(String cnpj) {
    RegExp regExp = RegExp(r'^(\d{2})(\d{3})(\d{3})(\d{4})(\d{2})$');

    return unmask(cnpj).replaceAllMapped(regExp, (Match m) => "${m[1]}.${m[2]}.${m[3]}/${m[4]}-${m[5]}");
  }

  String unmask(String? cnpj) {
    RegExp regex = RegExp(maskRegexpCNPJ);
    cnpj = cnpj ?? "";
    return cnpj.replaceAll(regex, "");
  }

  bool isvalidCNPJ(String? cnpj, [maskBeforeValidetion = true]) {
    if (maskBeforeValidetion) {
      cnpj = unmask(cnpj);
    }

    // cnpj deve ser definido
    if (cnpj == null || cnpj.isEmpty) {
      return false;
    }

    // cnpj deve ter 14 caracteres
    if (cnpj.length != 14) {
      return false;
    }

    String numbers = cnpj.substring(0, cnpj.length - 2);
    numbers += calculateDigitChecker(numbers).toString();
    numbers += calculateDigitChecker(numbers).toString();

    return numbers.substring(numbers.length - 2) == cnpj.substring(cnpj.length - 2);
  }
}

class Client with CPFCheck, CNPJCheck {
  String name;
  int type;
  String document;

  Client({required this.name, required this.type, required this.document});

  factory Client.fromMap(Map<String, dynamic> map) => Client(
        name: map['name'],
        type: map['type'],
        document: map['document'],
      );

  String showTypeOfPersonAndDocument(String document, int type) {
    switch (type) {
      case 1:
        if (isValidCPF(document) != false) {
          return "CPF Válido";
        } else {
          return "CPF não válido.";
        }
      case 2:
        if (isvalidCNPJ(document)) {
          return "CNPJ válido";
        } else {
          return "CNPJ nao válido";
        }
      default:
        return "Type not valid";
    }
  }

  @override
  String toString() => "Name: $name Type: $type Documents: $document ${showTypeOfPersonAndDocument(document, type)}";
}

void main() {
  const mock = [
    {"name": "Lais", "type": 1, "document": "857.298.760-68"},
    {"name": "Julia", "type": 2, "document": "50.882.150/0001-44"},
    {"name": "Thiago", "type": 1, "document": "752.577.018-20"},
    {"name": "Raj", "type": 2, "document": "32.882.685/0001-33"},
  ];

  final List<Client> clients = mock.map((client) => Client.fromMap(client)).toList();
  for (var client in clients) {
    print(client);
  }
}
