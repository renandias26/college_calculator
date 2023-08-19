class People{
  String? name;
  int? age;
  
  People(String this.name, int this.age);
  People.name(String this.name);
  People.age(int this.age);

  String? get getName => name;
}