
///encapsulation

class Bmw {
  String? _model;
  String? _type;

  String? getModel(){
    return _model;
  }

  void setModel(String model){
    this._model = model;
  }

  String? getType(){
    return _type;
  }

  void setType(String type){
    this._type = type;
  }
}

void main() {
  Bmw bmw = new Bmw();
  // setting values to the object using setter
  bmw.setModel("M5 cs");
  bmw.setType("Sports");

  // Retrieve the values of the object using getter
  print("BMW model ${bmw.getModel()}");
  print("BMW type ${bmw.getType()}");
}