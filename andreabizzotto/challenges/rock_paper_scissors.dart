import 'dart:io';
void main(){
  while (true){
    stdout.write('Rock, paper, scissors? (r/p/s)');
    final input = stdin.readLineSync();
      if (input == 'r' || input == 'p' || input == 's'){
        print ('Selected: ${input.toString().toUpperCase()}');
        break;
      }else if (input == 'q'){
        print ('thanks for playing, sorry that you go'.toUpperCase());
        break;
      }
      else{
        print('Invalid input');
      }
  }
}