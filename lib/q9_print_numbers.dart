// Write a dart program to print 1 to 100 but not 41.

void printNumbersExcluding41() {
  List<String> numbers = [];

  for (int i = 1; i <= 100; i++) {
    if (i != 41) {
      numbers.add(i.toString()); // Add the number to the list as a string
    }
  }

  print(numbers.join(', ')); // Join the numbers with a comma and space
}

void main() {
  printNumbersExcluding41();
}
