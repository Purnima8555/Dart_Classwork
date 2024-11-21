// Base class
class Animal {
  void eat() {
    print("This animal is eating.");
  }
}

// Derived class
class Dog extends Animal {
  void bark() {
    print("The dog is barking.");
  }
}

void main() {
  Dog dog = Dog();
  dog.eat();
  dog.bark();
}
