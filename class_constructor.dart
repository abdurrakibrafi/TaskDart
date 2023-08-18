class Person {
  String name;
  int age;
  String address;

  //constructor for this person class
  Person(this.name, this.age, this.address);
 //in class, function called method
  void sayHello() {
    print('Hello,my name is $name.');
  }

  int getAgeInMonths() {
    return age;
  }
}

void main() {
  String name = "Abdur Rakib Rafi";
  int age = 23;
  String address = "Uttara Sector-9, Dhaka";

  //make a person object for access class properties
  Person person = Person(name, age, address);
  person.sayHello();
  int ageInMonths = person.getAgeInMonths();
  print("Age in months: $ageInMonths");
}
