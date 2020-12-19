void main() {
  const ages = [2, 21];
  List myList = List(); //design and assignm lis
  myList = [1, 2, 3];
  // print(myList);
  // print(myList[2]); //Acess by index
  myList.add(3); //Mehod (add,remove, lenght...

  print(myList.indexOf(2)); //find index

  myList.addAll(ages); // add two list
  // print(myList);

  // List<String> name = ["Surath", "Devil"];
  //Access elemet
  // print(name[1]);

  // print(name);

  // //Loop

  // for (int i = 0; i < 5; i++) {
  //   print(i);
  // }

  // int i = 10;
  // while (i > 5) {
  //   print(i);
  //   i--;
  // }

  // for (var each in ages) {
  //   print(each);
  // }

  List<int> inlist = [11, 22, 33];
  inlist.add(55);

  List<double> doubleList = [11.5, 22.5, 33.5];
  doubleList.add(44.5);

  List<String> StringList = ["a", "b", "c"];
  StringList.add("hello");
  // print(StringList);

  List nestedList = List();
  nestedList.add(StringList);
  nestedList.add(doubleList);
  print(nestedList);
}
