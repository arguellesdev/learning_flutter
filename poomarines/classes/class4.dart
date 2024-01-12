///Aprendiendo de curso de dart de codigo facilito
void main (){
  Student anya=Student(
    name: "Anya", 
    lastname:"Arguelles", 
    age:37, 
    email:"anyai.arguelles@gmail.com", 
    notes:[9, 9.5, 9, 9.8, 10]);
  anya.calculateNote();
  
  Student arwen=Student(
    name: "Arwen", 
    lastname:"Arguelles", 
    age:8, email:"anyai.arguelles@gmail.com", 
    notes:[9, 9.5, 9.7, 9.8, 10]);
  arwen.calculateNote();
}
class Student{
  String name;
  String lastname;
  int age;
  String email;
  List<double> notes;
  
  Student ({this.name="", this.lastname="", this.age=0, this.email="", this.notes=const[]});
    ///this is define as a constructor
  
  void calculateNote(){
    /// a method in OOP is a function, so we are gonna use a related method to the class
    if (notes.isEmpty){
      print("No notes available for ${this.name}, try again");
      return;
    }
    
    double averageNote = this.notes.reduce((value, element)=>value+element)/this.notes.length;
    print ("${this.name}'s note is $averageNote");
  }
}