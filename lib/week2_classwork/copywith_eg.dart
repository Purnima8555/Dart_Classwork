class Rectangle {
  final int height;
  final int width;

  Rectangle({required this.height, required this.width});

  // copyWith method to create a new instance with modified properties
  Rectangle copyWith({int? height, int? width}) {
    return Rectangle(
      height: height ?? this.height,
      width: width ?? this.width,
    );
  }

  // Calculate area of the rectangle
  int calculateArea() {
    return height * width;
  }
}

// Class Person to represent a person's details
class Person {
  final String fname;
  final String lname;
  final int age;
  final String address;

  Person({
    required this.fname,
    required this.lname,
    required this.age,
    required this.address,
  });

  // copyWith method to create a new instance with modified properties
  Person copyWith({
    String? fname,
    String? lname,
    int? age,
    String? address,
  }) {
    return Person(
      fname: fname ?? this.fname,
      lname: lname ?? this.lname,
      age: age ?? this.age,
      address: address ?? this.address,
    );
  }

  // ToString method to display Person details
  @override
  String toString() {
    return 'Person(fname: $fname, lname: $lname, age: $age, address: $address)';
  }
}

void main() {
  // Working with Rectangle
  Rectangle r = Rectangle(height: 2, width: 4);
  print("Original Rectangle Area: ${r.calculateArea()}");

  Rectangle r1 = r.copyWith(width: 6);
  print("Modified Rectangle Area: ${r1.calculateArea()}");

  // Working with Person
  Person p = Person(fname: "Purnima", lname: "Rana", age: 20, address: "Kathmandu");
  print("Original Person: $p");

  Person p1 = p.copyWith(age: 21, address: "Lalitpur");
  print("Modified Person: $p1");
}
