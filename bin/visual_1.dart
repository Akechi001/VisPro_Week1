/*
    WARNING!!!
    Program masih mempunyai banyak bug yang dimana jika tidak mengisi dengan tepat
    dapat menyebabkan error
 */



import 'package:visual_1/visual_1.dart' as visual_1;
import 'dart:io';
import 'MoneyValue.dart';

void menu(){ //print menu
  print('=======Application=======');
  print('1. Tambah pengeluaran harian');
  print('2. Riwayat pengeluaran');
  print('3. Total pengeluaran (Per bulan)');
  print('4. Exit');
}

void main(List<String> arguments) {
  final List<MoneyValue> moneyValue =[] ;//make list for saving the items
  while(true){//loop the code
  menu();//call menu method
  stdout.write("pilih nomor : ");
  String? nomor = stdin.readLineSync();
  switch(nomor) {
    case '1':
      addExpense(moneyValue, MoneyValue.addExpense());//call method addExpense
      break;
    case '2':
      historyExpense(moneyValue);//call method historyExpense
      break;
    case '3':
      stdout.write("Masukkan bulan (YYYY-MM): ");
      var date = stdin.readLineSync();
      monthExpense(moneyValue,date!);//call method monthExpense
      break;
    case '4':
      print('Thank you for Using our Program');
      return;//Closing the program
  }
  }
}

addExpense(List<MoneyValue> moneyvalue, MoneyValue moneyValue){//call method from another class
  moneyvalue.add(moneyValue);//adds the element in the list


}

historyExpense(List<MoneyValue> moneyvalue){
  print("history Expense : ");
  for(var value in moneyvalue){//Displays all contents from the list
    print("=====================");
    print("Jumlah Uang  : ${value.amount}");
    print("tanggal  : ${value.date}");
    print("Kategori  : ${value.category}");
    print("Keterangan  : ${value.note}");
    print("=====================");
  }
}

monthExpense(List<MoneyValue> moneyValue, String date){//displays the contents of the list according to month and year
  print("\nRiwayat Pengeluaran Bulan $date:");
  var totalExpense = 0.0;

  for (var expense in moneyValue) {
    if(expense.date.startsWith(date)) {
      print("=====================");
      // Check if the 'date' property of the 'expense' object starts with the specified 'date'.
      print(expense);
      print("=====================");
      totalExpense += expense.amount;//Add the expense amount to the totalExpense.
    }else{

    }

  }
  if (totalExpense > 0) {//Check if it have the total expense
    print("Total Pengeluaran Bulan $date: $totalExpense");
  } else {
    print("Tidak ada pengeluaran pada bulan tersebut.");
  }
}