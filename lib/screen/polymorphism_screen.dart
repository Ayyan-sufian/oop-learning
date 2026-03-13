abstract class Animal {
  void speak();
}

class Dog extends Animal {
  @override
  void speak() => print('Woof!');
}

class Cat extends Animal {
  @override
  void speak() => print('Meow!');
}

void main() {
  List<Animal> animals = [Dog(), Cat()];

  for (Animal animal in animals) {
    animal.speak();
  }
}