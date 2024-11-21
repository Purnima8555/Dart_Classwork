abstract class Shape {
  void area();
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  void area() {
    print("Area of the circle: ${3.14 * radius * radius}");
  }
}

class Rectangle extends Shape {
  double length, width;

  Rectangle(this.length, this.width);

  @override
  void area() {
    print("Area of the rectangle: ${length * width}");
  }
}

void main() {
  Shape circle = Circle(5);
  Shape rectangle = Rectangle(4, 6);

  circle.area();
  rectangle.area();
}
