void main(){
  const list = [1 ,2, 3];
  const list2 = [1.0 ,2.3, 3.5];
  list.forEach(print);
  final doubles = transform<int, int>(list, (x) => x * 2);
  print (doubles);
  final square = transform<double, int>(list2, (x) => x.round());
  print (square);
}

List<R> transform<T, R >(List<T> items, R Function(T) f){
  var result = <R> [];
  for (var x in items) {
    result.add(f(x));
  }
  return result;
}
