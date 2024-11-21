class Animal {
  void sound() {
    print("This animal makes a sound.");
  }
}

class Dog extends Animal {
  @override
  void sound() {
    print("The dog barks.");
  }
}

class Cat extends Animal {
  @override
  void sound() {
    print("The cat meows.");
  }
}

void main() {
  Animal animal1 = Dog();
  Animal animal2 = Cat();

  animal1.sound();
  animal2.sound();
}
