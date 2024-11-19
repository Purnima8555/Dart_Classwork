import 'dart:io';

void simpleCalculator() {
  print("Enter the first number: ");
  double? num1 = double.tryParse(stdin.readLineSync() ?? '');

  print("Enter the second number: ");
  double? num2 = double.tryParse(stdin.readLineSync() ?? '');

  if (num1 == null || num2 == null) {
    print("Invalid input. Please enter valid numbers.");
    return;
  }

  print("Choose an operation (+, -, *, /): ");
  String? operation = stdin.readLineSync();

  if (operation == '+') {
    print("Result: ${num1 + num2}");
  } else if (operation == '-') {
    print("Result: ${num1 - num2}");
  } else if (operation == '*') {
    print("Result: ${num1 * num2}");
  } else if (operation == '/') {
    if (num2 == 0) {
      print("Invalid.");
    } else {
      print("Result: ${num1 / num2}");
    }
  } else {
    print("Invalid operation. Please enter +, -, *, or /.");
  }
}

void main() {
  simpleCalculator();
}
