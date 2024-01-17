void main() {
  final bankAccount = BankAccount(accountHolder: 'Anya', balance: 1000067);
  print('${bankAccount.accountHolder} have ${bankAccount.balance}');
}

class BankAccount {
  BankAccount({
    required String accountHolder,
    double balance = 0,
  })  : accountHolder = accountHolder,
        balance = balance;
  String accountHolder;
  double balance;

  void deposit (double amount) {
    balance += amount;
  }
  bool withdraw (double amount) {
    if(balance> amount){
      balance -= amount;
      return true;
    } else {
      return false;
  }
  }
}
