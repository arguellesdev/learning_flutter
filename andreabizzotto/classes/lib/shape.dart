import 'dart:math';
///We can use abstract classes to define an interface that can be implemented by
/// subclasses. Also decouples code that uses an interface from its implementation
/// printArea, for example, does not need to know that Square or Circle exists,
/// only needs a Shape argument with an area property.

abstract class Shape {
  double get area;
}

class Square extends Shape {
  Square(this.side);
  final double side;

  @override
  double get area => side * side;

  @override
  String toString() {
    return 'Square with side $side, has an Area of $area';
  }
}

class Circle extends Shape {
  Circle(this.radius);

  final double radius;

  @override
  double get area => pi * radius * radius;

  @override
  String toString() {
    return 'Circle with radius $radius, has an Area of $area';
  }
}

  void printArea(Shape shape) {
  // Dependency inversion Principle: code with abstraction,
    // to be independent from specific implementations
  print(shape.area);
}

void main(){
  //final = shape = Shape();
  final shapes = [Square(3), Circle(4)];
  shapes.forEach(printArea);
  final square = Square(10);
  final circle = Circle(10);
  print(square);
  print(circle);

}