import 'dart:io';

void main() {
  const pizzaPrices = {
    'mexicana': 8,
    'sonorense': 7,
    'hawaiana': 5
  };
  const menu = ['mexicana', 'sonorense', 'hawaiana'];

  stdout.write('What do you want to order? ');
  var personOrder = stdin.readLineSync();

  var total = 0.0;
  var orderValid = false;

  for (var item in menu) {
    final price = pizzaPrices[item];
    if (item == personOrder && price != null) {
      orderValid = true;
      total += price;
      break; 
    }
  }

  if (orderValid) {
    print('Check out total= ${total.toStringAsFixed(2)}');
  } else {
    print('We don\'t have that pizza in our menu, check your order again');
  }
}
