import 'dart:io';

import 'package:test/cart.dart';
import 'package:test/product.dart';

///This procedure is created to make a summary of the items on cart and pay for
/// them by checking out

const allProducts = [
  Product(id: 1, name: 'Apples', price: 1.60),
  Product(id: 2, name: 'Bananas', price: 0.70),
  Product(id: 3, name: 'courgettes', price: 1.00),
  Product(id: 4, name: 'grapes', price: 2.00),
  Product(id: 5, name: 'mushrooms', price: 0.80),
  Product(id: 6, name: 'potatoes', price: 1.50),
];

void main() {
  final cart = Cart();
  while (true) {
    stdout.write(
      'What do you want to do? (v)iew items, (a)dd items, (c)heckout: ',
    );
    final line = stdin.readLineSync();
    if (line == 'a') {
      final product = chooseProduct();
      if (product != null) {
        cart.addProduct(product);
        print(cart);
      }
    } else if (line == 'v') {
      print(cart);
    } else if (line == 'c') {
      if (checkout(cart)){
        break;
      }
    } else {
      print('Sorry , answer again');
      return;
    }
  }
}

Product? chooseProduct() {
  final productList =
      allProducts.map((product) => product.displayName).join('\n');
  stdout.write('Available products: \n$productList \n Your choice:');
  final line = stdin.readLineSync();
  for (var product in allProducts) {
    if (product.initial.toLowerCase() == line) {
      return product;
    }
  }
  print('not found');
  return null;
}

bool checkout(Cart cart){
  if (cart.isEmpty){
    print('Cart is empty');
    return false;
  }
  final total = cart.total();
  print('Total: \$$total');
  stdout.write('Payment in cash only, please add the ammount: ');
  final line= stdin.readLineSync();
  if (line == null || line.toString().isEmpty){
    return false;
  }
  final paid = double.tryParse(line);
  if (paid == null) {
  return false;
  }
  if (paid >= total){
    final change = paid - total;
    print ('Change \$${change.toStringAsFixed(2)},\nHave a nice day');
    return true;
  } else {
    print('Not enough cash.');
    return false;
  }
}