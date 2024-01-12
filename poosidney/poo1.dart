void main() {
  // final mascota = {
  //   'name': 'Lena',
  //   'type': 'dog',
  //   'age': 2,
  //   'sterilized': true,
  //   'breed': 'schnauzer',
  // };

  // Conjunto
  // Set<String> mascotas = {'Lena', 'Dhalia', 'Yoyo', 'Michi'};
  // print(mascota.keys);
  // print(mascota.entries);

  var mascota1 = Mascota(name: 'Lena', 
  age:2, 
  breed: 'schnauzer');

  print(mascota1.name);
  print(mascota1.animalBreed);
} 
abstract class Animal{
  Animal(this.breed);
  final String? breed;
  String? get animalBreed => breed;
}
class Mascota implements Animal {
  Mascota({
    required this.name,
    this.type,
    this.age,
    this.sterilized,
    this.breed,
  });

  final String name;
  final String? type;
  final int? age;
  final bool? sterilized;
  final String? breed;

  @override
  String? get animalBreed => breed;
}