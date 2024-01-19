
class Stack<T> {
  final List<T> _items = [];

  void push(T item) => _items.add(item);

  T pop() => _items.removeLast();

  @override
  String toString() {

    return _items.toString();
  }
}

void main(){
  final number = Stack<int>();
  number.push(1);
  number.push(12);
  number.push(34);
  number.push(0.3.toInt());
  print(number.pop());
  print(number.pop());
  print(number);

  final name=Stack<String>();
  name.push('Anya');
  name.push('Andrea');
  name.push('Argel');
  name.push('Simon');
  name.push('Anna');
  print(name.pop());
  print(name.pop());
  print(name);
}