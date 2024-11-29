import 'package:dartz/dartz.dart';

class Arithmetic {
  final int first;
  final int second;

  Arithmetic(this.first, this.second);

  int sub() {
    return first - second;
  }

  // Using either
  Either<String, int> add() {
    try {
      return Right(first + second);
    } catch (e) {
      return Left(e.toString());
    }
  }
}

void main() {
  var arithmetic = Arithmetic(10, 20);
  print("Substraction is: ${arithmetic.sub()}");

  var result = arithmetic.add();
  result.fold(
    (left) => print("Error ocurred: $Left"),
    (right) => print("Addition is: $Right"),
  );
}
