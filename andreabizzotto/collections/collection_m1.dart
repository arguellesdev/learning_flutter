import 'dart:io';

void main(){
  var person = <String, dynamic>{'name': 'Anya', 'age':37, 'height': 1.69};
  var name = person['name'] as String;
  print (name);

  stdout.write('What is your age? ');
  person['age'] = int.parse(stdin.readLineSync()!);
  print(person);
}