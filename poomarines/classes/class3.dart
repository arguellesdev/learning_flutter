void main (){
  Student anya=Student();
  anya.setName="Anya";
  print (anya);
}

class Student{
String _name= "";
int _age= 0;
String _email= "";
List<double> _notes = const [];

get getName => _name;
set setName(String name)=> _name= name;

get getAge => _age;
set setAge(int age)=> _age= age;

get getEmail=> _email;
set setEmail(String email)=> _email= email;

get getNotes => _notes;
set setNotes(List<double> notes)=> _notes= notes;

_getNote(){
  return this._notes.reduce((value, element)=> value + element)/this._notes.length;
}

void calculateNotes(){
  if (_notes.isEmpty){
    print("Notes are unavailable, check the student and try again");
    return;
  }
 print("${this._name}'s notes is${_getNote()}");
}

}