void main(){
  
    var europeCountries = {"Italy", "UK", "Germany", "Russia"};
    var americaCountries={"USA", "Brazil", "Mexico"};
    americaCountries.add("Colombia");
    var asianCountries={"India", "Russia", "China"};
    final countries = {europeCountries, americaCountries, asianCountries};
    for (var countrySet in countries){
      var countryInt = countrySet.intersection(europeCountries.intersection(asianCountries));
      print (countrySet);
      print("Similarity of ${countrySet}: $countryInt");
    }
}