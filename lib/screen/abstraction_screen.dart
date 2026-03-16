import 'dart:io';

abstract class Engine {
  void power(String power);

  void wheel() {
    print('4 wheels');
  }
}

class Car extends Engine {
  @override
  void power(String power) {
    print('Car engine power is $power');
  }
}

void main() {
  Car car = Car();
  print('Enter your car hp: ');
  String? power = stdin.readLineSync();
  car.power(power!);
  car.wheel();
}