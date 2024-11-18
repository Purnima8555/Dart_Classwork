void main() {
  print(add2(first:3, second:4));
  print(add2(first:3, second: 4, third:4));
}

int add2({
  required int? first,
  required int? second,
  int? third,
  int? fourth,
  int? fifth,
}) {
  return first! + second! + (third ?? 0) + (fourth ?? 0) + (fifth ?? 0);
}
