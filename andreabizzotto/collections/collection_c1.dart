void main(){
    var europeCountries = {"Italy", "UK", "Germany", "Russia"};
    var americaCountries={"USA", "Brazil", "Mexico"};
    var asianCountries={"India", "Russia", "China"};
    print(americaCountries);
    americaCountries.add("Colombia");
    print (americaCountries);
    print (europeCountries.union(asianCountries));
    print (europeCountries.intersection(asianCountries));
    print(europeCountries.intersection(americaCountries));
    print (europeCountries.difference(asianCountries));
    print(europeCountries.difference(americaCountries));
}