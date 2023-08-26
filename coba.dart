class Person {
  Person({this.name, this.age});

  String? name;
  int? age;
}

void main(List<String> args) {
  Person person = Person(name: "kontolodon", age: 12);
  if (person.age != null) {
    print("Nama saya ${person.name} umur saya ${person.age}");
  }
}
