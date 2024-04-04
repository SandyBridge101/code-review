class Drinks {
  String? _name;
  int? _price;

  Drinks(String name, int price) {
    this._name = name;
    this._price = price;
  }

  void SetPrice(int price) {
    this._price = price;
  }

  void SetName(String name) {
    this._name = name;
  }

  String GetName() {
    return this._name!;
  }

  int GetPrice() {
    return this._price!;
  }
}

class VendingMachine {
  List _drinks = <Drinks>[
    Drinks('Coke', 12),
    Drinks('Malt', 25),
    Drinks('Fanta', 45)
  ];

  void GetDrink(int id) {
    print('Name: ' + this._drinks[id].GetName());
    print('Price: ' + this._drinks[id].GetPrice());
  }
}

void Main() {
  VendingMachine vendingMachine = VendingMachine();
  vendingMachine.GetDrink(2);
}
