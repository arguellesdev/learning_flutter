void main() {
  List<String>  colores = ["pink","purple", "green", "white", "light blue", "red"];
  for (String color in colores){
    print(color);
  }
  print ("---------");
  colores.add("light pink");
  colores.forEach((String color)=>print(color));
}