void main(){
  print(product(3,4));
  print(product(3,4,5,6,7));
}

int product(
  int first,
  int second, [
  int third = 1,
  int fourth = 1,
  int fifth = 1,
  ]) {
    return first * second * third * fourth * fifth;
  }
