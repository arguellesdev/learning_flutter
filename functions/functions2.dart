import 'dart:io';

void main() {
  stdout.write('What is your name: ');
  String name = stdin.readLineSync()!;
  stdout.write('Add Subscription (Old, New or Top): ');
  String type = stdin.readLineSync()!.toUpperCase();
  welcome(name, type);
}

void welcome(String name, String type) {
  int discount=0;
  var comment='';
  switch(type){
    case 'NEW':
      discount=50;
      comment= 'It is awesome to have you here';
      break;
    case 'OLD':
      comment='We missed you';
      discount=60;
      break;
    case 'TOP':
      comment='Hey it is nice to see you again, keep learning';
      discount=70;
      break;
    default:
      print('$name and $type'.toUpperCase());
    }
  userDiscount(discount);
    print('welcome $name, $comment, you get $discount% discount with us'.toUpperCase());
  }

void userDiscount(int discount) {
  var price = 1500;
  var discApplied = ((price * discount) / 100).toDouble();
  var total = (price - discApplied).toDouble();
  print('Total after discount: $total');
}
