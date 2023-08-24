//parent abstact class
//we cannot create object for abstact class
abstract class Library {
  String name;
  String address;
  int ageYear;
  bool isAvailableBook;
  static String nationality =
      'Bangladesh'; //using static we can direct call with class no need to create object
  //constructor
  Library({
    required this.name,
    required this.address,
    required this.ageYear,
    this.isAvailableBook = true,
  });
//encapsulation private method
  void _internalMethod() {
    print('This is a private method within Library class.');
  }

  void isAvailableBookMethod() {
    if (isAvailableBook) {
      print('Books are available for borrowing.');
    } else {
      print('Books are not available for borrowing.');
    }
  }

  void getBook();

  void getDisplay() {
    print('-----------------------------------');
    print('Name: $name');
    print('Address: $address');
    print('Member year: $ageYear');
    print('Nationality: $nationality');
    getBook();
    isAvailableBookMethod();
    _internalMethod();
    print('-----------------------------------');
  }
}

class Student1 extends Library {
  Student1(String name, String address, int ageYear)
      : super(name: '', address: '', ageYear: 0) {
    this.ageYear = ageYear;
    this.name = name;
    this.address = address;
  }

  @override
  void getBook() {
    print('Recommended book: The Art of Believing');
  }
}

class Student2 extends Library {
  Student2(String name, String address, int ageYear)
      : super(name: '', address: '', ageYear: 0) {
    this.ageYear = ageYear;
    this.name = name;
    this.address = address;
  }

  @override
  void getBook() {
    print('Recommended book: Harry Potter');
  }
}

void main() {
  //polymorphisom
  //object / instance
  Library student1 = Student1('Rafi', 'Dhaka', 34);
  Library student2 = Student2('Ruhi', 'B.baria', 14);

  student1.getDisplay();
  student2.getDisplay();
}
