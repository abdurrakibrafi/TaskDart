abstract class Account {
  int accountNumber;
  double balance;

  Account(this.accountNumber, this.balance);

  void deposit(double amount) {
    balance = balance + amount;
    print('|You Deposited in account: \$${amount.toStringAsFixed(1)}');
  }

  void withdraw(double amount);
}

class SavingsAccount extends Account {
  double interestRate;

  SavingsAccount(
      {required int accountNumber,
      required double balance,
      required this.interestRate})
      : super(accountNumber, balance);

  @override
  void withdraw(double amount) {
    if (balance >= amount) {
      balance = balance + amount;
      balance += balance * interestRate;
      print('|Withdraw  ammount: \$${amount.toStringAsFixed(1)}');
    } else {
      print(
          '|Sorry,Your Withdraw amount = \$${amount.toStringAsFixed(1)} is Insufficient funds!\n|Your Availabe Balance is= \$$balance ');
      print(
          '------------------------------------------------------------------------------------------------');
    }
  }
}

class CurrentAccount extends Account {
  double overdraftLimit;

  CurrentAccount(
      {required accountNumber,
      required double balance,
      required this.overdraftLimit})
      : super(accountNumber, balance);

  @override
  void withdraw(double amount) {
    if (balance + overdraftLimit >= amount) {
      balance -= amount;
      print('|Withdrawn: \$${amount.toStringAsFixed(1)}');
    } else {
      print('|Your withdraw limit exceeds the overdraft,Insufficient funds!');
      print(
          '------------------------------------------------------------------------------------------------');
    }
  }
}

void main() {
  var savingsAccount = SavingsAccount(
    accountNumber: 5346536374856,
    balance: 1000.0,
    interestRate: 0.05,
  );
  print(
      '--------------------------------Savings Account----------------------------------------------------');
  savingsAccount.deposit(1000.0);
  savingsAccount.withdraw(5500.0);

  var currentAccount = CurrentAccount(
      accountNumber: 54324565465461, balance: 500.0, overdraftLimit: 500.0);
  print(
      '\n------------------------------Current Account---------------------------------------------------');
  currentAccount.deposit(300);
  currentAccount.withdraw(1500);
}
