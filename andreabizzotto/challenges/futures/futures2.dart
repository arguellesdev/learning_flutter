Future<int> sumStream(Stream<int> stream) async {
  var sum = 0;
  await for (var value in stream){
    sum += value;
  }
  return sum;
}

//podemos crear el mismo output si hacemos la siguiente delcaracion
Future<int>  sumStream2(Stream<int> stream) => stream.reduce((previous, element) => previous + element);

Stream<int> countStream(int n) async* {
  //this function will generate values from 1 to i instead declare iterable
  for (var i = 1; i<=n; i++) {
    yield i;
  }
}
Stream<int> countStream2(int n) async* {
  //this function will generate values from 1 to i instead declare iterable
  for (var i = 1; i<=n; i++) {
    await Future.delayed(Duration(seconds: 1));
    print(i);
    yield i;
  }
}

Future<void> main() async {
  final stream = Stream<int>.fromIterable([1,2,3,4]);
  final sum = await sumStream(stream);
  print('Sum: $sum');
  final sum2 = await sumStream2(stream);
  print('Sum2: $sum2');
  final sum3= await sumStream2(countStream(4));
  print('Sum3: $sum3');
  final sum4= await sumStream2(countStream2(4));
  print('Sum4: $sum4');
}