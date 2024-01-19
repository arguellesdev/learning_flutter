
/*Inheritance explained*/
class Animal {
  void sleep() => print('sleep');
  void feed() => print('checkout the plate and filling it');
  void eat() => print('yummy I have already eaten');
  void play()=> print('time to play human');
}

class Dog extends Animal{
  void sound1() => print('bark');

}

class Cow extends Animal {
  void sound2() => print('moo');
}

class Cleverdog extends Dog {
  void catchBall() => print('it\'s catching the ball');
}

void main() {
  final animal = Animal();
  animal.sleep();
  final dog = Dog();
  dog.sleep();
  dog.feed();
  dog.eat();
  dog.sound1();
  final cow = Cow();
  cow.sleep();
  cow.feed();
  cow.eat();
  cow.sound2();
  final cleverdog= Cleverdog();
  cleverdog.sound1();
  cleverdog.sleep();
  cleverdog.feed();
  cleverdog.eat();

}