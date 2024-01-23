import 'item.dart';
import 'product.dart';

class Cart {
  final Map<int, Item> _items = {};

  void addProduct(Product product) {
    final item = _items[product.id];
    if (item == null) {
      _items[product.id] = Item(product: product, quantity: 1);
    } else {
      _items[product.id] = Item(
        product: product,
        quantity: item.quantity + 1,
      );
    }
  }
  bool get isEmpty => _items.isEmpty;
  /*by doing this getter we are exposing a way to check if the
  cart is really empty while keeping the items variable private
   */
  double total() => _items.values
      .map((item) => item.price)
      .reduce((value, element) => value + element);
  // to get all the item prices to get the total

  @override
  String toString() {
    if (_items.isEmpty) {
      return 'Cart is empty';
    }
    final itemizedList =
    _items.values.map((item) => item.toString()).join('\n');
    return '____________________________\n$itemizedList\ntotal: \$${total()}'
        '\n____________________________';
  }
}