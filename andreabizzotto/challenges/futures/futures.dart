Future<String> countdown(int n) async{
    for (var i = n; i >= 0; i--) {
      await Future.delayed(Duration(seconds: 1));
      print('$i seconds remaining...');
    }
    return 'Countdown completed';
}

Future<void> main() async {
  try{
    await countdown(5);
  } catch(e) {
    print(e);
  }finally {
    print('DONE');
  }
}