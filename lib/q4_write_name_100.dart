// Write a dart program to print your name 100 times.

void printName100Times(String name) {
  for (int i = 1; i <= 100; i++) {
    print("$i: $name");
  }
}

void main() {
  String name = "Purnima Rana"; // Your name
  printName100Times(name);
}
