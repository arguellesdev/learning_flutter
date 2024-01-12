void main() {
  //  colores = ["pink", "purple", "green", "white", "light blue", "red", "light pink"];
  // List<String> colores2 = colores.sublist(2, 4);
  // List<String> colores3 = List.from(colores)..shuffle();
  // List<String> colores4 = List.from(colores)..reversed.toList();
	// print("Colores = $colores");
  // print("Colores 2 = $colores2");
  // print("Colores 3 = $colores3");
  // print("Colores 4 = $colores4");
  
  // print(colores.where((String color) => color == "light pink"));

  var colores = ["pink", "purple", "green", "white", "light blue", "red", "light pink"];
  var colores2 = colores.sublist(2, 4);
  var colores3 = List.from(colores)..shuffle();
  var colores4 = List.from(colores)..reversed.toList();
	print("Colores = $colores");
  print("Colores 2 = $colores2");
  print("Colores 3 = $colores3");
  print("Colores 4 = $colores4");
  
  print(colores.where((String color) => color == "light pink"));

  var years=[1986, 2004, 2006, 2023, 2024];
  print(years.reduce((valor, elemento)=> valor+elemento));
  var sumyears=years.fold(2026,((valor, elemento)=>valor+elemento));
  print(sumyears);
}
