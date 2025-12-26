import 'dart:io';

abstract class Engine {
  void power(String power);
}

class Car extends Engine {
  @override
  void power(String power) {
    print("Car engine power is $power");
  }

}

void main() {
  Car car = Car();
  print("Enter your car hp: ");
  String? Power = stdin.readLineSync();
  car.power(Power!);
}