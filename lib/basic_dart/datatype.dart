void main() {
  int n = 2;
  n = 3;
  // print(n * 4);

  double rate = 5;
  String firstName = "Devil";
  firstName = 'Ak';
  // print(firstName);

//conversation String to int
  String price = '99';
  int priceMod = int.parse(price);
  // print(priceMod);

//String to Double
  String priceD = "2.5";
  double priceDouble = double.parse(priceD);
  // print(priceDouble);

// Direct variable in print
  String message = "The new price is $rate";
  // print(message);

//Operation ${}
  String message1 = "This new pirce is increase by ${rate * 4}";
  print(message1);

//Dynamic Datatype
  dynamic value2 = "value";
  value2 = 55;
  print(value2);
}
