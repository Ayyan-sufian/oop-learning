class Car {
  void speed() {
    print("Cars have high speeds");
  }

  void drift(){
    print("Cars can drift");
  }

  void burnOut() {
    print("Cars make burn out");
  }

}

class Bike implements Car{
  @override
  void speed() {
    print("Bike have high speeds");
  }

  @override
  void drift(){
    print("Bike can drift");
  }

  @override
  void burnOut() {
    print("Bike make burn out");
  }

}

void main() {
  Bike bike = Bike();
  bike.speed();
  bike.drift();
  bike.burnOut();

  Car car = Car();
  car.speed();
  car.drift();
  car.burnOut();
}