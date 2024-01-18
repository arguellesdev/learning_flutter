class Temperature {
  Temperature.celsius(this.celsius); // Constructor para inicializar en Celsius
  Temperature.farenheit(double farenheit)  : celsius = (farenheit - 32) / 1.8;
  double celsius;

  double get farenheit => celsius * 1.8 + 32; // Método getter para obtener la temperatura en Fahrenheit
    set farenheit(double farenheit)
    => celsius = (farenheit - 32) / 1.8; // Método setter para establecer la temperatura en Fahrenheit

/*La anotación @override en Dart es opcional pero es una buena práctica usarla
para indicar que el método que sigue está destinado a sobrescribir un método de
la clase padre. Su uso es puramente informativo y no afecta el comportamiento
del código, pero ayuda a prevenir errores sutiles.

Cuando una clase hereda de otra (o implementa una interfaz en el caso de Dart),
puede necesitar proporcionar una implementación específica para ciertos métodos
de la clase base. La anotación @override se utiliza para asegurarse de que el
método en la subclase realmente está sobrescribiendo un método de la clase padre
 o implementando un método de la interfaz.

En el contexto del método toString que sobrescribe en la clase Temperature,
el uso de @override es útil para alertar al compilador de que intentas
reemplazar un método de la clase base (Object en este caso) y te da un error si
 eso no es cierto. Si olvidas el @override y por alguna razón el método no está
  sobrescribiendo un método existente, Dart no generará un error, pero usar
  @override es una práctica sólida para mejorar la claridad y prevenir posibles
  problemas en el futuro. Es por ello que la usaremos a continuacion*/

  @override
  String toString() {
    return 'Temperature: $celsius Celsius';
  }
}

void main() {
  final temp = Temperature.celsius(
      30); // Crear una instancia de Temperature con 30 grados Celsius
  final temp1 = Temperature.farenheit(
      90); // Crear una instancia de Temperature con 90 grados Fahrenheit
  print(temp.celsius); // Imprimir el valor en Celsius de la primera instancia
  print(temp); //Imprime la representación predeterminada del objeto
  print(temp1.farenheit); // Imprimir el valor en Fahrenheit de la segunda instancia
  print(temp1); //Imprime la representación predeterminada del objeto
  print(temp1.celsius); // Imprimir el valor en Celsius de la segunda instancia
}
