void main() {
  // display("Apple", 225); //call function ar.1
  // displayAS(name: "Apple", price: 255);
  displayAsandnonAs("oragnge", price: 250);
  String result = myfuc("Hello");
  print(result);

  print(getUser());
  //
}

// // define function
//not assiocaite(Position) ar. 1
// void display(String Fruit, double price) {
//   print("Pric of $Fruit is $price per KG");
// }

//Associate argument with data (Names)
// void displayAS({String name, double price}) {
//   print("Pric of $name is $price per KG");
// }

// merged two function
//Position and NAMe

void displayAsandnonAs(String itemname, {double price}) {
  print("Pric of $itemname is $price per KG");
}

//Function with retunr type
String myfuc(String p) {
  return p;
}

//Map
Map<String, dynamic> getUser() => {"names": "Surath", "id": "100"};
