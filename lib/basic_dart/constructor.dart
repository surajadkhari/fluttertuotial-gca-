void main() {
  // A obA = A(geetingA: "HEllo");
  // obA.displayA();
  Rectangle rec = Rectangle(length: 10, width: 20);
  rec.display();
}

class Rectangle {
  double length, width;
  Rectangle({this.length, this.width});

  // double length, width;
  // Rectangle({double length, double width}) {
  //   this.length = length;
  //   this.width = width; //this . class ko = constrctor ko
  // }
  display() {
    print(length * width);
  }
}

// void main() {
//   A obA = A(geetingA: "HEllo");
//   obA.displayA();
// }

// class A {
//   B obB;
//   A({String geetingA}) {
//     // print(geeting);

//     // B obB = B(geetingA);
//     // obB.display();

//     obB = B(geetingA);

//     ///B ko Object A ma define gareko and B ko properties lai A ko method ma call garekp
//   }
//   displayA() {
//     obB.displayB();
//   }
// }

// class B {
//   String geetingB;
//   B(String argument) {
//     geetingB = argument;
//   }
//   void displayB() {
//     print(geetingB);
//   }
// }

// void main() {
//   A obA = A("HEllo");
// }

// class A {
//   A(String geetingA) {
//     // print(geeting);

//     B obB = B(geetingA);
//     obB.display();
//   }
// }

// class B {
//   String geetingB;
//   B(String argument) {
//     geetingB = argument;
//   }
//   void display() {
//     print(geetingB);
//   }
// }
