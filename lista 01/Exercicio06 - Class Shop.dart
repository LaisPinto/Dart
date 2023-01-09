class Shop {
  double calculate(double valueProduct, {int productQuantity = 1, int amountInstallments = 1, double? fees}) {
    if (fees != null) {
      return valueProduct * productQuantity + (productQuantity * valueProduct * fees) * amountInstallments;
    }
    return valueProduct * productQuantity * amountInstallments;
  }

  String? checkInstallments(double? valueProduct, {int productQuantity = 1, int amountInstallments = 1, double? fees}) {
    if (valueProduct != null) {
      if (amountInstallments > 0 && amountInstallments <= 4) {
        return '${calculate(valueProduct, productQuantity: productQuantity, amountInstallments: amountInstallments)}';
      }
      switch (amountInstallments) {
//         case 4:
//           return '${calculate(valueProduct, productQuantity: productQuantity, amountInstallments: amountInstallments)}';
        case 5:
          return '${calculate(valueProduct, productQuantity: productQuantity, amountInstallments: amountInstallments, fees: 0.01)}';
        case 6:
          return '${calculate(valueProduct, productQuantity: productQuantity, amountInstallments: amountInstallments, fees: 0.02)}';
        case 7:
          return '${calculate(valueProduct, productQuantity: productQuantity, amountInstallments: amountInstallments, fees: 0.03)}';
        case 8:
          return '${calculate(valueProduct, productQuantity: productQuantity, amountInstallments: amountInstallments, fees: 0.05)}';
        case 9:
          return '${calculate(valueProduct, productQuantity: productQuantity, amountInstallments: amountInstallments, fees: 0.08)}';
        case 10:
          return '${calculate(valueProduct, productQuantity: productQuantity, amountInstallments: amountInstallments, fees: 0.13)}';
        case 11:
          return '${calculate(valueProduct, productQuantity: productQuantity, amountInstallments: amountInstallments, fees: 0.14)}';
        case 12:
          return '${calculate(valueProduct, productQuantity: productQuantity, amountInstallments: amountInstallments, fees: 0.15)}';
      }
      return "Não é possivel parcelar em $amountInstallments vezes";
    }
    return "O valor esta incorreto";
  }
}

void main() {
  final shop = Shop();
  print(shop.checkInstallments(5000, amountInstallments: 1, productQuantity: 1));
}
