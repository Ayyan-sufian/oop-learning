///simple constructor
class Car {
  String? name;
  String number;
  Car({this.name, required this.number});
  void displayInfo() {
    print(name);
    print(number);
  }
}

///Super constructor
class Bike extends Engine{
  String? name;
  String? number;
  Bike(this.name, this.number, String power) : super(power);
  void displayInfo() {
    print(name);
    print(number);

  }
}

class Engine{
  String? power;
 Engine(this.power);

}

///Factory constructor

class Bus {
  final String model;
  static final Map<String, Bus> _cache = {};


  Bus._internal(this.model);


  factory Bus(String model) {
    if (_cache.containsKey(model)) {
      print('Returning existing instance of $model from cache.');
      return _cache[model]!;
    } else {
      print('Creating a new instance of $model and adding to cache.');
      final newBus = Bus._internal(model);
      _cache[model] = newBus;
      return newBus;
    }
  }

  void drive() {
    print('$model is driving.');
  }
}



void main() {
  Car car = Car(name: "M5", number: "LEO 1742");//simple constructor
  car.displayInfo();


  Bike bike = Bike("Dhoom", "Leo 1741", "40 HP"); //super constructor
 print(bike.name);
 print(bike.number);
 print(bike.power);


  var bus1 = Bus('Small bus'); // factory constructor
  bus1.drive();

  var bus2 = Bus('Small bus');
  bus2.drive();


  print(bus1 == bus2);
  print(identical(bus1, bus2));

  var bus3 = Bus('Double Decker');
  print(bus1 == bus3);

}