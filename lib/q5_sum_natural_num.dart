// Write a dart program to calculate the sum of natural numbers.

int sumOfNaturalNumbers(int n) {
  return n * (n + 1) ~/ 2;
}

void main() {
  int n = 10;
  print("Sum of $n natural numbers: ${sumOfNaturalNumbers(n)}");
}

