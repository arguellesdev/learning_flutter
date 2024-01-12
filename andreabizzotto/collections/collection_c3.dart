void main(){
  const a = {1, 3};
  const b = {3, 5, 7};
  // print(a.intersection(b));
  final c = a.union(b).difference(a.intersection(b));
  print(c);
  var sum = 0;
  for (var value in c){
    sum += value;
      // This will sum all the elements on c
  }
  print (sum);
}