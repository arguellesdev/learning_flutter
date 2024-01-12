void main() {
  final mascota = {
    'name': 'Lena',
    'type': 'dog',
    'age': 2,
    'sterilized': true,
    'breed': 'schnauzer'
  };

  var myMascotaFromMap = Mascota.fromMap(mascota); 

  // Example usage:
  print(myMascotaFromMap.name);
}

class Mascota {
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

  
  static Mascota fromMap(Map map) => Mascota(
        name: map['name'],
        type: map['type'],
        age: map['age'],
        sterilized: map['sterilized'],
        breed: map['breed'],
      );
}
