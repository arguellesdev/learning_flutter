void main(){
  const list = [1 ,2, 3, 4];
  const list2 = [1.0 ,2.3, 3.5];
  list.forEach(print);
  final doubles = transform<int, int>(list, (x) => x * 2);
  print(doubles);
  final square = transform<double, int>(list2, (x) => x.round());
  print(square);
  final even = list.where((value) => value % 2 == 0).toList();
  print(even);
  final val = list.firstWhere((x) => x == 4, orElse: () => -1 );
  print(val);
  final result = firstWhere(list, (x) => x == 3, orElse: () => -1);
  print(result);
}

List<R> transform<T, R >(List<T> items, R Function(T) f){
  var result = <R> [];
  for (var x in items) {
    result.add(f(x));
  }
  return result;
}

T firstWhere<T>(List<T> items, bool Function(T) f,
    {required T Function() orElse}) {
  for (var item in items) {
    if (f(item)){
      return item;
    }
  }
  return orElse();
}
