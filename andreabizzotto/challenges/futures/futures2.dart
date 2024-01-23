Future<int> sumStream(Stream<int> stream) async {
  var sum = 0;
  await for (var value in stream){
    sum += value;
  }
  return sum;
}

//podemos crear el mismo output si hacemos la siguiente delcaracion
Future<int>  sumStream2(Stream<int> stream) => stream.reduce((previous, element) => previous + element);

Future<void> main() async {
  final stream = Stream<int>.fromIterable([1,2,3,4]);
  final sum = await sumStream(stream);
  print('Sum: $sum');
  final sum2 = await sumStream2(stream);
  print('Sum2: $sum2');
}