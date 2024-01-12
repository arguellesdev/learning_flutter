import 'dart:io';

void main() {
  stdout.write('What is your name: ');
  String name = stdin.readLineSync()!;
  stdout.write('Add Subscription (Old, New or Top): ');
  String type = stdin.readLineSync()!.toUpperCase();
  welcome(name, type);
}

void welcome(String name, String type) {
  print('BIENVENIDO $name'.toUpperCase());
  switch(type){
    case 'NEW':
      print ("We are happy to share with you a litte discount of 50% ");
      userDiscount(50);
      break;
    case 'OLD':
      print ("Hey it is nice to see you again, here is your 60% discount,  keep learning");
      userDiscount(60);
      break;
    case 'TOP':
      print ("So you are a non stop student, nice, that is why we are happy to share a 70% discount with you");
      userDiscount(70);
      break;
    default:
    print('We don\'t find you write again your $name and $type'.toUpperCase());
  }
}

void userDiscount(int discount) {
  var price = 1500;
  var discApplied = ((price * discount) / 100).toDouble();
  var total = (price - discApplied).toDouble();
  print('Total after discount: $total');
}
