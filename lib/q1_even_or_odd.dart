// 1. Write a dart program to check if the number is odd or even.

void checkEvenOrOdd(int num) {
  if (num % 2 == 0) {
    print("$num is even.");
  } else {
    print("$num is odd.");
  }
}

void main() {
  int num = 3;
  checkEvenOrOdd(num);
}