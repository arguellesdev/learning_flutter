void main(){
  var cities = ["London", "Paris", "Moscow"];
  print (cities);
  print (cities.length);
  print (cities.first);
  print (cities.last);
  cities.add("Tokyo");
  print (cities);
  print (cities.last);
  cities.removeAt(2);
  print(cities);
  print (cities.contains('Moscow'));
  print (cities.indexOf('Tokyo'));
}