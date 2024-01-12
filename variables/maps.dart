void main(){
  var data={"Name": "Anya","Apellido":"Arguelles","Edad":37};
  // para agregar un dato
  data["e-mail"]= "arguellesdev@gmail.com";
  for (var key in data.keys){
    print( "Key: $key which it's value is: ${data[key]}");
  }
  for (var value in data.values){
    print("Prueba 2 de impresion de Value: $value");
  }
  for  (var key in data.keys){
    print("Prueba 2 de impresion de key: $key");
  }
  for (var mapEntry in data.entries){
    print("Prueba 3 de impresion de Value: ${mapEntry.value}");
  }
  for (var mapEntry in data.entries){
    print("Prueba 3 de impresion de Key: ${mapEntry.key}");
  }
  data.forEach((k, v)=>print("key $k, value $v"));
}