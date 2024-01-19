
class Animal {
  const Animal({required this.age});
  final int age;

  void sleep() => print('sleeping');
  DateTime sleepTime() {
    return DateTime.now();
  }

  void feed() => print('checkout the plate and filling it');
  void eat() => print('yummy I have already eaten');
  void play()=> print('time to play human');
}

class Dog extends Animal{
  Dog({required int age}) : super(age: age);

  void sound1() => print('Bark!');

  @override
  // void sleep() => print('Dog:sleep');
  void sleep() {
    super.sleep();
    DateTime keepSleeping=sleepTime();
    print('keep dreaming buddy. Slept at: $keepSleeping');
  }
}

class Cow extends Animal {
  Cow({required int age}) : super(age: age);

  void sound2() => print('Moo!');
}

class Cleverdog extends Dog {
  Cleverdog({required int age}) : super(age: age);
  void catchBall() => print('it\'s catching the ball');
}

void main() {
  final animal = Animal(age:12);
  animal.sleep();
  final dog = Dog(age:12);
  dog.sleep();



}