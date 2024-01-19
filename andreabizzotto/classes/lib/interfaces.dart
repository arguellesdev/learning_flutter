abstract class InterfaceA {
  void a();
}

abstract class InterfaceB {
  void b();
}

class AB implements InterfaceA, InterfaceB {
  @override
  void a() {
    // TODO: implement a
  }
    @override
    void b() {
      // TODO: implement b
    }

}

abstract class Base {
  void foo(); //abstract method because does not have an implementation
  void bar() => print('bar');
}

class Subclass extends Base{
  @override
  void foo() => print('foo');
  //foo has to have override but concrete CAN be overridden as is
  // an abstract method
}

class Subclasstwo implements Base {
  @override
  void bar() => print('bar');

  @override
  void foo() => print(foo);
//all the methods MUST be overridden!!!!
}
