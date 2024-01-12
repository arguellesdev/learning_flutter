import 'dart:io';
import 'dart:math';

enum Move {rock, paper, scissors}
void main(){
  while (true){
    final rng = Random();
    stdout.write('Rock, paper, scissors? (r/p/s)');
    final input = stdin.readLineSync();
      if (input == 'r' || input == 'p' || input == 's'){
        var playerMove;
        if (input == 'r'){
          playerMove= Move.rock;
        }else if (input == 'p'){
          playerMove = Move.paper;
        }else{
          playerMove = Move.scissors;
        }
        final random = rng.nextInt(3);
        final aiMove= Move.values[random];
        if (playerMove == aiMove){
          print('It is a draw');
        }else if (playerMove == Move.rock && aiMove == Move.scissors ||
        playerMove == Move.scissors && aiMove == Move.paper ||
        playerMove == Move.paper && aiMove == Move.rock){
          print("You win");
          print ('AI: $aiMove, You: $playerMove');
        } else{
          print('You Loose');
          print ('AI: $aiMove, You: $playerMove');
        }
      print ('Selected: ${input.toString().toUpperCase()}');
      }else if (input == 'q'){
        print('Thank you for playing, see you next time');
      break;
      }else{
        print('Invalid input, try again mate');
  }
}
}