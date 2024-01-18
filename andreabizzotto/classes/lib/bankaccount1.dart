void main() {
  final bankAccount = BankAccount(accountHolder: 'Anya', balance: 1000067);
  print('${bankAccount.accountHolder} have ${bankAccount.balance}');
}

class BankAccount {
  //verbose way to do it is the next few comment lines
  //only if you do not want a good job you will use it xDœ
  // BankAccount({
  //   required String accountHolder,
  //   double balance = 0,
  // })  : accountHolder = accountHolder,
  //       balance = balance;
  BankAccount({
    required this.accountHolder,
    this.balance = 0,
  });
  String accountHolder;
  double balance;

  void deposit(double amount) {
    balance += amount;
  }

  bool withdraw(double amount) {
    if (balance > amount) {
      balance -= amount;
      return true;
    } else {
      return false;
    }
  }
}
