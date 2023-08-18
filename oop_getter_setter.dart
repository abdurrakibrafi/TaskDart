
class BankAccount {
  //private using underscore
  int _balance = 0;

  int get balance => this._balance;//here using getter for get/read the value

  void set deposit(int amount) { //using set/write the value
    _balance = _balance + amount;
  }
//when we use set or get in our method then no need to write (),just assign the value using =
  void set withdraw(int amount) {
    if (this._balance >= amount) {
      _balance = _balance - amount;
      print("After withdraw = ${balance}");
    } else {
      print('Not Sufficient Balance');
    }
  }
}

void main() {
  //create a object/instance
  BankAccount object = BankAccount();
  int deposit = object.deposit = 1000;
  print("Your total balance in account = $deposit");

  object.withdraw = 10000;
}
