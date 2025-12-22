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
void main() {
  Car car = Car(name: "M5", number: "LEO 1742");//simple constructor
  car.displayInfo();
  Bike bike = Bike("Dhoom", "Leo 1741", "40 HP");
 print(bike.name);
 print(bike.number);
 print(bike.power);




}