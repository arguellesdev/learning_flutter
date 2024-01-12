// import 'dart:svg';

///Este es una clase de objetos y mapas 

class Account {
  int accountId;
  String email;
  String password;
  int userId;

  Account({this.accountId=0, this.email= "", this.password="", this.userId=0});

 Map<String, dynamic> toMap() =>
  {"Account ID": accountId, "email": email, "Password": password, "User ID": userId};
}

class Product {
  int productId;
  String name;
  int size;
  double price;
  
  Product({this.productId=0, this.name="", this.size=0, this.price=0.0});
    factory Product.mapsToObjects  (Map, map)=> Product(
              productId: map["Product ID"],
              name: map["Name"],
              size: map["Size"],
              price: map["Price"],
            );
}