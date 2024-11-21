class Student {
  // Private fields
  String _name = "";
  int _age = 0;

  // Getter and Setter for name
  String get name => _name;

  set name(String value) {
    if (value.isNotEmpty) {
      _name = value;
    } else {
      print("Name cannot be empty.");
    }
  }

  // Getter and Setter for age
  int get age => _age;

  set age(int value) {
    if (value > 0) {
      _age = value;
    } else {
      print("Age must be positive.");
    }
  }
}

void main() {
  Student student = Student();
  student.name = "Alice";
  student.age = 20;

  print("Student Name: ${student.name}");
  print("Student Age: ${student.age}");

  // Invalid input
  student.age = -5;
}
