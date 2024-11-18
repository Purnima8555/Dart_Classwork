// Write a dart program to check whether a number is positive, negative, or zero.

void checkNumberType(int num) {
  if (num > 0) {
    print("$num is Positive.");
  } else if (num < 0) {
    print("$num is Negative.");
  } else {
    print("$num is Zero.");
  }
}

void main() {
  int num = -9;
  checkNumberType(num);
}
