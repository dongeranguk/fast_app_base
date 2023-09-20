import 'package:fast_app_base/screen/main/tab/home/banks_dummy.dart';
import 'package:fast_app_base/screen/main/tab/home/vo/vo_bank_account.dart';

final bankAccountShinhan1 = BankAccount(bankSinhan, 3000000, accountTypeName: "신한 주거래 우대통장(저축예금)");
final bankAccountShinhan2 = BankAccount(bankSinhan, 30000000, accountTypeName: "저축예금");
final bankAccountShinhan3 = BankAccount(bankSinhan, 300000000, accountTypeName: "저축예금");
final bankAccounToss = BankAccount(bankTtoss, 5000000);
final bankAccounKakao = BankAccount(bankKakao, 7000000, accountTypeName: "입출금통장");

main() {
  // for(final item in bankAccounts) {
  //   print(item.accountTypeName);
  // }

  final shinhanBank = bankMap["shinhan1"];
  // print(shinhanBank == bankAccountShinhan1);

  for(final entry in bankMap.entries) {
    print(entry.key + " : " + (entry.value.accountTypeName ?? entry.value.bank.name));
  }
}

//List
final List<BankAccount> bankAccounts = [
  bankAccountShinhan1,
  bankAccountShinhan2,
  bankAccountShinhan3,
  bankAccounToss,
  bankAccounKakao
];

//Map
final bankMap = {
  "shinhan1": bankAccountShinhan1,
  "shinhan2": bankAccountShinhan2
};