// import 'dart:io';
//
// void main(){
//   const pizzaPrices = {
//     'mexicana': 8,
//     'sonorense': 7,
//     'hawaiana': 5
//     };
//   const menu= ['mexicana', 'sonorense', 'hawaiana'];
//   var check =stdout.write('What do you want to order? ');
//   var personOrder= stdin.readLineSync();
//   var total = 0.0;
//   for (var item in menu){
//     final price = pizzaPrices[item];
//     if (menu.contains(personOrder) && (price != null)){
//       total += price;
//     break;
//     }else{
//       print('We don\'t have that pizza in our menu, check your order again');
//     }
//   }
//   print ('Check out total= ${total.toStringAsFixed(2)}');
// }
